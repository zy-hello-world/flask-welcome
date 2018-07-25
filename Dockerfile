FROM python:2.7.14-alpine

RUN apk add --no-cache gcc musl-dev openssl-dev libffi-dev
COPY . /skeleton
WORKDIR /skeleton
RUN pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["sh", "scripts/dev.sh"]
