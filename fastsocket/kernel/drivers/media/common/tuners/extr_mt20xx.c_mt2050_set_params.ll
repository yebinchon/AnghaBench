; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }
%struct.analog_parameters = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @mt2050_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2050_set_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
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
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %13 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %36 [
    i32 128, label %15
    i32 130, label %26
    i32 129, label %26
  ]

15:                                               ; preds = %2
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %18 = call i32 @mt2050_set_radio_freq(%struct.dvb_frontend* %16, %struct.analog_parameters* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %20 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 125
  %23 = sdiv i32 %22, 2
  %24 = load %struct.microtune_priv*, %struct.microtune_priv** %5, align 8
  %25 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %36

26:                                               ; preds = %2, %2
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %29 = call i32 @mt2050_set_tv_freq(%struct.dvb_frontend* %27, %struct.analog_parameters* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 62500
  %34 = load %struct.microtune_priv*, %struct.microtune_priv** %5, align 8
  %35 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %2, %26, %15
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @mt2050_set_radio_freq(%struct.dvb_frontend*, %struct.analog_parameters*) #1

declare dso_local i32 @mt2050_set_tv_freq(%struct.dvb_frontend*, %struct.analog_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
