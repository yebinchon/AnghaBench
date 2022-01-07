; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_process.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_process.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca void ()*, align 8
  br label %2

2:                                                ; preds = %0, %14
  store void ()* bitcast (void (...)* @pm_idle to void ()*), void ()** %1, align 8
  %3 = load void ()*, void ()** %1, align 8
  %4 = icmp ne void ()* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store void ()* bitcast (void (...)* @default_idle to void ()*), void ()** %1, align 8
  br label %6

6:                                                ; preds = %5, %2
  %7 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  br label %8

8:                                                ; preds = %12, %6
  %9 = call i32 (...) @need_resched()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load void ()*, void ()** %1, align 8
  call void %13()
  br label %8

14:                                               ; preds = %8
  %15 = call i32 (...) @tick_nohz_restart_sched_tick()
  %16 = call i32 (...) @preempt_enable_no_resched()
  %17 = call i32 (...) @schedule()
  %18 = call i32 (...) @preempt_disable()
  br label %2
}

declare dso_local void @pm_idle(...) #1

declare dso_local void @default_idle(...) #1

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

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
