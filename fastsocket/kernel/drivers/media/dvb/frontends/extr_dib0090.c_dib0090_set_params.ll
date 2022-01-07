; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i64 }
%struct.dvb_frontend_parameters = type { i32 }

@CT_TUNER_START = common dso_local global i64 0, align 8
@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@CT_TUNER_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib0090_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib0090_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %8, align 8
  store %struct.dib0090_state* %9, %struct.dib0090_state** %5, align 8
  %10 = load i64, i64* @CT_TUNER_START, align 8
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %12 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = call i32 @dib0090_tune(%struct.dvb_frontend* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 10
  %22 = call i32 @msleep(i32 %21)
  br label %24

23:                                               ; preds = %13
  br label %31

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %27 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CT_TUNER_STOP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %13, label %31

31:                                               ; preds = %25, %23
  ret i32 0
}

declare dso_local i32 @dib0090_tune(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
