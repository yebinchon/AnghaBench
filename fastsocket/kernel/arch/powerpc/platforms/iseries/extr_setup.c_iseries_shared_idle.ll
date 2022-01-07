; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iseries_shared_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iseries_shared_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iseries_shared_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iseries_shared_idle() #0 {
  br label %1

1:                                                ; preds = %0, %32
  %2 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  br label %3

3:                                                ; preds = %22, %1
  %4 = call i32 (...) @need_resched()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = call i64 (...) @hvlpevent_is_pending()
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i1 [ false, %3 ], [ %9, %6 ]
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = call i32 (...) @local_irq_disable()
  %14 = call i32 (...) @ppc64_runlatch_off()
  %15 = call i32 (...) @need_resched()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = call i64 (...) @hvlpevent_is_pending()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @yield_shared_processor()
  br label %22

22:                                               ; preds = %20, %17, %12
  %23 = call i32 (...) @HMT_medium()
  %24 = call i32 (...) @local_irq_enable()
  br label %3

25:                                               ; preds = %10
  %26 = call i32 (...) @ppc64_runlatch_on()
  %27 = call i32 (...) @tick_nohz_restart_sched_tick()
  %28 = call i64 (...) @hvlpevent_is_pending()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @process_iSeries_events()
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 (...) @preempt_enable_no_resched()
  %34 = call i32 (...) @schedule()
  %35 = call i32 (...) @preempt_disable()
  br label %1
}

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i64 @hvlpevent_is_pending(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @ppc64_runlatch_off(...) #1

declare dso_local i32 @yield_shared_processor(...) #1

declare dso_local i32 @HMT_medium(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ppc64_runlatch_on(...) #1

declare dso_local i32 @tick_nohz_restart_sched_tick(...) #1

declare dso_local i32 @process_iSeries_events(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @preempt_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
