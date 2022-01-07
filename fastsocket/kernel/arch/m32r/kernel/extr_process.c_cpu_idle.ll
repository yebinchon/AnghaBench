; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_process.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_process.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca void ()*, align 8
  br label %2

2:                                                ; preds = %0, %13
  br label %3

3:                                                ; preds = %11, %2
  %4 = call i32 (...) @need_resched()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  store void ()* bitcast (void (...)* @pm_idle to void ()*), void ()** %1, align 8
  %8 = load void ()*, void ()** %1, align 8
  %9 = icmp ne void ()* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store void ()* bitcast (void (...)* @default_idle to void ()*), void ()** %1, align 8
  br label %11

11:                                               ; preds = %10, %7
  %12 = load void ()*, void ()** %1, align 8
  call void %12()
  br label %3

13:                                               ; preds = %3
  %14 = call i32 (...) @preempt_enable_no_resched()
  %15 = call i32 (...) @schedule()
  %16 = call i32 (...) @preempt_disable()
  br label %2
}

declare dso_local i32 @need_resched(...) #1

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
