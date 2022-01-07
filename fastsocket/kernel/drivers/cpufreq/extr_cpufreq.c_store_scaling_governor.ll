; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_store_scaling_governor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_store_scaling_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i8*, i64)* @store_scaling_governor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_scaling_governor(%struct.cpufreq_policy* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.cpufreq_policy, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cpufreq_get_policy(%struct.cpufreq_policy* %10, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %61

30:                                               ; preds = %21
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 2
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 0
  %34 = call i64 @cpufreq_parse_governor(i8* %31, i32* %32, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %30
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %41 = call i32 @__cpufreq_set_policy(%struct.cpufreq_policy* %40, %struct.cpufreq_policy* %10)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %43 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %52 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %61

58:                                               ; preds = %39
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %56, %36, %27, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @cpufreq_get_policy(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i64 @cpufreq_parse_governor(i8*, i32*, i32*) #1

declare dso_local i32 @__cpufreq_set_policy(%struct.cpufreq_policy*, %struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
