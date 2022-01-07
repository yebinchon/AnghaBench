; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_rtc = type { i32, i32, i32 }

@RTSR_PIALE = common dso_local global i32 0, align 4
@RTSR_RDALE1 = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @pxa_rtc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_rtc_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pxa_rtc*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.pxa_rtc* @dev_get_drvdata(%struct.device* %4)
  store %struct.pxa_rtc* %5, %struct.pxa_rtc** %3, align 8
  %6 = load %struct.pxa_rtc*, %struct.pxa_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.pxa_rtc*, %struct.pxa_rtc** %3, align 8
  %10 = load i32, i32* @RTSR_PIALE, align 4
  %11 = load i32, i32* @RTSR_RDALE1, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RTSR_HZE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @rtsr_clear_bits(%struct.pxa_rtc* %9, i32 %14)
  %16 = load %struct.pxa_rtc*, %struct.pxa_rtc** %3, align 8
  %17 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %16, i32 0, i32 2
  %18 = call i32 @spin_unlock_irq(i32* %17)
  %19 = load %struct.pxa_rtc*, %struct.pxa_rtc** %3, align 8
  %20 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.device* %22)
  %24 = load %struct.pxa_rtc*, %struct.pxa_rtc** %3, align 8
  %25 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.device* %27)
  ret void
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtsr_clear_bits(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
