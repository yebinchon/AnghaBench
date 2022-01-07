; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_pll_clock_bcm4706.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_pll_clock_bcm4706.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32 }

@BCMA_CC_PMU6_4706_PROCPLL_OFF = common dso_local global i32 0, align 4
@BCMA_CC_PMU6_4706_PROC_NDIV_INT_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU6_4706_PROC_NDIV_INT_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU6_4706_PROC_P1DIV_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU6_4706_PROC_P1DIV_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU6_4706_PROC_P2DIV_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU6_4706_PROC_P2DIV_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPSTAT = common dso_local global i32 0, align 4
@BCMA_CC_CHIPST_4706_PKG_OPTION = common dso_local global i32 0, align 4
@BCMA_CC_PMU5_MAINPLL_SSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*, i32, i32)* @bcma_pmu_pll_clock_bcm4706 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_pmu_pll_clock_bcm4706(%struct.bcma_drv_cc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcma_drv_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ true, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BCMA_CC_PMU6_4706_PROCPLL_OFF, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BCMA_CC_PMU6_4706_PROC_NDIV_INT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @BCMA_CC_PMU6_4706_PROC_NDIV_INT_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BCMA_CC_PMU6_4706_PROC_P1DIV_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @BCMA_CC_PMU6_4706_PROC_P1DIV_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BCMA_CC_PMU6_4706_PROC_P2DIV_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @BCMA_CC_PMU6_4706_PROC_P2DIV_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %42 = load i32, i32* @BCMA_CC_CHIPSTAT, align 4
  %43 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BCMA_CC_CHIPST_4706_PKG_OPTION, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %17
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 6250000, %49
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %11, align 4
  br label %62

55:                                               ; preds = %17
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 12500000, %56
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_SSB, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = sdiv i32 %67, 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bcma_chipco_pll_read(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
