; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k6.c_powernow_k6_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k6.c_powernow_k6_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.cpufreq_policy = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@max_multiplier = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i32 0, align 4
@busfreq = common dso_local global i32 0, align 4
@clock_ratio = common dso_local global %struct.TYPE_6__* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@CPUFREQ_ETERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @powernow_k6_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_k6_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = call i32 (...) @powernow_k6_get_cpu_multiplier()
  store i32 %15, i32* @max_multiplier, align 4
  %16 = load i32, i32* @cpu_khz, align 4
  %17 = load i32, i32* @max_multiplier, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* @busfreq, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %55, %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clock_ratio, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clock_ratio, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @max_multiplier, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clock_ratio, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  br label %54

45:                                               ; preds = %28
  %46 = load i32, i32* @busfreq, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul i32 %46, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clock_ratio, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  %60 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %61 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @busfreq, align 4
  %64 = load i32, i32* @max_multiplier, align 4
  %65 = mul i32 %63, %64
  %66 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %67 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clock_ratio, align 8
  %70 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %68, %struct.TYPE_6__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %58
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clock_ratio, align 8
  %77 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %78 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__* %76, i64 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @powernow_k6_get_cpu_multiplier(...) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, %struct.TYPE_6__*) #1

declare dso_local i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
