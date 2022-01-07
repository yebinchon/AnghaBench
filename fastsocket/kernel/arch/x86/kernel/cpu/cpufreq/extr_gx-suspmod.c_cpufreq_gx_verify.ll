; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_cpufreq_gx_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_cpufreq_gx_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i64 }

@stock_freq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@max_duration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cpufreq_gx_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_gx_verify(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @stock_freq, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %11 = icmp ne %struct.cpufreq_policy* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %94

15:                                               ; preds = %9
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %19 = load i32, i32* @stock_freq, align 4
  %20 = load i32, i32* @max_duration, align 4
  %21 = udiv i32 %19, %20
  %22 = load i32, i32* @stock_freq, align 4
  %23 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %18, i32 %21, i32 %22)
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %25 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gx_validate_speed(i32 %26, i32* %5, i32* %6)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %15
  %34 = load i32, i32* @stock_freq, align 4
  %35 = load i32, i32* @max_duration, align 4
  %36 = udiv i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %15
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %42 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %53 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %39
  %55 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %56 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gx_validate_speed(i32 %57, i32* %5, i32* %6)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %61 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ugt i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32, i32* @stock_freq, align 4
  %66 = load i32, i32* @max_duration, align 4
  %67 = udiv i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %54
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %73 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %75 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %78 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %70
  %82 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %83 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %86 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %70
  %88 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %89 = load i32, i32* @stock_freq, align 4
  %90 = load i32, i32* @max_duration, align 4
  %91 = udiv i32 %89, %90
  %92 = load i32, i32* @stock_freq, align 4
  %93 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %88, i32 %91, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @gx_validate_speed(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
