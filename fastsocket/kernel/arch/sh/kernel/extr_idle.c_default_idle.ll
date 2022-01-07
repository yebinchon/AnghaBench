; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_idle.c_default_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_idle.c_default_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hlt_counter = common dso_local global i32 0, align 4
@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_idle() #0 {
  %1 = load i32, i32* @hlt_counter, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %5 = call i32 @clear_thread_flag(i32 %4)
  %6 = call i32 (...) @smp_mb__after_clear_bit()
  %7 = call i32 (...) @set_bl_bit()
  %8 = call i32 (...) @stop_critical_timings()
  br label %9

9:                                                ; preds = %13, %3
  %10 = call i32 (...) @need_resched()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @cpu_sleep()
  br label %9

15:                                               ; preds = %9
  %16 = call i32 (...) @start_critical_timings()
  %17 = call i32 (...) @clear_bl_bit()
  %18 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %19 = call i32 @set_thread_flag(i32 %18)
  br label %28

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %25, %20
  %22 = call i32 (...) @need_resched()
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @cpu_relax()
  br label %21

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @set_bl_bit(...) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @cpu_sleep(...) #1

declare dso_local i32 @start_critical_timings(...) #1

declare dso_local i32 @clear_bl_bit(...) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
