FROM eclipse-temurin:11-jdk

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install protobuf-compiler -y

WORKDIR /app
COPY . ./

RUN git submodule update --recursive --init
RUN ./gradlew test


