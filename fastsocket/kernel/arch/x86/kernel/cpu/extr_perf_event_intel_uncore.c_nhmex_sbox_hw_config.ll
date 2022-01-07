; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_sbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_sbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i64, i32 }

@NHMEX_S_PMON_MM_CFG_EN = common dso_local global i32 0, align 4
@NHMEX_S0_MSR_MM_CFG = common dso_local global i32 0, align 4
@NHMEX_S1_MSR_MM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_sbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_sbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event_extra*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.hw_perf_event_extra* %9, %struct.hw_perf_event_extra** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.hw_perf_event_extra* %12, %struct.hw_perf_event_extra** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NHMEX_S_PMON_MM_CFG_EN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %34, i32 0, i32 0
  store i64 -1, i64* %35, align 8
  %36 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %36, i32 0, i32 0
  store i64 -1, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %40 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @NHMEX_S0_MSR_MM_CFG, align 4
  %47 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @NHMEX_S1_MSR_MM_CFG, align 4
  %51 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %52 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
