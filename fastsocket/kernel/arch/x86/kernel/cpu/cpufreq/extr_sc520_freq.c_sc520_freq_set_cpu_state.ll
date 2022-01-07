; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_sc520_freq.c_sc520_freq_set_cpu_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_sc520_freq.c_sc520_freq_set_cpu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cpufreq_freqs = type { i64, i32, i32 }

@sc520_freq_table = common dso_local global %struct.TYPE_2__* null, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"attempting to set frequency to %i kHz\0A\00", align 1
@cpuctl = common dso_local global i32* null, align 8
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sc520_freq_set_cpu_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc520_freq_set_cpu_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_freqs, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @sc520_freq_get_cpu_frequency(i32 0)
  %6 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc520_freq_table, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %3, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %16 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %3, i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc520_freq_table, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 (...) @local_irq_disable()
  %25 = load i32*, i32** @cpuctl, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc520_freq_table, align 8
  %30 = load i32, i32* %2, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %28, %34
  %36 = load i32*, i32** @cpuctl, align 8
  store i32 %35, i32* %36, align 4
  %37 = call i32 (...) @local_irq_enable()
  %38 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %39 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %3, i32 %38)
  ret void
}

declare dso_local i32 @sc520_freq_get_cpu_frequency(i32) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
