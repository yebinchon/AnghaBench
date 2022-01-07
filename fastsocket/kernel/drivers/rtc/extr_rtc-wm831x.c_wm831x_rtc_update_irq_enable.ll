; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_update_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_update_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm831x_rtc = type { i32 }

@WM831X_RTC_PINT_FREQ_SHIFT = common dso_local global i32 0, align 4
@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@WM831X_RTC_PINT_FREQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wm831x_rtc_update_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_update_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.wm831x_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.wm831x_rtc* %8, %struct.wm831x_rtc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @WM831X_RTC_PINT_FREQ_SHIFT, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %6, align 4
  br label %15

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %20 = load i32, i32* @WM831X_RTC_PINT_FREQ_MASK, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @wm831x_set_bits(i32 %18, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm831x_set_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
