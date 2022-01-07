; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_ppc_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_ppc_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CPUFREQ_START = common dso_local global i64 0, align 8
@ignore_ppc = common dso_local global i64 0, align 8
@CPUFREQ_INCOMPATIBLE = common dso_local global i64 0, align 8
@performance_mutex = common dso_local global i32 0, align 4
@processors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @acpi_processor_ppc_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_ppc_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpufreq_policy*, align 8
  %9 = alloca %struct.acpi_processor*, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.cpufreq_policy*
  store %struct.cpufreq_policy* %12, %struct.cpufreq_policy** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @CPUFREQ_START, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* @ignore_ppc, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 0, i64* @ignore_ppc, align 8
  store i32 0, i32* %4, align 4
  br label %73

20:                                               ; preds = %16, %3
  %21 = load i64, i64* @ignore_ppc, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %73

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CPUFREQ_INCOMPATIBLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %73

29:                                               ; preds = %24
  %30 = call i32 @mutex_lock(i32* @performance_mutex)
  %31 = load i32, i32* @processors, align 4
  %32 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.acpi_processor* @per_cpu(i32 %31, i32 %34)
  store %struct.acpi_processor* %35, %struct.acpi_processor** %9, align 8
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %37 = icmp ne %struct.acpi_processor* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %40 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %29
  br label %71

44:                                               ; preds = %38
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %46 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp uge i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %71

57:                                               ; preds = %44
  %58 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %8, align 8
  %59 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %60 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %58, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %57, %56, %43
  %72 = call i32 @mutex_unlock(i32* @performance_mutex)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %28, %23, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
