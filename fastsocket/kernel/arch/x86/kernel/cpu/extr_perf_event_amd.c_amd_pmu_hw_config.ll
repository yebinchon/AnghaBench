; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_pmu_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_amd.c_amd_pmu_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@AMD_PERFMON_EVENTSEL_GUESTONLY = common dso_local global i32 0, align 4
@AMD_PERFMON_EVENTSEL_HOSTONLY = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@AMD64_RAW_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @amd_pmu_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_pmu_hw_config(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = call i32 @x86_pmu_hw_config(%struct.perf_event* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %81

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %25 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %61

33:                                               ; preds = %17, %11
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @AMD_PERFMON_EVENTSEL_GUESTONLY, align 4
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 8
  br label %60

46:                                               ; preds = %33
  %47 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @AMD_PERFMON_EVENTSEL_HOSTONLY, align 4
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %23
  %62 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %63 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PERF_TYPE_RAW, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %81

69:                                               ; preds = %61
  %70 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AMD64_RAW_EVENT_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %69, %68, %9
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @x86_pmu_hw_config(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
