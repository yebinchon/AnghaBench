; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_guess_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_acpi_cpufreq_guess_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpufreq_data = type { %struct.acpi_processor_performance* }
%struct.acpi_processor_performance = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cpu_khz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_cpufreq_data*, i32)* @acpi_cpufreq_guess_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_cpufreq_guess_freq(%struct.acpi_cpufreq_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_cpufreq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_processor_performance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.acpi_cpufreq_data* %0, %struct.acpi_cpufreq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %10, i32 0, i32 0
  %12 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %11, align 8
  store %struct.acpi_processor_performance* %12, %struct.acpi_processor_performance** %6, align 8
  %13 = load i32, i32* @cpu_khz, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %2
  %16 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %57, %15
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %34 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* @cpu_khz, align 4
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %47, %48
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %31
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %54 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %3, align 8
  br label %79

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %62 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %66 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %3, align 8
  br label %79

68:                                               ; preds = %2
  %69 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %70 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %6, align 8
  %72 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 1000
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %68, %60, %51
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
