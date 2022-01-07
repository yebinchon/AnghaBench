; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_64.c_g5_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_64.c_g5_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i64, i32, i32 }

@g5_cpu_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@g5_pmode_cur = common dso_local global i32 0, align 4
@g5_switch_mutex = common dso_local global i32 0, align 4
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @g5_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g5_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpufreq_freqs, align 8
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g5_cpu_freqs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %11, %struct.TYPE_3__* %12, i32 %13, i32 %14, i32* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load i32, i32* @g5_pmode_cur, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %50

25:                                               ; preds = %20
  %26 = call i32 @mutex_lock(i32* @g5_switch_mutex)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g5_cpu_freqs, align 8
  %28 = load i32, i32* @g5_pmode_cur, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g5_cpu_freqs, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %43 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @g5_switch_freq(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %47 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %46)
  %48 = call i32 @mutex_unlock(i32* @g5_switch_mutex)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %25, %24, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, %struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @g5_switch_freq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
