; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.freq_attr = type { i32 (%struct.cpufreq_policy.0*, i8*)* }
%struct.cpufreq_policy.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpufreq_policy*, align 8
  %8 = alloca %struct.freq_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.kobject*, %struct.kobject** %4, align 8
  %11 = call %struct.cpufreq_policy* @to_policy(%struct.kobject* %10)
  store %struct.cpufreq_policy* %11, %struct.cpufreq_policy** %7, align 8
  %12 = load %struct.attribute*, %struct.attribute** %5, align 8
  %13 = call %struct.freq_attr* @to_attr(%struct.attribute* %12)
  store %struct.freq_attr* %13, %struct.freq_attr** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %18)
  store %struct.cpufreq_policy* %19, %struct.cpufreq_policy** %7, align 8
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %21 = icmp ne %struct.cpufreq_policy* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %25 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @lock_policy_rwsem_read(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %51

30:                                               ; preds = %23
  %31 = load %struct.freq_attr*, %struct.freq_attr** %8, align 8
  %32 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %31, i32 0, i32 0
  %33 = load i32 (%struct.cpufreq_policy.0*, i8*)*, i32 (%struct.cpufreq_policy.0*, i8*)** %32, align 8
  %34 = icmp ne i32 (%struct.cpufreq_policy.0*, i8*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.freq_attr*, %struct.freq_attr** %8, align 8
  %37 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %36, i32 0, i32 0
  %38 = load i32 (%struct.cpufreq_policy.0*, i8*)*, i32 (%struct.cpufreq_policy.0*, i8*)** %37, align 8
  %39 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %40 = bitcast %struct.cpufreq_policy* %39 to %struct.cpufreq_policy.0*
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 %38(%struct.cpufreq_policy.0* %40, i8* %41)
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %48 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @unlock_policy_rwsem_read(i32 %49)
  br label %51

51:                                               ; preds = %46, %29
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %53 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %52)
  br label %54

54:                                               ; preds = %51, %22
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local %struct.cpufreq_policy* @to_policy(%struct.kobject*) #1

declare dso_local %struct.freq_attr* @to_attr(%struct.attribute*) #1

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i64 @lock_policy_rwsem_read(i32) #1

declare dso_local i32 @unlock_policy_rwsem_read(i32) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
