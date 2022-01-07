; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb6100_state* }
%struct.stb6100_state = type { i32, i32 }
%struct.tuner_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, %struct.tuner_state*)* @stb6100_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_set_state(%struct.dvb_frontend* %0, i32 %1, %struct.tuner_state* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner_state*, align 8
  %7 = alloca %struct.stb6100_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tuner_state* %2, %struct.tuner_state** %6, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stb6100_state*, %struct.stb6100_state** %9, align 8
  store %struct.stb6100_state* %10, %struct.stb6100_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %37 [
    i32 131, label %12
    i32 128, label %23
    i32 130, label %24
    i32 132, label %25
    i32 129, label %36
  ]

12:                                               ; preds = %3
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = load %struct.tuner_state*, %struct.tuner_state** %6, align 8
  %15 = getelementptr inbounds %struct.tuner_state, %struct.tuner_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @stb6100_set_frequency(%struct.dvb_frontend* %13, i32 %16)
  %18 = load %struct.tuner_state*, %struct.tuner_state** %6, align 8
  %19 = getelementptr inbounds %struct.tuner_state, %struct.tuner_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stb6100_state*, %struct.stb6100_state** %7, align 8
  %22 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %38

23:                                               ; preds = %3
  br label %38

24:                                               ; preds = %3
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %27 = load %struct.tuner_state*, %struct.tuner_state** %6, align 8
  %28 = getelementptr inbounds %struct.tuner_state, %struct.tuner_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @stb6100_set_bandwidth(%struct.dvb_frontend* %26, i32 %29)
  %31 = load %struct.tuner_state*, %struct.tuner_state** %6, align 8
  %32 = getelementptr inbounds %struct.tuner_state, %struct.tuner_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.stb6100_state*, %struct.stb6100_state** %7, align 8
  %35 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %38

36:                                               ; preds = %3
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %36, %25, %24, %23, %12
  ret i32 0
}

declare dso_local i32 @stb6100_set_frequency(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @stb6100_set_bandwidth(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
