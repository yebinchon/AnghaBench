; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_rate_table_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_rate_table_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_frequency_table = type { i32, i64 }
%struct.clk_div_mult_table = type { i64*, i32, i64*, i32 }

@CPUFREQ_ENTRY_INVALID = common dso_local global i64 0, align 8
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_rate_table_build(%struct.clk* %0, %struct.cpufreq_frequency_table* %1, i32 %2, %struct.clk_div_mult_table* %3, i64* %4) #0 {
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.cpufreq_frequency_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_div_mult_table*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %6, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.clk_div_mult_table* %3, %struct.clk_div_mult_table** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %96, %5
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %99

19:                                               ; preds = %15
  store i64 1, i64* %12, align 8
  store i64 1, i64* %11, align 8
  %20 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %21 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %27 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %32 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %30, %24, %19
  %39 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %40 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %46 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.clk_div_mult_table*, %struct.clk_div_mult_table** %9, align 8
  %51 = getelementptr inbounds %struct.clk_div_mult_table, %struct.clk_div_mult_table* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %49, %43, %38
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i64*, i64** %10, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = load i64*, i64** %10, align 8
  %69 = call i32 @test_bit(i32 %67, i64* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %60, %57
  %72 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  store i64 %72, i64* %13, align 8
  br label %83

73:                                               ; preds = %66, %63
  %74 = load %struct.clk*, %struct.clk** %6, align 8
  %75 = getelementptr inbounds %struct.clk, %struct.clk* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = mul i64 %78, %79
  %81 = load i64, i64* %12, align 8
  %82 = udiv i64 %80, %81
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %73, %71
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %85, i64 %87
  %89 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %91, i64 %93
  %95 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %94, i32 0, i32 1
  store i64 %90, i64* %95, align 8
  br label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %15

99:                                               ; preds = %15
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %101, i64 %103
  %105 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  %106 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %107 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %7, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %107, i64 %109
  %111 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %110, i32 0, i32 1
  store i64 %106, i64* %111, align 8
  ret void
}

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
