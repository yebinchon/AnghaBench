; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@can_do_pal_halt = common dso_local global i64 0, align 8
@TS_POLLING = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca void (i32)*, align 8
  %2 = alloca i32, align 4
  %3 = alloca void ()*, align 8
  store void (i32)* @ia64_mark_idle, void (i32)** %1, align 8
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %0, %52
  %6 = load i64, i64* @can_do_pal_halt, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* @TS_POLLING, align 4
  %10 = xor i32 %9, -1
  %11 = call %struct.TYPE_2__* (...) @current_thread_info()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = call i32 (...) @smp_mb()
  br label %22

16:                                               ; preds = %5
  %17 = load i32, i32* @TS_POLLING, align 4
  %18 = call %struct.TYPE_2__* (...) @current_thread_info()
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %8
  %23 = call i32 (...) @need_resched()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = call i32 (...) @rmb()
  %27 = load void (i32)*, void (i32)** %1, align 8
  %28 = icmp ne void (i32)* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load void (i32)*, void (i32)** %1, align 8
  call void %30(i32 1)
  br label %31

31:                                               ; preds = %29, %25
  store void ()* bitcast (void (...)* @pm_idle to void ()*), void ()** %3, align 8
  %32 = load void ()*, void ()** %3, align 8
  %33 = icmp ne void ()* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store void ()* bitcast (void (...)* @default_idle to void ()*), void ()** %3, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load void ()*, void ()** %3, align 8
  call void %36()
  %37 = load void (i32)*, void (i32)** %1, align 8
  %38 = icmp ne void (i32)* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load void (i32)*, void (i32)** %1, align 8
  call void %40(i32 0)
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %22
  %43 = call i32 (...) @preempt_enable_no_resched()
  %44 = call i32 (...) @schedule()
  %45 = call i32 (...) @preempt_disable()
  %46 = call i32 (...) @check_pgt_cache()
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @cpu_is_offline(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (...) @play_dead()
  br label %52

52:                                               ; preds = %50, %42
  br label %5
}

declare dso_local void @ia64_mark_idle(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local void @pm_idle(...) #1

declare dso_local void @default_idle(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @check_pgt_cache(...) #1

declare dso_local i64 @cpu_is_offline(i32) #1

declare dso_local i32 @play_dead(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
