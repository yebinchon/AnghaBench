; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-ich.c_speedstep_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-ich.c_speedstep_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cpufreq_policy = type { i32, i32, i32 }
%struct.get_freqs = type { i32, %struct.cpufreq_policy* }

@cpu_online_mask = common dso_local global i32 0, align 4
@get_freqs_on_cpu = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"currently at %s speed setting - %i MHz\0A\00", align 1
@speedstep_freqs = common dso_local global %struct.TYPE_4__* null, align 8
@SPEEDSTEP_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @speedstep_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.get_freqs, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @cpu_online_mask, align 4
  %12 = call i32 @cpumask_any_and(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %14 = getelementptr inbounds %struct.get_freqs, %struct.get_freqs* %7, i32 0, i32 1
  store %struct.cpufreq_policy* %13, %struct.cpufreq_policy** %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @get_freqs_on_cpu, align 4
  %17 = call i32 @smp_call_function_single(i32 %15, i32 %16, %struct.get_freqs* %7, i32 1)
  %18 = getelementptr inbounds %struct.get_freqs, %struct.get_freqs* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.get_freqs, %struct.get_freqs* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @speedstep_get(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @speedstep_freqs, align 8
  %35 = load i64, i64* @SPEEDSTEP_LOW, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %33, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %6, align 4
  %43 = udiv i32 %42, 1000
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @speedstep_freqs, align 8
  %50 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %48, %struct.TYPE_4__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %32
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @speedstep_freqs, align 8
  %57 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %58 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_4__* %56, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %53, %29, %21
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.get_freqs*, i32) #1

declare dso_local i32 @speedstep_get(i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, %struct.TYPE_4__*) #1

declare dso_local i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
