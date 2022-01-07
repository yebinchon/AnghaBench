; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_default_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_process.c_default_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@can_do_pal_halt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_idle() #0 {
  %1 = call i32 (...) @local_irq_enable()
  br label %2

2:                                                ; preds = %19, %0
  %3 = call i32 (...) @need_resched()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load i64, i64* @can_do_pal_halt, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = call i32 (...) @local_irq_disable()
  %11 = call i32 (...) @need_resched()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @safe_halt()
  br label %15

15:                                               ; preds = %13, %9
  %16 = call i32 (...) @local_irq_enable()
  br label %19

17:                                               ; preds = %6
  %18 = call i32 (...) @cpu_relax()
  br label %19

19:                                               ; preds = %17, %15
  br label %2

20:                                               ; preds = %2
  ret void
}

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @safe_halt(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
