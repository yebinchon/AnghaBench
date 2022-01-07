; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0070_state* }
%struct.dib0070_state = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }

@CT_TUNER_START = common dso_local global i64 0, align 8
@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@CT_TUNER_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib0070_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_tune(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib0070_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib0070_state*, %struct.dib0070_state** %8, align 8
  store %struct.dib0070_state* %9, %struct.dib0070_state** %5, align 8
  %10 = load i64, i64* @CT_TUNER_START, align 8
  %11 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %12 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  br label %13

13:                                               ; preds = %26, %2
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %16 = call i32 @dib0070_tune_digital(%struct.dvb_frontend* %14, %struct.dvb_frontend_parameters* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 10
  %23 = call i32 @msleep(i32 %22)
  br label %25

24:                                               ; preds = %13
  br label %32

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CT_TUNER_STOP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %13, label %32

32:                                               ; preds = %26, %24
  ret i32 0
}

declare dso_local i32 @dib0070_tune_digital(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
