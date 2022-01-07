; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_snbep_uncore_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_snbep_uncore_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.perf_event = type { %struct.TYPE_4__, %struct.hw_perf_event }
%struct.TYPE_4__ = type { i32 }
%struct.hw_perf_event = type { %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i64, i64 }

@snbep_uncore_cbox = common dso_local global i32 0, align 4
@SNBEP_C0_MSR_PMON_BOX_FILTER = common dso_local global i64 0, align 8
@SNBEP_CBO_MSR_OFFSET = common dso_local global i32 0, align 4
@SNBEP_CB0_MSR_PMON_BOX_FILTER_MASK = common dso_local global i32 0, align 4
@snbep_uncore_pcu = common dso_local global i32 0, align 4
@SNBEP_PCU_MSR_PMON_BOX_FILTER = common dso_local global i64 0, align 8
@SNBEP_PCU_MSR_PMON_BOX_FILTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @snbep_uncore_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snbep_uncore_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event_extra* %11, %struct.hw_perf_event_extra** %7, align 8
  %12 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %13 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @snbep_uncore_cbox
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load i64, i64* @SNBEP_C0_MSR_PMON_BOX_FILTER, align 8
  %20 = load i32, i32* @SNBEP_CBO_MSR_OFFSET, align 4
  %21 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %22 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %19, %27
  %29 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SNBEP_CB0_MSR_PMON_BOX_FILTER_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %60

39:                                               ; preds = %2
  %40 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %41 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, @snbep_uncore_pcu
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load i64, i64* @SNBEP_PCU_MSR_PMON_BOX_FILTER, align 8
  %48 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %49 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SNBEP_PCU_MSR_PMON_BOX_FILTER_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %59

58:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %63

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %62 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
