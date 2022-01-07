; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_cpu-omap.c_omap_verify_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_cpu-omap.c_omap_verify_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@freq_table = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mpu_clk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_verify_speed(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %4 = load i64, i64* @freq_table, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = load i64, i64* @freq_table, align 8
  %9 = call i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy* %7, i64 %8)
  store i32 %9, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %10
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %25 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %19, i32 %23, i32 %27)
  %29 = load i32, i32* @mpu_clk, align 4
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 1000
  %34 = call i32 @clk_round_rate(i32 %29, i32 %33)
  %35 = sdiv i32 %34, 1000
  %36 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %37 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @mpu_clk, align 4
  %39 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %40 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = call i32 @clk_round_rate(i32 %38, i32 %42)
  %44 = sdiv i32 %43, 1000
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %48 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %53 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %47, i32 %51, i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %18, %15, %6
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy*, i64) #1

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
