; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_4__, %struct.hw_perf_event }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@NHMEX_R_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@NHMEX_R_PMON_CTL_EV_SEL_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_rbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_rbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 2
  store %struct.hw_perf_event_extra* %15, %struct.hw_perf_event_extra** %7, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 1
  store %struct.hw_perf_event_extra* %18, %struct.hw_perf_event_extra** %8, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sge i32 %27, 24
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %101

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sdiv i32 %42, 6
  %44 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %45 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 4
  %50 = add nsw i32 %43, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = srem i32 %51, 6
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %100 [
    i32 0, label %54
    i32 1, label %59
    i32 2, label %64
    i32 3, label %64
    i32 4, label %69
    i32 5, label %69
  ]

54:                                               ; preds = %32
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @NHMEX_R_MSR_PORTN_IPERF_CFG0(i32 %55)
  %57 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %58 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %100

59:                                               ; preds = %32
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @NHMEX_R_MSR_PORTN_IPERF_CFG1(i32 %60)
  %62 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %100

64:                                               ; preds = %32, %32
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @NHMEX_R_MSR_PORTN_QLX_CFG(i32 %65)
  %67 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %68 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %100

69:                                               ; preds = %32, %32
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(i32 %73)
  %75 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %76 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %82

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(i32 %78)
  %80 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %81 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %84 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %88 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %90 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, -4294967296
  %94 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %95 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = or i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  br label %100

100:                                              ; preds = %32, %82, %64, %59, %54
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %29
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @NHMEX_R_MSR_PORTN_IPERF_CFG0(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_IPERF_CFG1(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_QLX_CFG(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
