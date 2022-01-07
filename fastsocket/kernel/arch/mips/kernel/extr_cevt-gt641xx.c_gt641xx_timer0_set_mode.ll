; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-gt641xx.c_gt641xx_timer0_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cevt-gt641xx.c_gt641xx_timer0_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@gt641xx_timer_lock = common dso_local global i32 0, align 4
@GT_TC_CONTROL_OFS = common dso_local global i32 0, align 4
@GT_TC_CONTROL_ENTC0_MSK = common dso_local global i32 0, align 4
@GT_TC_CONTROL_SELTC0_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @gt641xx_timer0_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt641xx_timer0_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = call i32 @spin_lock(i32* @gt641xx_timer_lock)
  %7 = load i32, i32* @GT_TC_CONTROL_OFS, align 4
  %8 = call i32 @GT_READ(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GT_TC_CONTROL_ENTC0_MSK, align 4
  %10 = load i32, i32* @GT_TC_CONTROL_SELTC0_MSK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %26 [
    i32 128, label %16
    i32 129, label %22
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @GT_TC_CONTROL_ENTC0_MSK, align 4
  %18 = load i32, i32* @GT_TC_CONTROL_SELTC0_MSK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @GT_TC_CONTROL_ENTC0_MSK, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22, %16
  %28 = load i32, i32* @GT_TC_CONTROL_OFS, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @GT_WRITE(i32 %28, i32 %29)
  %31 = call i32 @spin_unlock(i32* @gt641xx_timer_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @GT_READ(i32) #1

declare dso_local i32 @GT_WRITE(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
