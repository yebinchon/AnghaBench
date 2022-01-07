; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-vr41xx.c_vr41xx_rtc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-vr41xx.c_vr41xx_rtc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@rtc_lock = common dso_local global i32 0, align 4
@ECMPLREG = common dso_local global i32 0, align 4
@ECMPMREG = common dso_local global i32 0, align 4
@ECMPHREG = common dso_local global i32 0, align 4
@RTCL1LREG = common dso_local global i32 0, align 4
@RTCL1HREG = common dso_local global i32 0, align 4
@aie_irq = common dso_local global i32 0, align 4
@pie_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @vr41xx_rtc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr41xx_rtc_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %4 = load i32, i32* @ECMPLREG, align 4
  %5 = call i32 @rtc1_write(i32 %4, i32 0)
  %6 = load i32, i32* @ECMPMREG, align 4
  %7 = call i32 @rtc1_write(i32 %6, i32 0)
  %8 = load i32, i32* @ECMPHREG, align 4
  %9 = call i32 @rtc1_write(i32 %8, i32 0)
  %10 = load i32, i32* @RTCL1LREG, align 4
  %11 = call i32 @rtc1_write(i32 %10, i32 0)
  %12 = load i32, i32* @RTCL1HREG, align 4
  %13 = call i32 @rtc1_write(i32 %12, i32 0)
  %14 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %15 = load i32, i32* @aie_irq, align 4
  %16 = call i32 @disable_irq(i32 %15)
  %17 = load i32, i32* @pie_irq, align 4
  %18 = call i32 @disable_irq(i32 %17)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc1_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
