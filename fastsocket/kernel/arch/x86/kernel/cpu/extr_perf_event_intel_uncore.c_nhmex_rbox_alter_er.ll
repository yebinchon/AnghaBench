; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_alter_er.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_rbox_alter_er.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@NHMEX_R_PMON_CTL_EV_SEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nhmex_rbox_alter_er(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event_extra* %11, %struct.hw_perf_event_extra** %6, align 8
  %12 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %36 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %28, %17
  %40 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 6
  %44 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %45 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 4
  %50 = add nsw i32 %43, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %52 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 6
  switch i32 %54, label %85 [
    i32 0, label %55
    i32 1, label %60
    i32 2, label %65
    i32 3, label %70
    i32 4, label %75
    i32 5, label %80
  ]

55:                                               ; preds = %39
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @NHMEX_R_MSR_PORTN_IPERF_CFG0(i32 %56)
  %58 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %85

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @NHMEX_R_MSR_PORTN_IPERF_CFG1(i32 %61)
  %63 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %85

65:                                               ; preds = %39
  %66 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %67 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  store i32 %69, i32* %67, align 4
  br label %85

70:                                               ; preds = %39
  %71 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %72 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  store i32 %74, i32* %72, align 4
  br label %85

75:                                               ; preds = %39
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(i32 %76)
  %78 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %79 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %85

80:                                               ; preds = %39
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(i32 %81)
  %83 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %39, %80, %75, %70, %65, %60, %55
  ret void
}

declare dso_local i32 @NHMEX_R_MSR_PORTN_IPERF_CFG0(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_IPERF_CFG1(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
