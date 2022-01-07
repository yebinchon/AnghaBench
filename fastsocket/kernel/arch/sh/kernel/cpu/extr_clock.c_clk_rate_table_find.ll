; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_rate_table_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_rate_table_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.cpufreq_frequency_table = type { i64 }

@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@CPUFREQ_ENTRY_INVALID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_rate_table_find(%struct.clk* %0, %struct.cpufreq_frequency_table* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.cpufreq_frequency_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %5, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %37, %3
  %11 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %11, i64 %13
  %15 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %10
  %20 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %20, i64 %22
  %24 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %37

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
