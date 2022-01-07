; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_smp_twd.c_twd_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_smp_twd.c_twd_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@TWD_TIMER_CONTROL_ENABLE = common dso_local global i64 0, align 8
@TWD_TIMER_CONTROL_IT_ENABLE = common dso_local global i64 0, align 8
@TWD_TIMER_CONTROL_PERIODIC = common dso_local global i64 0, align 8
@TWD_TIMER_CONTROL_ONESHOT = common dso_local global i64 0, align 8
@twd_base = common dso_local global i64 0, align 8
@TWD_TIMER_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @twd_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twd_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %18 [
    i32 130, label %7
    i32 131, label %13
    i32 128, label %17
    i32 129, label %17
  ]

7:                                                ; preds = %2
  %8 = load i64, i64* @TWD_TIMER_CONTROL_ENABLE, align 8
  %9 = load i64, i64* @TWD_TIMER_CONTROL_IT_ENABLE, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @TWD_TIMER_CONTROL_PERIODIC, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %5, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i64, i64* @TWD_TIMER_CONTROL_IT_ENABLE, align 8
  %15 = load i64, i64* @TWD_TIMER_CONTROL_ONESHOT, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %5, align 8
  br label %19

17:                                               ; preds = %2, %2
  br label %18

18:                                               ; preds = %2, %17
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %18, %13, %7
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @twd_base, align 8
  %22 = load i64, i64* @TWD_TIMER_CONTROL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @__raw_writel(i64 %20, i64 %23)
  ret void
}

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
