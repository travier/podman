#!/usr/bin/env sh
source ./helpers.bash

setup
echo_bold "Create $RUNS containers"
hyperfine --warmup 10 --runs $RUNS \
	"$ENGINE_A create $IMAGE" \
	"$ENGINE_B create $IMAGE"
