; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stat_notifier_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_stats.c_cpufreq_stat_notifier_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.cpufreq_freqs = type { i32, i32 }
%struct.cpufreq_stats = type { i32, i32, i32, i32* }

@CPUFREQ_POSTCHANGE = common dso_local global i64 0, align 8
@cpufreq_stats_table = common dso_local global i32 0, align 4
@cpufreq_stats_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cpufreq_stat_notifier_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_stat_notifier_trans(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpufreq_freqs*, align 8
  %9 = alloca %struct.cpufreq_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.cpufreq_freqs*
  store %struct.cpufreq_freqs* %13, %struct.cpufreq_freqs** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CPUFREQ_POSTCHANGE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load i32, i32* @cpufreq_stats_table, align 4
  %20 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %8, align 8
  %21 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cpufreq_stats* @per_cpu(i32 %19, i32 %22)
  store %struct.cpufreq_stats* %23, %struct.cpufreq_stats** %9, align 8
  %24 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %9, align 8
  %25 = icmp ne %struct.cpufreq_stats* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %61

27:                                               ; preds = %18
  %28 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %9, align 8
  %29 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %9, align 8
  %32 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %8, align 8
  %33 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @freq_table_get_index(%struct.cpufreq_stats* %31, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %8, align 8
  %37 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpufreq_stats_update(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %61

44:                                               ; preds = %27
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %61

51:                                               ; preds = %47
  %52 = call i32 @spin_lock(i32* @cpufreq_stats_lock)
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %9, align 8
  %55 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %9, align 8
  %57 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = call i32 @spin_unlock(i32* @cpufreq_stats_lock)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %51, %50, %43, %26, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.cpufreq_stats* @per_cpu(i32, i32) #1

declare dso_local i32 @freq_table_get_index(%struct.cpufreq_stats*, i32) #1

declare dso_local i32 @cpufreq_stats_update(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
