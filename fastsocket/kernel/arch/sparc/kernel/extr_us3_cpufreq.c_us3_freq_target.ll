; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us3_cpufreq.c_us3_freq_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_us3_cpufreq.c_us3_freq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.cpufreq_policy = type { i64 }

@us3_freq_table = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @us3_freq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us3_freq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @us3_freq_table, align 8
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %9, i32* %17, i32 %18, i32 %19, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @us3_set_cpu_divider_index(i64 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32*, i32, i32, i32*) #1

declare dso_local i32 @us3_set_cpu_divider_index(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
