; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_cbe_cpufreq_pmi.c_pmi_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_cbe_cpufreq_pmi.c_pmi_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_frequency_table = type { i32 }

@CPUFREQ_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"got notified, event=%lu, node=%u\0A\00", align 1
@pmi_slow_mode_limit = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"limiting node %d to slow mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @pmi_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmi_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpufreq_policy*, align 8
  %9 = alloca %struct.cpufreq_frequency_table*, align 8
  %10 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.cpufreq_policy*
  store %struct.cpufreq_policy* %12, %struct.cpufreq_policy** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CPUFREQ_START, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cpufreq_frequency_table* @cpufreq_frequency_get_table(i32 %20)
  store %struct.cpufreq_frequency_table* %21, %struct.cpufreq_frequency_table** %9, align 8
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %23 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @cbe_cpu_to_node(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load i64*, i64** @pmi_slow_mode_limit, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %17
  %35 = load i64, i64* %10, align 8
  %36 = load i64*, i64** @pmi_slow_mode_limit, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %39)
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %42 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %9, align 8
  %43 = load i64*, i64** @pmi_slow_mode_limit, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %42, i64 %46
  %48 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %41, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %34, %17
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.cpufreq_frequency_table* @cpufreq_frequency_get_table(i32) #1

declare dso_local i64 @cbe_cpu_to_node(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
