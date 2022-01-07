; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_irq_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_irq_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cmos_rtc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_PIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @cmos_irq_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_irq_set_state(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmos_rtc*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.cmos_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.cmos_rtc* %9, %struct.cmos_rtc** %6, align 8
  %10 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %11 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @is_valid_irq(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %25 = load i32, i32* @RTC_PIE, align 4
  %26 = call i32 @cmos_irq_enable(%struct.cmos_rtc* %24, i32 %25)
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %29 = load i32, i32* @RTC_PIE, align 4
  %30 = call i32 @cmos_irq_disable(%struct.cmos_rtc* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.cmos_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @is_valid_irq(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cmos_irq_enable(%struct.cmos_rtc*, i32) #1

declare dso_local i32 @cmos_irq_disable(%struct.cmos_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
