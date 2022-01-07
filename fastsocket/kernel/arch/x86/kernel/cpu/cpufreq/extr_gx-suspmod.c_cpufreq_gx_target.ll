; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_cpufreq_gx_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_cpufreq_gx_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i64 }

@stock_freq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@max_duration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @cpufreq_gx_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_gx_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @stock_freq, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %15 = icmp ne %struct.cpufreq_policy* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %13
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gx_validate_speed(i32 %22, i32* %8, i32* %9)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %30, %19
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %27 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @stock_freq, align 4
  %32 = load i32, i32* @max_duration, align 4
  %33 = udiv i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @gx_validate_speed(i32 %36, i32* %8, i32* %9)
  store i32 %37, i32* %10, align 4
  br label %24

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %42 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @stock_freq, align 4
  %47 = load i32, i32* @max_duration, align 4
  %48 = udiv i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @gx_validate_speed(i32 %51, i32* %8, i32* %9)
  store i32 %52, i32* %10, align 4
  br label %39

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @gx_set_cpuspeed(i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @gx_validate_speed(i32, i32*, i32*) #1

declare dso_local i32 @gx_set_cpuspeed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
