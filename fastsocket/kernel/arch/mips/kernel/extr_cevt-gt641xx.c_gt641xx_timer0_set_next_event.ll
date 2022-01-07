; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-gt641xx.c_gt641xx_timer0_set_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-gt641xx.c_gt641xx_timer0_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@gt641xx_timer_lock = common dso_local global i32 0, align 4
@GT_TC_CONTROL_OFS = common dso_local global i32 0, align 4
@GT_TC_CONTROL_ENTC0_MSK = common dso_local global i64 0, align 8
@GT_TC_CONTROL_SELTC0_MSK = common dso_local global i64 0, align 8
@GT_TC0_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @gt641xx_timer0_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt641xx_timer0_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = call i32 @spin_lock(i32* @gt641xx_timer_lock)
  %7 = load i32, i32* @GT_TC_CONTROL_OFS, align 4
  %8 = call i64 @GT_READ(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @GT_TC_CONTROL_ENTC0_MSK, align 8
  %10 = load i64, i64* @GT_TC_CONTROL_SELTC0_MSK, align 8
  %11 = or i64 %9, %10
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* @GT_TC_CONTROL_ENTC0_MSK, align 8
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* @GT_TC0_OFS, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @GT_WRITE(i32 %18, i64 %19)
  %21 = load i32, i32* @GT_TC_CONTROL_OFS, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @GT_WRITE(i32 %21, i64 %22)
  %24 = call i32 @spin_unlock(i32* @gt641xx_timer_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @GT_READ(i32) #1

declare dso_local i32 @GT_WRITE(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
