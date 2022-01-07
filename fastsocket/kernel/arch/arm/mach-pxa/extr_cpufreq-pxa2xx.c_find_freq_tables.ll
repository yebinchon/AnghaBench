; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa2xx.c_find_freq_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa2xx.c_find_freq_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i32 }

@pxa255_turbo_table = common dso_local global i32 0, align 4
@pxa255_run_freqs = common dso_local global i32* null, align 8
@pxa255_run_freq_table = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@pxa255_turbo_freqs = common dso_local global i32* null, align 8
@pxa255_turbo_freq_table = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@pxa27x_freqs = common dso_local global i32* null, align 8
@pxa27x_freq_table = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_frequency_table**, i32**)* @find_freq_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_freq_tables(%struct.cpufreq_frequency_table** %0, i32** %1) #0 {
  %3 = alloca %struct.cpufreq_frequency_table**, align 8
  %4 = alloca i32**, align 8
  store %struct.cpufreq_frequency_table** %0, %struct.cpufreq_frequency_table*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = call i64 (...) @cpu_is_pxa25x()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* @pxa255_turbo_table, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load i32*, i32** @pxa255_run_freqs, align 8
  %12 = load i32**, i32*** %4, align 8
  store i32* %11, i32** %12, align 8
  %13 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa255_run_freq_table, align 8
  %14 = load %struct.cpufreq_frequency_table**, %struct.cpufreq_frequency_table*** %3, align 8
  store %struct.cpufreq_frequency_table* %13, %struct.cpufreq_frequency_table** %14, align 8
  br label %20

15:                                               ; preds = %7
  %16 = load i32*, i32** @pxa255_turbo_freqs, align 8
  %17 = load i32**, i32*** %4, align 8
  store i32* %16, i32** %17, align 8
  %18 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa255_turbo_freq_table, align 8
  %19 = load %struct.cpufreq_frequency_table**, %struct.cpufreq_frequency_table*** %3, align 8
  store %struct.cpufreq_frequency_table* %18, %struct.cpufreq_frequency_table** %19, align 8
  br label %20

20:                                               ; preds = %15, %10
  br label %21

21:                                               ; preds = %20, %2
  %22 = call i64 (...) @cpu_is_pxa27x()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** @pxa27x_freqs, align 8
  %26 = load i32**, i32*** %4, align 8
  store i32* %25, i32** %26, align 8
  %27 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** @pxa27x_freq_table, align 8
  %28 = load %struct.cpufreq_frequency_table**, %struct.cpufreq_frequency_table*** %3, align 8
  store %struct.cpufreq_frequency_table* %27, %struct.cpufreq_frequency_table** %28, align 8
  br label %29

29:                                               ; preds = %24, %21
  ret void
}

declare dso_local i64 @cpu_is_pxa25x(...) #1

declare dso_local i64 @cpu_is_pxa27x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
