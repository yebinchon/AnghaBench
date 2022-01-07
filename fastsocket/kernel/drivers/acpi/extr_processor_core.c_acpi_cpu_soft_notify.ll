; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_cpu_soft_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_cpu_soft_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@processors = common dso_local global i32 0, align 4
@CPU_ONLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Will online and init hotplugged CPU: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to start CPU: %d\0A\00", align 1
@CPU_DEAD = common dso_local global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @acpi_cpu_soft_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpu_soft_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_processor*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @processors, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.acpi_processor* @per_cpu(i32 %12, i32 %13)
  store %struct.acpi_processor* %14, %struct.acpi_processor** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CPU_ONLINE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %20 = icmp ne %struct.acpi_processor* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %23 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %29 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %33 = call i32 @acpi_processor_start(%struct.acpi_processor* %32)
  %34 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %35 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WARN(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %51

41:                                               ; preds = %21
  %42 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %43 = call i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor* %42)
  %44 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %45 = call i32 @acpi_processor_cst_has_changed(%struct.acpi_processor* %44)
  %46 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %46, i64 %47)
  %49 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %50 = call i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %49)
  br label %51

51:                                               ; preds = %41, %27
  br label %52

52:                                               ; preds = %51, %18, %3
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @CPU_DEAD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %58 = icmp ne %struct.acpi_processor* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %56, %52
  %64 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %64
}

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @acpi_processor_start(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_cst_has_changed(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_reevaluate_tstate(%struct.acpi_processor*, i64) #1

declare dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
