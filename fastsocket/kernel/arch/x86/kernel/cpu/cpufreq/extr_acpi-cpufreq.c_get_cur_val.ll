; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_get_cur_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_acpi-cpufreq.c_get_cur_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.acpi_processor_performance = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.drv_cmd = type { i32, i32, %struct.cpumask*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.acpi_processor_performance* }

@drv_data = common dso_local global i32 0, align 4
@MSR_IA32_PERF_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"get_cur_val = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*)* @get_cur_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_val(%struct.cpumask* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca %struct.acpi_processor_performance*, align 8
  %5 = alloca %struct.drv_cmd, align 8
  store %struct.cpumask* %0, %struct.cpumask** %3, align 8
  %6 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %7 = call i32 @cpumask_empty(%struct.cpumask* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

11:                                               ; preds = %1
  %12 = load i32, i32* @drv_data, align 4
  %13 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %14 = call i32 @cpumask_first(%struct.cpumask* %13)
  %15 = call %struct.TYPE_10__* @per_cpu(i32 %12, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %46 [
    i32 129, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 0
  store i32 129, i32* %19, align 8
  %20 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %21 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  br label %47

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 0
  store i32 128, i32* %25, align 8
  %26 = load i32, i32* @drv_data, align 4
  %27 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %28 = call i32 @cpumask_first(%struct.cpumask* %27)
  %29 = call %struct.TYPE_10__* @per_cpu(i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %30, align 8
  store %struct.acpi_processor_performance* %31, %struct.acpi_processor_performance** %4, align 8
  %32 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  br label %47

46:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %56

47:                                               ; preds = %24, %18
  %48 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %49 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 2
  store %struct.cpumask* %48, %struct.cpumask** %49, align 8
  %50 = call i32 @drv_read(%struct.drv_cmd* %5)
  %51 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.drv_cmd, %struct.drv_cmd* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %46, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_empty(%struct.cpumask*) #1

declare dso_local %struct.TYPE_10__* @per_cpu(i32, i32) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @drv_read(%struct.drv_cmd*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
