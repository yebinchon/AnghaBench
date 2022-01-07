; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_therm_throt.c_intel_thermal_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_therm_throt.c_intel_thermal_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IA32_THERM_STATUS = common dso_local global i32 0, align 4
@THERM_STATUS_PROCHOT = common dso_local global i32 0, align 4
@THERMAL_THROTTLING_EVENT = common dso_local global i32 0, align 4
@CORE_LEVEL = common dso_local global i32 0, align 4
@X86_FEATURE_PLN = common dso_local global i32 0, align 4
@int_pln_enable = common dso_local global i64 0, align 8
@THERM_STATUS_POWER_LIMIT = common dso_local global i32 0, align 4
@POWER_LIMIT_EVENT = common dso_local global i32 0, align 4
@X86_FEATURE_PTS = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_STATUS = common dso_local global i32 0, align 4
@PACKAGE_THERM_STATUS_PROCHOT = common dso_local global i32 0, align 4
@PACKAGE_LEVEL = common dso_local global i32 0, align 4
@PACKAGE_THERM_STATUS_POWER_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_thermal_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_thermal_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MSR_IA32_THERM_STATUS, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @rdmsrl(i32 %2, i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @THERM_STATUS_PROCHOT, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @THERMAL_THROTTLING_EVENT, align 4
  %9 = load i32, i32* @CORE_LEVEL, align 4
  %10 = call i64 @therm_throt_process(i32 %7, i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @mce_log_therm_throt_event(i32 %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* @X86_FEATURE_PLN, align 4
  %17 = call i64 @this_cpu_has(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i64, i64* @int_pln_enable, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @THERM_STATUS_POWER_LIMIT, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @POWER_LIMIT_EVENT, align 4
  %27 = load i32, i32* @CORE_LEVEL, align 4
  %28 = call i64 @therm_throt_process(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %19, %15
  %30 = load i32, i32* @X86_FEATURE_PTS, align 4
  %31 = call i64 @this_cpu_has(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i32, i32* @MSR_IA32_PACKAGE_THERM_STATUS, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @rdmsrl(i32 %34, i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @PACKAGE_THERM_STATUS_PROCHOT, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @THERMAL_THROTTLING_EVENT, align 4
  %41 = load i32, i32* @PACKAGE_LEVEL, align 4
  %42 = call i64 @therm_throt_process(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @X86_FEATURE_PLN, align 4
  %44 = call i64 @this_cpu_has(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load i64, i64* @int_pln_enable, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @PACKAGE_THERM_STATUS_POWER_LIMIT, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @POWER_LIMIT_EVENT, align 4
  %54 = load i32, i32* @PACKAGE_LEVEL, align 4
  %55 = call i64 @therm_throt_process(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %46, %33
  br label %57

57:                                               ; preds = %56, %29
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i64 @therm_throt_process(i32, i32, i32) #1

declare dso_local i32 @mce_log_therm_throt_event(i32) #1

declare dso_local i64 @this_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
