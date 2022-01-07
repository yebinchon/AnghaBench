; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_alarm_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_alarm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.rtc_device* }
%struct.TYPE_3__ = type { i32 }
%struct.rtc_device = type { i32 }

@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@WM8350_RTC_TIME_CONTROL = common dso_local global i32 0, align 4
@WM8350_RTC_ALMSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to disable alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*, i32, i8*)* @wm8350_rtc_alarm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_rtc_alarm_handler(%struct.wm8350* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rtc_device*, align 8
  %8 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %10 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.rtc_device*, %struct.rtc_device** %11, align 8
  store %struct.rtc_device* %12, %struct.rtc_device** %7, align 8
  %13 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %14 = load i32, i32* @RTC_IRQF, align 4
  %15 = load i32, i32* @RTC_AF, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @rtc_update_irq(%struct.rtc_device* %13, i32 1, i32 %16)
  %18 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %19 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %20 = load i32, i32* @WM8350_RTC_ALMSET, align 4
  %21 = call i32 @wm8350_set_bits(%struct.wm8350* %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %26 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
