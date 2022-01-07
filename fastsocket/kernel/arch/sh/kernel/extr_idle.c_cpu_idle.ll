; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_idle.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_idle.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca void ()*, align 8
  %2 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %3 = call i32 @set_thread_flag(i32 %2)
  br label %4

4:                                                ; preds = %0, %16
  store void ()* bitcast (void (...)* @pm_idle to void ()*), void ()** %1, align 8
  %5 = load void ()*, void ()** %1, align 8
  %6 = icmp ne void ()* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store void ()* bitcast (void (...)* @default_idle to void ()*), void ()** %1, align 8
  br label %8

8:                                                ; preds = %7, %4
  %9 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  br label %10

10:                                               ; preds = %14, %8
  %11 = call i32 (...) @need_resched()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load void ()*, void ()** %1, align 8
  call void %15()
  br label %10

16:                                               ; preds = %10
  %17 = call i32 (...) @tick_nohz_restart_sched_tick()
  %18 = call i32 (...) @preempt_enable_no_resched()
  %19 = call i32 (...) @schedule()
  %20 = call i32 (...) @preempt_disable()
  %21 = call i32 (...) @check_pgt_cache()
  br label %4
}

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local void @pm_idle(...) #1

declare dso_local void @default_idle(...) #1

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @tick_nohz_restart_sched_tick(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @check_pgt_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
