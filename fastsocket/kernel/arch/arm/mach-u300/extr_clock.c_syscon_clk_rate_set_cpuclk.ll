; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_syscon_clk_rate_set_cpuclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_syscon_clk_rate_set_cpuclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH = common dso_local global i32 0, align 4
@U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST = common dso_local global i32 0, align 4
@syscon_clkreg_lock = common dso_local global i32 0, align 4
@U300_SYSCON_VBASE = common dso_local global i64 0, align 8
@U300_SYSCON_CCR = common dso_local global i64 0, align 8
@U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscon_clk_rate_set_cpuclk(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  switch i64 %5, label %14 [
    i64 13000000, label %6
    i64 52000000, label %8
    i64 104000000, label %10
    i64 208000000, label %12
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_LOW_POWER, align 4
  store i32 %7, i32* %3, align 4
  br label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_INTERMEDIATE, align 4
  store i32 %9, i32* %3, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_HIGH, align 4
  store i32 %11, i32* %3, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_BEST, align 4
  store i32 %13, i32* %3, align 4
  br label %15

14:                                               ; preds = %1
  br label %34

15:                                               ; preds = %12, %10, %8, %6
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @syscon_clkreg_lock, i64 %16)
  %18 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %19 = load i64, i64* @U300_SYSCON_CCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readw(i64 %20)
  %22 = load i32, i32* @U300_SYSCON_CCR_CLKING_PERFORMANCE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %29 = load i64, i64* @U300_SYSCON_CCR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writew(i32 %27, i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @syscon_clkreg_lock, i64 %32)
  br label %34

34:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
