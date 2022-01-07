; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c___cpufreq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c___cpufreq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 }
%struct.cpufreq_policy = type { i32, i32 }

@cpufreq_cpu_data = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@CPUFREQ_CONST_LOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cpufreq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cpufreq_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @cpufreq_cpu_data, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.cpufreq_policy* @per_cpu(i32 %6, i32 %7)
  store %struct.cpufreq_policy* %8, %struct.cpufreq_policy** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = icmp ne i32 (i32)* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 %18(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %15
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %25 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CPUFREQ_CONST_LOOPS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %38 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %47 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @cpufreq_out_of_sync(i32 %45, i32 %48, i32 %49)
  %51 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %52 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %51, i32 0, i32 1
  %53 = call i32 @schedule_work(i32* %52)
  br label %54

54:                                               ; preds = %44, %35
  br label %55

55:                                               ; preds = %54, %28, %23, %15
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.cpufreq_policy* @per_cpu(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpufreq_out_of_sync(i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
