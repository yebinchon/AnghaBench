; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0299.c_stv0299_set_tone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0299.c_stv0299_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0299_state* }
%struct.stv0299_state = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv0299_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0299_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv0299_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv0299_state*, %struct.stv0299_state** %9, align 8
  store %struct.stv0299_state* %10, %struct.stv0299_state** %6, align 8
  %11 = load %struct.stv0299_state*, %struct.stv0299_state** %6, align 8
  %12 = call i64 @stv0299_wait_diseqc_idle(%struct.stv0299_state* %11, i32 100)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.stv0299_state*, %struct.stv0299_state** %6, align 8
  %19 = call i32 @stv0299_readreg(%struct.stv0299_state* %18, i32 8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %32 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %17
  %22 = load %struct.stv0299_state*, %struct.stv0299_state** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 3
  %25 = call i32 @stv0299_writeregI(%struct.stv0299_state* %22, i32 8, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.stv0299_state*, %struct.stv0299_state** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, -4
  %30 = or i32 %29, 2
  %31 = call i32 @stv0299_writeregI(%struct.stv0299_state* %27, i32 8, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %26, %21, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @stv0299_wait_diseqc_idle(%struct.stv0299_state*, i32) #1

declare dso_local i32 @stv0299_readreg(%struct.stv0299_state*, i32) #1

declare dso_local i32 @stv0299_writeregI(%struct.stv0299_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
