; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_stats = type { i64, i64, i32* }

@cpufreq_stats_lock = common dso_local global i32 0, align 4
@cpufreq_stats_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpufreq_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_stats_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_stats*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @get_jiffies_64()
  store i64 %5, i64* %4, align 8
  %6 = call i32 @spin_lock(i32* @cpufreq_stats_lock)
  %7 = load i32, i32* @cpufreq_stats_table, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.cpufreq_stats* @per_cpu(i32 %7, i32 %8)
  store %struct.cpufreq_stats* %9, %struct.cpufreq_stats** %3, align 8
  %10 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %16 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %19 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %25 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cputime_sub(i64 %23, i64 %26)
  %28 = call i32 @cputime64_add(i32 %22, i32 %27)
  %29 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %30 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %33 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %28, i32* %35, align 4
  br label %36

36:                                               ; preds = %14, %1
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  %39 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = call i32 @spin_unlock(i32* @cpufreq_stats_lock)
  ret i32 0
}

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.cpufreq_stats* @per_cpu(i32, i32) #1

declare dso_local i32 @cputime64_add(i32, i32) #1

declare dso_local i32 @cputime_sub(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
