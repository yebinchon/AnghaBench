; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_extract_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_extract_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpufreq_data = type { %struct.TYPE_4__*, %struct.acpi_processor_performance* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.acpi_processor_performance = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@INTEL_MSR_RANGE = common dso_local global i64 0, align 8
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.acpi_cpufreq_data*)* @extract_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_msr(i64 %0, %struct.acpi_cpufreq_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_cpufreq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_processor_performance*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.acpi_cpufreq_data* %1, %struct.acpi_cpufreq_data** %5, align 8
  %8 = load i64, i64* @INTEL_MSR_RANGE, align 8
  %9 = load i64, i64* %4, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %11, i32 0, i32 1
  %13 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %12, align 8
  store %struct.acpi_processor_performance* %13, %struct.acpi_processor_performance** %7, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %26, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %25
  %43 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %64

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %5, align 8
  %58 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %42
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
