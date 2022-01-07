; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { i32 }
%struct.cpufreq_policy = type { i64 }

@acpi_io_data = common dso_local global %struct.cpufreq_acpi_io** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"acpi_cpufreq_setpolicy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @acpi_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_acpi_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %12 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %13 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %11, i64 %14
  %16 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %15, align 8
  store %struct.cpufreq_acpi_io* %16, %struct.cpufreq_acpi_io** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %19 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %8, align 8
  %20 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %18, i32 %21, i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %8, align 8
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @processor_set_freq(%struct.cpufreq_acpi_io* %30, i64 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %27
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32, i32, i32, i32*) #1

declare dso_local i32 @processor_set_freq(%struct.cpufreq_acpi_io*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
