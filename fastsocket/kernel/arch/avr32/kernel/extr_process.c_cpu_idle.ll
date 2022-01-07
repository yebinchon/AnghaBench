; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  br label %1

1:                                                ; preds = %0, %9
  %2 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  br label %3

3:                                                ; preds = %7, %1
  %4 = call i32 (...) @need_resched()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 (...) @cpu_idle_sleep()
  br label %3

9:                                                ; preds = %3
  %10 = call i32 (...) @tick_nohz_restart_sched_tick()
  %11 = call i32 (...) @preempt_enable_no_resched()
  %12 = call i32 (...) @schedule()
  %13 = call i32 (...) @preempt_disable()
  br label %1
}

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @cpu_idle_sleep(...) #1

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
