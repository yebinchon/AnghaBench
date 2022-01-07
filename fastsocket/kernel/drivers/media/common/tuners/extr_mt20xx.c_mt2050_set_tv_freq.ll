; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_tv_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.analog_parameters = type { i32, i64, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_TUNER_DIGITAL_TV = common dso_local global i64 0, align 8
@tv_antenna = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @mt2050_set_tv_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2050_set_tv_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %6 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %7 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @V4L2_STD_525_60, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 45750000, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 38900000, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i64, i64* @V4L2_TUNER_DIGITAL_TV, align 8
  %16 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %17 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 36150000, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %24 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 62500
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mt2050_set_if_freq(%struct.dvb_frontend* %22, i32 %26, i32 %27)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = load i32, i32* @tv_antenna, align 4
  %31 = call i32 @mt2050_set_antenna(%struct.dvb_frontend* %29, i32 %30)
  ret i32 0
}

declare dso_local i32 @mt2050_set_if_freq(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @mt2050_set_antenna(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
