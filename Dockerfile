FROM python:3.7-alpine
LABEL athor="vel4eg"

# Если интерпретатор работает внутри контейнера, то лучше  выключать буферизацию
# ввода-вывода.
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt 

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user