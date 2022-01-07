; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @smp_processor_id()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %4 = call i32 @set_thread_flag(i32 %3)
  br label %5

5:                                                ; preds = %0, %20
  %6 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  br label %7

7:                                                ; preds = %17, %5
  %8 = call i32 (...) @need_resched()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @cpu_is_offline(i32 %11)
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @sparc64_yield(i32 %18)
  br label %7

20:                                               ; preds = %15
  %21 = call i32 (...) @tick_nohz_restart_sched_tick()
  %22 = call i32 (...) @preempt_enable_no_resched()
  %23 = call i32 (...) @schedule()
  %24 = call i32 (...) @preempt_disable()
  br label %5
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i64 @cpu_is_offline(i32) #1

declare dso_local i32 @sparc64_yield(i32) #1

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
