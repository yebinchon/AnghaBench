; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_extract_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_extract_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpufreq_data = type { %struct.TYPE_4__*, %struct.acpi_processor_performance* }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_processor_performance = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.acpi_cpufreq_data*)* @extract_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_io(i64 %0, %struct.acpi_cpufreq_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_cpufreq_data*, align 8
  %6 = alloca %struct.acpi_processor_performance*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.acpi_cpufreq_data* %1, %struct.acpi_cpufreq_data** %5, align 8
  %8 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %9 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %8, i32 0, i32 1
  %10 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %9, align 8
  store %struct.acpi_processor_performance* %10, %struct.acpi_processor_performance** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %14 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11

41:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
