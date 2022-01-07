; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_process.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_process.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@irq_stat = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca void ()*, align 8
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %22, %0
  br label %5

5:                                                ; preds = %14, %4
  %6 = call i32 (...) @need_resched()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = call i32 (...) @smp_rmb()
  store void ()* bitcast (void (...)* @pm_idle to void ()*), void ()** %2, align 8
  %11 = load void ()*, void ()** %2, align 8
  %12 = icmp ne void ()* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store void ()* bitcast (void (...)* @default_idle to void ()*), void ()** %2, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_stat, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  %21 = load void ()*, void ()** %2, align 8
  call void %21()
  br label %5

22:                                               ; preds = %5
  %23 = call i32 (...) @preempt_enable_no_resched()
  %24 = call i32 (...) @schedule()
  %25 = call i32 (...) @preempt_disable()
  br label %4
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local void @pm_idle(...) #1

declare dso_local void @default_idle(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @preempt_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
