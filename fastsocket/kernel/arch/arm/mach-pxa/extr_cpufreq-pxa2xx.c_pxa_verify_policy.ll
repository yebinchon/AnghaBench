; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa2xx.c_pxa_verify_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_cpufreq-pxa2xx.c_pxa_verify_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32 }
%struct.cpufreq_frequency_table = type { i32 }

@freq_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Verified CPU policy: %dKhz min to %dKhz max\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @pxa_verify_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_verify_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.cpufreq_frequency_table*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %6 = call i32 @find_freq_tables(%struct.cpufreq_frequency_table** %3, i32** %4)
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %8 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %9 = call i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy* %7, %struct.cpufreq_frequency_table* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @freq_debug, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @find_freq_tables(%struct.cpufreq_frequency_table**, i32**) #1

declare dso_local i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy*, %struct.cpufreq_frequency_table*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
