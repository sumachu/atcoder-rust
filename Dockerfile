FROM rust:latest

WORKDIR /usr/src/myapp
COPY . .
RUN rustup component add rustfmt
RUN cargo install --path .

CMD ["myapp"]