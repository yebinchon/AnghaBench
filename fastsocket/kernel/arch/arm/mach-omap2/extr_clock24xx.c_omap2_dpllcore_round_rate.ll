; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_dpllcore_round_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_dpllcore_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PLL_MOD = common dso_local global i32 0, align 4
@CM_CLKSEL2 = common dso_local global i32 0, align 4
@OMAP24XX_CORE_CLK_SRC_MASK = common dso_local global i64 0, align 8
@CORE_CLK_SRC_DPLL = common dso_local global i64 0, align 8
@curr_prcm_set = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @omap2_dpllcore_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap2_dpllcore_round_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @PLL_MOD, align 4
  %8 = load i32, i32* @CM_CLKSEL2, align 4
  %9 = call i64 @cm_read_mod_reg(i32 %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @OMAP24XX_CORE_CLK_SRC_MASK, align 8
  %11 = load i64, i64* %6, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CORE_CLK_SRC_DPLL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curr_prcm_set, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %26, %16
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i64 @cm_read_mod_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
