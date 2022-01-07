; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_clock_exit_limp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_clock_exit_limp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCF_CCM_MISCCR = common dso_local global i32 0, align 4
@MCF_CCM_MISCCR_LIMP = common dso_local global i32 0, align 4
@MCF_CCM_MISCCR_PLL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_exit_limp() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MCF_CCM_MISCCR, align 4
  %3 = load i32, i32* @MCF_CCM_MISCCR_LIMP, align 4
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  store i32 %5, i32* @MCF_CCM_MISCCR, align 4
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i32, i32* @MCF_CCM_MISCCR, align 4
  %8 = load i32, i32* @MCF_CCM_MISCCR_PLL_LOCK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %6

13:                                               ; preds = %6
  %14 = call i32 (...) @get_sys_clock()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @get_sys_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
