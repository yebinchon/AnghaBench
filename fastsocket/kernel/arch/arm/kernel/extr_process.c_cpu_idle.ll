; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_process.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@led_idle_start = common dso_local global i32 0, align 4
@hlt_counter = common dso_local global i64 0, align 8
@led_idle_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = call i32 (...) @local_fiq_enable()
  br label %2

2:                                                ; preds = %0, %25
  %3 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  %4 = load i32, i32* @led_idle_start, align 4
  %5 = call i32 @leds_event(i32 %4)
  br label %6

6:                                                ; preds = %24, %2
  %7 = call i32 (...) @need_resched()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = call i32 (...) @local_irq_disable()
  %12 = load i64, i64* @hlt_counter, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 (...) @local_irq_enable()
  %16 = call i32 (...) @cpu_relax()
  br label %24

17:                                               ; preds = %10
  %18 = call i32 (...) @stop_critical_timings()
  %19 = call i32 (...) @pm_idle()
  %20 = call i32 (...) @start_critical_timings()
  %21 = call i32 (...) @irqs_disabled()
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = call i32 (...) @local_irq_enable()
  br label %24

24:                                               ; preds = %17, %14
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* @led_idle_end, align 4
  %27 = call i32 @leds_event(i32 %26)
  %28 = call i32 (...) @tick_nohz_restart_sched_tick()
  %29 = call i32 (...) @preempt_enable_no_resched()
  %30 = call i32 (...) @schedule()
  %31 = call i32 (...) @preempt_disable()
  br label %2
}

declare dso_local i32 @local_fiq_enable(...) #1

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @leds_event(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @pm_idle(...) #1

declare dso_local i32 @start_critical_timings(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @tick_nohz_restart_sched_tick(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @preempt_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
