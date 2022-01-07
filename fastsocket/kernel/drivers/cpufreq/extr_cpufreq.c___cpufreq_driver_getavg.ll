; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c___cpufreq_driver_getavg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c___cpufreq_driver_getavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpufreq_policy*, i32)* }
%struct.cpufreq_policy = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpufreq_driver_getavg(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %9)
  store %struct.cpufreq_policy* %10, %struct.cpufreq_policy** %4, align 8
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %12 = icmp ne %struct.cpufreq_policy* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @cpu_online(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.cpufreq_policy*, i32)*, i32 (%struct.cpufreq_policy*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.cpufreq_policy*, i32)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cpufreq_policy*, i32)*, i32 (%struct.cpufreq_policy*, i32)** %27, align 8
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 %28(%struct.cpufreq_policy* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %20, %16
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %34 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
