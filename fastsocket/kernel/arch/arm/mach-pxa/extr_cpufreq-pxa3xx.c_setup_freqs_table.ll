; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa3xx.c_setup_freqs_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa3xx.c_setup_freqs_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_freq_info = type { i32 }
%struct.cpufreq_frequency_table = type { i32, i32 }
%struct.cpufreq_policy = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@pxa3xx_freqs = common dso_local global %struct.pxa3xx_freq_info* null, align 8
@pxa3xx_freqs_num = common dso_local global i32 0, align 4
@pxa3xx_freqs_table = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, %struct.pxa3xx_freq_info*, i32)* @setup_freqs_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_freqs_table(%struct.cpufreq_policy* %0, %struct.pxa3xx_freq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca %struct.pxa3xx_freq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store %struct.pxa3xx_freq_info* %1, %struct.pxa3xx_freq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cpufreq_frequency_table* @kzalloc(i32 %14, i32 %15)
  store %struct.cpufreq_frequency_table* %16, %struct.cpufreq_frequency_table** %8, align 8
  %17 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %18 = icmp eq %struct.cpufreq_frequency_table* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %29, i64 %31
  %33 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %34, i64 %36
  %38 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %41, i64 %43
  %45 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %51, i64 %53
  %55 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %57 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %57, i64 %59
  %61 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %6, align 8
  store %struct.pxa3xx_freq_info* %62, %struct.pxa3xx_freq_info** @pxa3xx_freqs, align 8
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* @pxa3xx_freqs_num, align 4
  %64 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  store %struct.cpufreq_frequency_table* %64, %struct.cpufreq_frequency_table** @pxa3xx_freqs_table, align 8
  %65 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %66 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %67 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %65, %struct.cpufreq_frequency_table* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %49, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.cpufreq_frequency_table* @kzalloc(i32, i32) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, %struct.cpufreq_frequency_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
