; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_try_alt_er.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_try_alt_er.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ERF_HAS_RSP_1 = common dso_local global i32 0, align 4
@EXTRA_REG_RSP_0 = common dso_local global i32 0, align 4
@INTEL_ARCH_EVENT_MASK = common dso_local global i32 0, align 4
@EXTRA_REG_RSP_1 = common dso_local global i32 0, align 4
@MSR_OFFCORE_RSP_1 = common dso_local global i32 0, align 4
@MSR_OFFCORE_RSP_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @intel_try_alt_er to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_try_alt_er(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %7 = load i32, i32* @ERF_HAS_RSP_1, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

11:                                               ; preds = %2
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EXTRA_REG_RSP_0, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %11
  %20 = load i32, i32* @INTEL_ARCH_EVENT_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 443
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @EXTRA_REG_RSP_1, align 4
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @MSR_OFFCORE_RSP_1, align 4
  %38 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  br label %74

42:                                               ; preds = %11
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXTRA_REG_RSP_1, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %42
  %51 = load i32, i32* @INTEL_ARCH_EVENT_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 439
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @EXTRA_REG_RSP_0, align 4
  %64 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @MSR_OFFCORE_RSP_0, align 4
  %69 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %50, %42
  br label %74

74:                                               ; preds = %73, %19
  %75 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %10
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
