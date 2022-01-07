; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_get_max_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon.c_bcma_chipco_watchdog_get_max_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.bcma_bus* }
%struct.TYPE_6__ = type { i32 }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4706 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*)* @bcma_chipco_watchdog_get_max_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_chipco_watchdog_get_max_timer(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %6 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %4, align 8
  %11 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %1
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BCMA_CHIP_ID_BCM4706, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 32, i32* %5, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %27 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 26
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 16, i32* %5, align 4
  br label %44

34:                                               ; preds = %25
  %35 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %36 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 37
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 32, i32 24
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %34, %33
  br label %45

45:                                               ; preds = %44, %24
  br label %47

46:                                               ; preds = %1
  store i32 28, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
