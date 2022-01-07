; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon.c_bcma_core_chipcommon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BCMA_CC_GPIOPULLUP = common dso_local global i32 0, align 4
@BCMA_CC_GPIOPULLDOWN = common dso_local global i32 0, align 4
@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4
@BCMA_CC_CAP_PCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Power control not implemented!\0A\00", align 1
@BCMA_CC_GPIOTIMER = common dso_local global i32 0, align 4
@BCMA_CC_GPIOTIMER_ONTIME_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_GPIOTIMER_OFFTIME_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_chipcommon_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  store i32 10, i32* %3, align 4
  store i32 90, i32* %4, align 4
  %5 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %6 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %114

10:                                               ; preds = %1
  %11 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %12 = call i32 @bcma_core_chipcommon_early_init(%struct.bcma_drv_cc* %11)
  %13 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %14 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 20
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %22 = load i32, i32* @BCMA_CC_GPIOPULLUP, align 4
  %23 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %21, i32 %22, i32 0)
  %24 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %25 = load i32, i32* @BCMA_CC_GPIOPULLDOWN, align 4
  %26 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %20, %10
  %28 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %29 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %36 = call i32 @bcma_pmu_init(%struct.bcma_drv_cc* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %39 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BCMA_CC_CAP_PCTL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %46 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @bcma_err(%struct.TYPE_8__* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %53 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 16
  br i1 %58, label %59, label %107

59:                                               ; preds = %51
  %60 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %61 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %60, i32 0, i32 3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %59
  %70 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %71 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %81 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %80, i32 0, i32 3
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  %88 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %89 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %88, i32 0, i32 3
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %79, %69, %59
  %97 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %98 = load i32, i32* @BCMA_CC_GPIOTIMER, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @BCMA_CC_GPIOTIMER_ONTIME_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @BCMA_CC_GPIOTIMER_OFFTIME_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %101, %104
  %106 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %97, i32 %98, i32 %105)
  br label %107

107:                                              ; preds = %96, %51
  %108 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %109 = call i32 @bcma_chipco_watchdog_ticks_per_ms(%struct.bcma_drv_cc* %108)
  %110 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %111 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %113 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %107, %9
  ret void
}

declare dso_local i32 @bcma_core_chipcommon_early_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_pmu_init(%struct.bcma_drv_cc*) #1

declare dso_local i32 @bcma_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @bcma_chipco_watchdog_ticks_per_ms(%struct.bcma_drv_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
