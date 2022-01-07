; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_core.c_integrator_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_core.c_integrator_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER1_VA_BASE = common dso_local global i64 0, align 8
@TIMER_VALUE = common dso_local global i64 0, align 8
@VA_IC_BASE = common dso_local global i64 0, align 8
@IRQ_RAW_STATUS = common dso_local global i64 0, align 8
@timer_reload = common dso_local global i64 0, align 8
@IRQ_TIMERINT1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @integrator_gettimeoffset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @TIMER1_VA_BASE, align 8
  %5 = load i64, i64* @TIMER_VALUE, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl(i64 %6)
  %8 = and i32 %7, 65535
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  br label %10

10:                                               ; preds = %22, %0
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* @VA_IC_BASE, align 8
  %13 = load i64, i64* @IRQ_RAW_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @__raw_readl(i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* @TIMER1_VA_BASE, align 8
  %17 = load i64, i64* @TIMER_VALUE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = and i32 %19, 65535
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %10
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %10, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @timer_reload, align 8
  %28 = load i64, i64* %2, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @IRQ_TIMERINT1, align 4
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i64, i64* @timer_reload, align 8
  %38 = load i64, i64* %1, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %1, align 8
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i64, i64* %1, align 8
  %42 = call i64 @TICKS2USECS(i64 %41)
  ret i64 %42
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @TICKS2USECS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
