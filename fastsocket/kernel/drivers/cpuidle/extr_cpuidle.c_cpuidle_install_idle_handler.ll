; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_install_idle_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_install_idle_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enabled_devices = common dso_local global i64 0, align 8
@pm_idle = common dso_local global i64 0, align 8
@cpuidle_idle_call = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuidle_install_idle_handler() #0 {
  %1 = load i64, i64* @enabled_devices, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i64, i64* @pm_idle, align 8
  %5 = load i64, i64* @cpuidle_idle_call, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = call i32 (...) @smp_wmb()
  %9 = load i64, i64* @cpuidle_idle_call, align 8
  store i64 %9, i64* @pm_idle, align 8
  br label %10

10:                                               ; preds = %7, %3, %0
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
