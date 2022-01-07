; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_get_bus_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_get_bus_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BCMA_CC_PMU4716_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU5_MAINPLL_SSB = common dso_local global i32 0, align 4
@BCMA_CC_PMU5356_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU5357_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU4706_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"No bus clock specified for %04X device, pmu rev. %d, using default %d Hz\0A\00", align 1
@BCMA_CC_PMU_HT_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*)* @bcma_pmu_get_bus_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_pmu_get_bus_clock(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %5 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %6 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  store %struct.bcma_bus* %9, %struct.bcma_bus** %4, align 8
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %35 [
    i32 134, label %14
    i32 132, label %14
    i32 133, label %14
    i32 130, label %19
    i32 129, label %24
    i32 131, label %24
    i32 135, label %29
    i32 128, label %34
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %16 = load i32, i32* @BCMA_CC_PMU4716_MAINPLL_PLL0, align 4
  %17 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_SSB, align 4
  %18 = call i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc* %15, i32 %16, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %21 = load i32, i32* @BCMA_CC_PMU5356_MAINPLL_PLL0, align 4
  %22 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_SSB, align 4
  %23 = call i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc* %20, i32 %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1, %1
  %25 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %26 = load i32, i32* @BCMA_CC_PMU5357_MAINPLL_PLL0, align 4
  %27 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_SSB, align 4
  %28 = call i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc* %25, i32 %26, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %1
  %30 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %31 = load i32, i32* @BCMA_CC_PMU4706_MAINPLL_PLL0, align 4
  %32 = load i32, i32* @BCMA_CC_PMU5_MAINPLL_SSB, align 4
  %33 = call i32 @bcma_pmu_pll_clock_bcm4706(%struct.bcma_drv_cc* %30, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %1
  store i32 75000000, i32* %2, align 4
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %37 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %38 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %42 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BCMA_CC_PMU_HT_CLOCK, align 4
  %46 = call i32 @bcma_warn(%struct.bcma_bus* %36, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @BCMA_CC_PMU_HT_CLOCK, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %34, %29, %24, %19, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @bcma_pmu_pll_clock(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_pll_clock_bcm4706(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_warn(%struct.bcma_bus*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
