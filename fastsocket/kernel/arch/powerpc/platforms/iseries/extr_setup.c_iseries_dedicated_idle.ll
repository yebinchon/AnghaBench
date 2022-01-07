; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iseries_dedicated_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_setup.c_iseries_dedicated_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iseries_dedicated_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iseries_dedicated_idle() #0 {
  %1 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %2 = call i32 @set_thread_flag(i32 %1)
  br label %3

3:                                                ; preds = %0, %24
  %4 = call i32 @tick_nohz_stop_sched_tick(i32 1)
  %5 = call i32 (...) @need_resched()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %21, %7
  %9 = call i32 (...) @need_resched()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = call i32 (...) @ppc64_runlatch_off()
  %14 = call i32 (...) @HMT_low()
  %15 = call i64 (...) @hvlpevent_is_pending()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 (...) @HMT_medium()
  %19 = call i32 (...) @ppc64_runlatch_on()
  %20 = call i32 (...) @process_iSeries_events()
  br label %21

21:                                               ; preds = %17, %12
  br label %8

22:                                               ; preds = %8
  %23 = call i32 (...) @HMT_medium()
  br label %24

24:                                               ; preds = %22, %3
  %25 = call i32 (...) @ppc64_runlatch_on()
  %26 = call i32 (...) @tick_nohz_restart_sched_tick()
  %27 = call i32 (...) @preempt_enable_no_resched()
  %28 = call i32 (...) @schedule()
  %29 = call i32 (...) @preempt_disable()
  br label %3
}

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @tick_nohz_stop_sched_tick(i32) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @ppc64_runlatch_off(...) #1

declare dso_local i32 @HMT_low(...) #1

declare dso_local i64 @hvlpevent_is_pending(...) #1

declare dso_local i32 @HMT_medium(...) #1

declare dso_local i32 @ppc64_runlatch_on(...) #1

declare dso_local i32 @process_iSeries_events(...) #1

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
