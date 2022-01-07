; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_cpufreq.c_cris_freq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_cpufreq.c_cris_freq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cris_freq_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cris_freq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cris_freq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 1000000, i32* %7, align 4
  %8 = call i32 @cris_freq_get_cpu_frequency(i32 0)
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %12 = load i32, i32* @cris_freq_table, align 4
  %13 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @cris_freq_table, align 4
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpufreq_frequency_table_get_attr(i32 %19, i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @cris_freq_get_cpu_frequency(i32) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @cpufreq_frequency_table_get_attr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
