; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }
%struct.acpi_cpufreq_data = type { i32 }

@drv_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acpi_cpufreq_verify\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @acpi_cpufreq_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpufreq_verify(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.acpi_cpufreq_data*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load i32, i32* @drv_data, align 4
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.acpi_cpufreq_data* @per_cpu(i32 %4, i32 %7)
  store %struct.acpi_cpufreq_data* %8, %struct.acpi_cpufreq_data** %3, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %11 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy* %10, i32 %13)
  ret i32 %14
}

declare dso_local %struct.acpi_cpufreq_data* @per_cpu(i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
