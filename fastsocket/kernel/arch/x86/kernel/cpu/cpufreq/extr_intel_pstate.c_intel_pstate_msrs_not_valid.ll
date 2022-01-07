; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_msrs_not_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_msrs_not_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IA32_APERF = common dso_local global i32 0, align 4
@MSR_IA32_MPERF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_pstate_msrs_not_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_msrs_not_valid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MSR_IA32_APERF, align 4
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @rdmsrl(i32 %5, i64 %6)
  %8 = load i32, i32* @MSR_IA32_MPERF, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @rdmsrl(i32 %8, i64 %9)
  %11 = call i32 (...) @intel_pstate_min_pstate()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = call i32 (...) @intel_pstate_max_pstate()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 (...) @intel_pstate_turbo_pstate()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %0
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %1, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load i32, i32* @MSR_IA32_APERF, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @rdmsrl(i32 %23, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %2, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %45

33:                                               ; preds = %22
  %34 = load i32, i32* @MSR_IA32_MPERF, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @rdmsrl(i32 %34, i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %3, align 8
  %39 = sub nsw i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %1, align 4
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %44, %41, %30, %19
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @intel_pstate_min_pstate(...) #1

declare dso_local i32 @intel_pstate_max_pstate(...) #1

declare dso_local i32 @intel_pstate_turbo_pstate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
