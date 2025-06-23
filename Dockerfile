FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6 && \
    pip install rembg

EXPOSE 5000

CMD ["rembg", "serve"]
