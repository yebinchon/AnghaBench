; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_unregister_performance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_unregister_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor_performance = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@performance_mutex = common dso_local global i32 0, align 4
@processors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_processor_unregister_performance(%struct.acpi_processor_performance* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_processor_performance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor_performance* %0, %struct.acpi_processor_performance** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @performance_mutex)
  %7 = load i32, i32* @processors, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.acpi_processor* @per_cpu(i32 %7, i32 %8)
  store %struct.acpi_processor* %9, %struct.acpi_processor** %5, align 8
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %11 = icmp ne %struct.acpi_processor* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @mutex_unlock(i32* @performance_mutex)
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %28, align 8
  %29 = call i32 @mutex_unlock(i32* @performance_mutex)
  br label %30

30:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
