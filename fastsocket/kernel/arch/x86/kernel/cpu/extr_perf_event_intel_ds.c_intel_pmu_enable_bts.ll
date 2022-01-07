; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_intel_pmu_enable_bts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_ds.c_intel_pmu_enable_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUGCTLMSR_TR = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTS = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTINT = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTS_OFF_OS = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTS_OFF_USR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_enable_bts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 (...) @get_debugctlmsr()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* @DEBUGCTLMSR_TR, align 8
  %6 = load i64, i64* %3, align 8
  %7 = or i64 %6, %5
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @DEBUGCTLMSR_BTS, align 8
  %9 = load i64, i64* %3, align 8
  %10 = or i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @DEBUGCTLMSR_BTINT, align 8
  %12 = load i64, i64* %3, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @DEBUGCTLMSR_BTS_OFF_OS, align 8
  %20 = load i64, i64* %3, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @DEBUGCTLMSR_BTS_OFF_USR, align 8
  %29 = load i64, i64* %3, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @update_debugctlmsr(i64 %32)
  ret void
}

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
