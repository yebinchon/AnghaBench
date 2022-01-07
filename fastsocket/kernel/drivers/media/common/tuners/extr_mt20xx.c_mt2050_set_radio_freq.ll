; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_radio_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_radio_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }
%struct.analog_parameters = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pinnacle ntsc\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pinnacle pal\0A\00", align 1
@radio_antenna = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @mt2050_set_radio_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2050_set_radio_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca %struct.microtune_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  store %struct.microtune_priv* %9, %struct.microtune_priv** %5, align 8
  %10 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %11 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V4L2_STD_525_60, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @tuner_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 41300000, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @tuner_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 33300000, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %23 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 125
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mt2050_set_if_freq(%struct.dvb_frontend* %21, i32 %26, i32 %27)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = load i32, i32* @radio_antenna, align 4
  %31 = call i32 @mt2050_set_antenna(%struct.dvb_frontend* %29, i32 %30)
  ret i32 0
}

declare dso_local i32 @tuner_dbg(i8*) #1

declare dso_local i32 @mt2050_set_if_freq(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @mt2050_set_antenna(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
