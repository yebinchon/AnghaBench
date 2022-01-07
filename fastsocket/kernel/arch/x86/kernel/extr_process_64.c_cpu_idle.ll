; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_64.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process_64.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TS_POLLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = load i32, i32* @TS_POLLING, align 4
  %2 = call %struct.TYPE_2__* (...) @current_thread_info()
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %1
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @boot_init_stack_canary()
  br label %7

7:                                                ; preds = %0, %27
  %8 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  br label %9

9:                                                ; preds = %20, %7
  %10 = call i32 (...) @need_resched()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = call i32 (...) @rmb()
  %15 = call i32 (...) @smp_processor_id()
  %16 = call i64 @cpu_is_offline(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @play_dead()
  br label %20

20:                                               ; preds = %18, %13
  %21 = call i32 (...) @local_irq_disable()
  %22 = call i32 (...) @enter_idle()
  %23 = call i32 (...) @stop_critical_timings()
  %24 = call i32 (...) @pm_idle()
  %25 = call i32 (...) @start_critical_timings()
  %26 = call i32 (...) @__exit_idle()
  br label %9

27:                                               ; preds = %9
  %28 = call i32 (...) @tick_nohz_restart_sched_tick()
  %29 = call i32 (...) @preempt_enable_no_resched()
  %30 = call i32 (...) @schedule()
  %31 = call i32 (...) @preempt_disable()
  br label %7
}

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @boot_init_stack_canary(...) #1

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @cpu_is_offline(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @play_dead(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @enter_idle(...) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @pm_idle(...) #1

declare dso_local i32 @start_critical_timings(...) #1

declare dso_local i32 @__exit_idle(...) #1

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
