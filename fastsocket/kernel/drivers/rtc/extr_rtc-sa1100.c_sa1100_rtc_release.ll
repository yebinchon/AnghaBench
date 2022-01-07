; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@sa1100_rtc_lock = common dso_local global i32 0, align 4
@RTSR = common dso_local global i64 0, align 8
@OIER_E1 = common dso_local global i32 0, align 4
@OIER = common dso_local global i32 0, align 4
@OSSR_M1 = common dso_local global i32 0, align 4
@OSSR = common dso_local global i32 0, align 4
@IRQ_OST1 = common dso_local global i32 0, align 4
@IRQ_RTCAlrm = common dso_local global i32 0, align 4
@IRQ_RTC1Hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sa1100_rtc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_rtc_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = call i32 @spin_lock_irq(i32* @sa1100_rtc_lock)
  store i64 0, i64* @RTSR, align 8
  %4 = load i32, i32* @OIER_E1, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, i32* @OIER, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* @OIER, align 4
  %8 = load i32, i32* @OSSR_M1, align 4
  store i32 %8, i32* @OSSR, align 4
  %9 = call i32 @spin_unlock_irq(i32* @sa1100_rtc_lock)
  %10 = load i32, i32* @IRQ_OST1, align 4
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.device* %11)
  %13 = load i32, i32* @IRQ_RTCAlrm, align 4
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.device* %14)
  %16 = load i32, i32* @IRQ_RTC1Hz, align 4
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.device* %17)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
