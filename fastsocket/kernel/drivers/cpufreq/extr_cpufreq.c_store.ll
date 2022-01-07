; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.freq_attr = type { i32 (%struct.cpufreq_policy.0*, i8*, i64)* }
%struct.cpufreq_policy.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cpufreq_policy*, align 8
  %10 = alloca %struct.freq_attr*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = call %struct.cpufreq_policy* @to_policy(%struct.kobject* %12)
  store %struct.cpufreq_policy* %13, %struct.cpufreq_policy** %9, align 8
  %14 = load %struct.attribute*, %struct.attribute** %6, align 8
  %15 = call %struct.freq_attr* @to_attr(%struct.attribute* %14)
  store %struct.freq_attr* %15, %struct.freq_attr** %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %9, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cpufreq_policy* @cpufreq_cpu_get(i32 %20)
  store %struct.cpufreq_policy* %21, %struct.cpufreq_policy** %9, align 8
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %9, align 8
  %23 = icmp ne %struct.cpufreq_policy* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %9, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @lock_policy_rwsem_write(i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %54

32:                                               ; preds = %25
  %33 = load %struct.freq_attr*, %struct.freq_attr** %10, align 8
  %34 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %33, i32 0, i32 0
  %35 = load i32 (%struct.cpufreq_policy.0*, i8*, i64)*, i32 (%struct.cpufreq_policy.0*, i8*, i64)** %34, align 8
  %36 = icmp ne i32 (%struct.cpufreq_policy.0*, i8*, i64)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.freq_attr*, %struct.freq_attr** %10, align 8
  %39 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %38, i32 0, i32 0
  %40 = load i32 (%struct.cpufreq_policy.0*, i8*, i64)*, i32 (%struct.cpufreq_policy.0*, i8*, i64)** %39, align 8
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %9, align 8
  %42 = bitcast %struct.cpufreq_policy* %41 to %struct.cpufreq_policy.0*
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 %40(%struct.cpufreq_policy.0* %42, i8* %43, i64 %44)
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %9, align 8
  %51 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @unlock_policy_rwsem_write(i32 %52)
  br label %54

54:                                               ; preds = %49, %31
  %55 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %9, align 8
  %56 = call i32 @cpufreq_cpu_put(%struct.cpufreq_policy* %55)
  br label %57

57:                                               ; preds = %54, %24
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local %struct.cpufreq_policy* @to_policy(%struct.kobject*) #1

declare dso_local %struct.freq_attr* @to_attr(%struct.attribute*) #1

declare dso_local %struct.cpufreq_policy* @cpufreq_cpu_get(i32) #1

declare dso_local i64 @lock_policy_rwsem_write(i32) #1

declare dso_local i32 @unlock_policy_rwsem_write(i32) #1

declare dso_local i32 @cpufreq_cpu_put(%struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
