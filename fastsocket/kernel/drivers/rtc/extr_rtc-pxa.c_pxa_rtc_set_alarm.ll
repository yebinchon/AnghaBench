; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.pxa_rtc = type { i32 }

@RYAR1 = common dso_local global i32 0, align 4
@RDAR1 = common dso_local global i32 0, align 4
@RTSR = common dso_local global i32 0, align 4
@RTSR_RDALE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pxa_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pxa_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pxa_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.pxa_rtc* %8, %struct.pxa_rtc** %5, align 8
  %9 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %13 = load i32, i32* @RYAR1, align 4
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %16 = call i32 @ryxr_calc(i32* %15)
  %17 = call i32 @rtc_writel(%struct.pxa_rtc* %12, i32 %13, i32 %16)
  %18 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %19 = load i32, i32* @RDAR1, align 4
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = call i32 @rdxr_calc(i32* %21)
  %23 = call i32 @rtc_writel(%struct.pxa_rtc* %18, i32 %19, i32 %22)
  %24 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %25 = load i32, i32* @RTSR, align 4
  %26 = call i32 @rtc_readl(%struct.pxa_rtc* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @RTSR_RDALE1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @RTSR_RDALE1, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %42 = load i32, i32* @RTSR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @rtc_writel(%struct.pxa_rtc* %41, i32 %42, i32 %43)
  %45 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %46 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  ret i32 0
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc_writel(%struct.pxa_rtc*, i32, i32) #1

declare dso_local i32 @ryxr_calc(i32*) #1

declare dso_local i32 @rdxr_calc(i32*) #1

declare dso_local i32 @rtc_readl(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
