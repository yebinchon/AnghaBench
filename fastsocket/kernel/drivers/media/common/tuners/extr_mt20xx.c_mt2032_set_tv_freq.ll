; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_set_tv_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_set_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.analog_parameters = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @mt2032_set_tv_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2032_set_tv_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %8 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %9 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @V4L2_STD_525_60, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 40750000, i32* %6, align 4
  store i32 46750000, i32* %7, align 4
  store i32 45750000, i32* %5, align 4
  br label %16

15:                                               ; preds = %2
  store i32 32900000, i32* %6, align 4
  store i32 39900000, i32* %7, align 4
  store i32 38900000, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %19 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 62500
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mt2032_set_if_freq(%struct.dvb_frontend* %17, i32 %21, i32 1090000000, i32 %22, i32 %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @mt2032_set_if_freq(%struct.dvb_frontend*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
