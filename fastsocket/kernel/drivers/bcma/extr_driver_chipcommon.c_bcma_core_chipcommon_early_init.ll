; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_early_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, i32, i8*, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BCMA_CC_CHIPSTAT = common dso_local global i32 0, align 4
@BCMA_CC_CAP = common dso_local global i32 0, align 4
@BCMA_CC_CAP_EXT = common dso_local global i32 0, align 4
@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_chipcommon_early_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %3 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %4 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %58

8:                                                ; preds = %1
  %9 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %10 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %9, i32 0, i32 5
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %13 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 11
  br i1 %18, label %19, label %25

19:                                               ; preds = %8
  %20 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %21 = load i32, i32* @BCMA_CC_CHIPSTAT, align 4
  %22 = call i8* @bcma_cc_read32(%struct.bcma_drv_cc* %20, i32 %21)
  %23 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %24 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %19, %8
  %26 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %27 = load i32, i32* @BCMA_CC_CAP, align 4
  %28 = call i8* @bcma_cc_read32(%struct.bcma_drv_cc* %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %31 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %33 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 35
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %41 = load i32, i32* @BCMA_CC_CAP_EXT, align 4
  %42 = call i8* @bcma_cc_read32(%struct.bcma_drv_cc* %40, i32 %41)
  %43 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %44 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %39, %25
  %46 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %47 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %54 = call i32 @bcma_pmu_early_init(%struct.bcma_drv_cc* %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %57 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %7
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_pmu_early_init(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
