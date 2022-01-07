; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_p4-clockmod.c_cpufreq_p4_setdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_p4-clockmod.c_cpufreq_p4_setdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DC_DISABLE = common dso_local global i32 0, align 4
@DC_RESV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSR_IA32_THERM_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CPU#%d currently thermal throttled\0A\00", align 1
@has_N44_O17_errata = common dso_local global i64* null, align 8
@DC_25PT = common dso_local global i32 0, align 4
@DC_DFLT = common dso_local global i32 0, align 4
@DC_38PT = common dso_local global i32 0, align 4
@MSR_IA32_THERM_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"CPU#%d disabling modulation\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CPU#%d setting duty cycle to %d%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cpufreq_p4_setdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_p4_setdc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cpu_online(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DC_DISABLE, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DC_RESV, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %11, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MSR_IA32_THERM_STATUS, align 4
  %25 = call i32 @rdmsr_on_cpu(i32 %23, i32 %24, i32* %6, i32* %7)
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i64*, i64** @has_N44_O17_errata, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @DC_25PT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DC_DFLT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @DC_38PT, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %43, %32
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  %52 = call i32 @rdmsr_on_cpu(i32 %50, i32 %51, i32* %6, i32* %7)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @DC_DISABLE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, -17
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @wrmsr_on_cpu(i32 %59, i32 %60, i32 %62, i32 %63)
  br label %84

65:                                               ; preds = %49
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = mul i32 125, %67
  %69 = udiv i32 %68, 10
  %70 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, -15
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, 16
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 7
  %77 = shl i32 %76, 1
  %78 = or i32 %74, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MSR_IA32_THERM_CONTROL, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @wrmsr_on_cpu(i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %65, %56
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @wrmsr_on_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
