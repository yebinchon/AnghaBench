; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_pmu_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_pmu_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (%struct.perf_event*)* }
%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @intel_pmu_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_hw_config(%struct.perf_event* %0) #0 {
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
  br label %64

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 1), align 8
  %19 = icmp ne i32 (%struct.perf_event*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 1), align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i32 %21(%struct.perf_event* %22)
  br label %24

24:                                               ; preds = %20, %17, %11
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PERF_TYPE_RAW, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ANY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %64

41:                                               ; preds = %32
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %64

47:                                               ; preds = %41
  %48 = call i64 (...) @perf_paranoid_cpu()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %52 = call i32 @capable(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @EACCES, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %50, %47
  %58 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ANY, align 4
  %59 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %60 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %54, %44, %40, %31, %9
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @x86_pmu_hw_config(%struct.perf_event*) #1

declare dso_local i64 @perf_paranoid_cpu(...) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
