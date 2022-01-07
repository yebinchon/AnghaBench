; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_pmu_hw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_x86_pmu_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@X86_RAW_EVENT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_pmu_hw_config(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 1), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %13
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %33
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %58 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PERF_TYPE_RAW, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @X86_RAW_EVENT_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %70, %63
  %83 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %84 = call i32 @x86_setup_perfctr(%struct.perf_event* %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %29
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @x86_setup_perfctr(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
