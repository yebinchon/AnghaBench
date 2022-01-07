; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_stats.c_show_time_in_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq_stats.c_show_time_in_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_stats = type { i32, i32*, i32*, i32 }

@cpufreq_stats_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%u %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i8*)* @show_time_in_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_time_in_state(%struct.cpufreq_policy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_stats*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @cpufreq_stats_table, align 4
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cpufreq_stats* @per_cpu(i32 %9, i32 %12)
  store %struct.cpufreq_stats* %13, %struct.cpufreq_stats** %8, align 8
  %14 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %8, align 8
  %15 = icmp ne %struct.cpufreq_stats* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %8, align 8
  %19 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cpufreq_stats_update(i32 %20)
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %51, %17
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %8, align 8
  %25 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %8, align 8
  %34 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %8, align 8
  %41 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @cputime64_to_clock_t(i32 %46)
  %48 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.cpufreq_stats* @per_cpu(i32, i32) #1

declare dso_local i32 @cpufreq_stats_update(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i64) #1

declare dso_local i64 @cputime64_to_clock_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
