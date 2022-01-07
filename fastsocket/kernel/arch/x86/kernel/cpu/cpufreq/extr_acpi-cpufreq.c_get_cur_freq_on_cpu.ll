; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_get_cur_freq_on_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_get_cur_freq_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpufreq_data = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@drv_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"get_cur_freq_on_cpu (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cur freq = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_cur_freq_on_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_freq_on_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_cpufreq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @drv_data, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.acpi_cpufreq_data* @per_cpu(i32 %7, i32 %8)
  store %struct.acpi_cpufreq_data* %9, %struct.acpi_cpufreq_data** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %13 = icmp eq %struct.acpi_cpufreq_data* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br label %24

24:                                               ; preds = %19, %14, %1
  %25 = phi i1 [ true, %14 ], [ true, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %57

30:                                               ; preds = %24
  %31 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @cpumask_of(i32 %42)
  %44 = call i32 @get_cur_val(i32 %43)
  %45 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %46 = call i32 @extract_freq(i32 %44, %struct.acpi_cpufreq_data* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %4, align 8
  %52 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %30
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %29
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.acpi_cpufreq_data* @per_cpu(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @extract_freq(i32, %struct.acpi_cpufreq_data*) #1

declare dso_local i32 @get_cur_val(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
