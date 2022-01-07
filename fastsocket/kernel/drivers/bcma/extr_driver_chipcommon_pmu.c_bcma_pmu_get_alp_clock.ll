; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_get_alp_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_get_alp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"No ALP clock specified for %04X device, pmu rev. %d, using default %d Hz\0A\00", align 1
@BCMA_CC_PMU_ALP_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_pmu_get_alp_clock(%struct.bcma_drv_cc* %0) #0 {
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
  switch i32 %13, label %16 [
    i32 134, label %14
    i32 132, label %14
    i32 133, label %14
    i32 136, label %14
    i32 129, label %14
    i32 131, label %14
    i32 128, label %14
    i32 130, label %15
    i32 135, label %15
  ]

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  store i32 20000000, i32* %2, align 4
  br label %30

15:                                               ; preds = %1, %1
  store i32 25000000, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %23 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BCMA_CC_PMU_ALP_CLOCK, align 4
  %27 = call i32 @bcma_warn(%struct.bcma_bus* %17, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @BCMA_CC_PMU_ALP_CLOCK, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %15, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @bcma_warn(%struct.bcma_bus*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
