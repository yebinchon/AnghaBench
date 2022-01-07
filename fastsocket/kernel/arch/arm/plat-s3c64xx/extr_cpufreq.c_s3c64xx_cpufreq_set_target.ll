; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_cpufreq.c_s3c64xx_cpufreq_set_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c64xx/extr_cpufreq.c_s3c64xx_cpufreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.s3c64xx_dvfs = type { i32, i32 }
%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i32, i32, i64, i64 }

@s3c64xx_freq_table = common dso_local global %struct.TYPE_3__* null, align 8
@armclk = common dso_local global i32 0, align 4
@s3c64xx_dvfs_table = common dso_local global %struct.s3c64xx_dvfs* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"cpufreq: Transition %d-%dkHz\0A\00", align 1
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cpufreq: Failed to set rate %dkHz: %d\0A\00", align 1
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"cpufreq: Set actual frequency %lukHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to restore original clock rate\0A\00", align 1
@vddarm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @s3c64xx_cpufreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_cpufreq_set_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpufreq_freqs, align 8
  %11 = alloca %struct.s3c64xx_dvfs*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3c64xx_freq_table, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %12, %struct.TYPE_3__* %13, i32 %14, i32 %15, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %90

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @armclk, align 4
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = sdiv i32 %24, 1000
  %26 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3c64xx_freq_table, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.s3c64xx_dvfs*, %struct.s3c64xx_dvfs** @s3c64xx_dvfs_table, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3c64xx_freq_table, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.s3c64xx_dvfs, %struct.s3c64xx_dvfs* %35, i64 %41
  store %struct.s3c64xx_dvfs* %42, %struct.s3c64xx_dvfs** %11, align 8
  %43 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %90

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %56 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %10, i32 %55)
  %57 = load i32, i32* @armclk, align 4
  %58 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = call i32 @clk_set_rate(i32 %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  br label %86

69:                                               ; preds = %49
  %70 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %71 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %10, i32 %70)
  %72 = load i32, i32* @armclk, align 4
  %73 = call i32 @clk_get_rate(i32 %72)
  %74 = sdiv i32 %73, 1000
  %75 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store i32 0, i32* %4, align 4
  br label %90

76:                                               ; No predecessors!
  %77 = load i32, i32* @armclk, align 4
  %78 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %10, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 1000
  %81 = call i32 @clk_set_rate(i32 %77, i32 %80)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %76
  br label %86

86:                                               ; preds = %85, %64
  %87 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %88 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %10, i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %69, %48, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, %struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
