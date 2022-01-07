; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_rate_table_round.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_rate_table_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.cpufreq_frequency_table = type { i64 }

@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@CPUFREQ_ENTRY_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_rate_table_round(%struct.clk* %0, %struct.cpufreq_frequency_table* %1, i64 %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 -1, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %63, %3
  %16 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %16, i64 %18
  %20 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %15
  %25 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %25, i64 %27
  %29 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %63

35:                                               ; preds = %24
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %13, align 8
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %48, %49
  %51 = call i64 @abs(i64 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %66

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %15

66:                                               ; preds = %61, %15
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ule i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i64, i64* %9, align 8
  ret i64 %79
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
