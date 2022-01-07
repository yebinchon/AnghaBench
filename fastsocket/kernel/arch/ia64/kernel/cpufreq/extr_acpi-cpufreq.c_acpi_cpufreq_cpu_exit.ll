; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_cpu_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_cpu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { i32 }
%struct.cpufreq_policy = type { i64 }

@acpi_io_data = common dso_local global %struct.cpufreq_acpi_io** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"acpi_cpufreq_cpu_exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @acpi_cpufreq_cpu_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpufreq_cpu_exit(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.cpufreq_acpi_io*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %4 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %5 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %6 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %4, i64 %7
  %9 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %8, align 8
  store %struct.cpufreq_acpi_io* %9, %struct.cpufreq_acpi_io** %3, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %3, align 8
  %12 = icmp ne %struct.cpufreq_acpi_io* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @cpufreq_frequency_table_put_attr(i64 %16)
  %18 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %18, i64 %21
  store %struct.cpufreq_acpi_io* null, %struct.cpufreq_acpi_io** %22, align 8
  %23 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %3, align 8
  %24 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %23, i32 0, i32 0
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @acpi_processor_unregister_performance(i32* %24, i64 %27)
  %29 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %3, align 8
  %30 = call i32 @kfree(%struct.cpufreq_acpi_io* %29)
  br label %31

31:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cpufreq_frequency_table_put_attr(i64) #1

declare dso_local i32 @acpi_processor_unregister_performance(i32*, i64) #1

declare dso_local i32 @kfree(%struct.cpufreq_acpi_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
