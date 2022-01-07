; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa3xx.c_pxa3xx_cpufreq_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa3xx.c_pxa3xx_cpufreq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_freq_info = type { i32 }
%struct.cpufreq_policy = type { i64, i32 }
%struct.cpufreq_freqs = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@pxa3xx_freqs_table = common dso_local global i32 0, align 4
@pxa3xx_freqs = common dso_local global %struct.pxa3xx_freq_info* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"CPU frequency from %d MHz to %d MHz%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (skipped)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @pxa3xx_cpufreq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_cpufreq_set(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pxa3xx_freq_info*, align 8
  %9 = alloca %struct.cpufreq_freqs, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %21 = load i32, i32* @pxa3xx_freqs_table, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %20, i32 %21, i32 %22, i32 %23, i32* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %79

29:                                               ; preds = %19
  %30 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** @pxa3xx_freqs, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %30, i64 %32
  store %struct.pxa3xx_freq_info* %33, %struct.pxa3xx_freq_info** %8, align 8
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %8, align 8
  %39 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 1000
  %50 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 1000
  %53 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i8* %59)
  %61 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %79

66:                                               ; preds = %29
  %67 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %68 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @local_irq_save(i64 %69)
  %71 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %8, align 8
  %72 = call i32 @__update_core_freq(%struct.pxa3xx_freq_info* %71)
  %73 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %8, align 8
  %74 = call i32 @__update_bus_freq(%struct.pxa3xx_freq_info* %73)
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  %77 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %78 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %9, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %66, %65, %26, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__update_core_freq(%struct.pxa3xx_freq_info*) #1

declare dso_local i32 @__update_bus_freq(%struct.pxa3xx_freq_info*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
