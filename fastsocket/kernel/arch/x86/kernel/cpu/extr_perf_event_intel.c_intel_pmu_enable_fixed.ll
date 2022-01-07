; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_pmu_enable_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_pmu_enable_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hw_perf_event = type { i32, i32, i32 }

@X86_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ARCH_PERFMON_EVENTSEL_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_perf_event*)* @intel_pmu_enable_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_enable_fixed(%struct.hw_perf_event* %0) #0 {
  %2 = alloca %struct.hw_perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hw_perf_event* %0, %struct.hw_perf_event** %2, align 8
  %7 = load %struct.hw_perf_event*, %struct.hw_perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @X86_PMC_IDX_FIXED, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %3, align 4
  store i32 8, i32* %5, align 4
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, 2
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %2, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.hw_perf_event*, %struct.hw_perf_event** %2, align 8
  %36 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ANY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %34, %31
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %45, 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 %49, 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 15, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.hw_perf_event*, %struct.hw_perf_event** %2, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rdmsrl(i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.hw_perf_event*, %struct.hw_perf_event** %2, align 8
  %67 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @wrmsrl(i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
