; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_cpu_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_cpu_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@cpufreq_driver_lock = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@cpufreq_cpu_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @read_lock_irqsave(i32* @cpufreq_driver_lock, i64 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %45

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @try_module_get(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %45

23:                                               ; preds = %16
  %24 = load i32, i32* @cpufreq_cpu_data, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.cpufreq_policy* @per_cpu(i32 %24, i32 %25)
  store %struct.cpufreq_policy* %26, %struct.cpufreq_policy** %4, align 8
  %27 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %28 = icmp ne %struct.cpufreq_policy* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 0
  %33 = call i32 @kobject_get(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @read_unlock_irqrestore(i32* @cpufreq_driver_lock, i64 %37)
  %39 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_policy* %39, %struct.cpufreq_policy** %2, align 8
  br label %49

40:                                               ; preds = %35, %29
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @module_put(i32 %43)
  br label %45

45:                                               ; preds = %40, %22, %15
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @read_unlock_irqrestore(i32* @cpufreq_driver_lock, i64 %46)
  br label %48

48:                                               ; preds = %45, %9
  store %struct.cpufreq_policy* null, %struct.cpufreq_policy** %2, align 8
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  ret %struct.cpufreq_policy* %50
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.cpufreq_policy* @per_cpu(i32, i32) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
