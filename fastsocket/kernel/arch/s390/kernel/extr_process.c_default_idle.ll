; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_default_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_process.c_default_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIF_MCCK_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @default_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_idle() #0 {
  %1 = call i32 (...) @local_irq_disable()
  %2 = call i64 (...) @need_resched()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @local_irq_enable()
  br label %20

6:                                                ; preds = %0
  %7 = call i32 (...) @local_mcck_disable()
  %8 = load i32, i32* @TIF_MCCK_PENDING, align 4
  %9 = call i64 @test_thread_flag(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = call i32 (...) @local_mcck_enable()
  %13 = call i32 (...) @local_irq_enable()
  %14 = call i32 (...) @s390_handle_mcck()
  br label %20

15:                                               ; preds = %6
  %16 = call i32 (...) @trace_hardirqs_on()
  %17 = call i32 (...) @stop_critical_timings()
  %18 = call i32 (...) @vtime_stop_cpu()
  %19 = call i32 (...) @start_critical_timings()
  br label %20

20:                                               ; preds = %15, %11, %4
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @local_mcck_disable(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @local_mcck_enable(...) #1

declare dso_local i32 @s390_handle_mcck(...) #1

declare dso_local i32 @trace_hardirqs_on(...) #1

declare dso_local i32 @stop_critical_timings(...) #1

declare dso_local i32 @vtime_stop_cpu(...) #1

declare dso_local i32 @start_critical_timings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
