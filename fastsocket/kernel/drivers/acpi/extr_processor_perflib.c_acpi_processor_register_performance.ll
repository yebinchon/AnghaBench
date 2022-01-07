; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_register_performance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_register_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor_performance = type { i32 }
%struct.acpi_processor = type { %struct.acpi_processor_performance* }

@acpi_processor_ppc_status = common dso_local global i32 0, align 4
@PPC_REGISTERED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@performance_mutex = common dso_local global i32 0, align 4
@processors = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_register_performance(%struct.acpi_processor_performance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_processor_performance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor_performance* %0, %struct.acpi_processor_performance** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @acpi_processor_ppc_status, align 4
  %8 = load i32, i32* @PPC_REGISTERED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = call i32 @mutex_lock(i32* @performance_mutex)
  %16 = load i32, i32* @processors, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.acpi_processor* @per_cpu(i32 %16, i32 %17)
  store %struct.acpi_processor* %18, %struct.acpi_processor** %6, align 8
  %19 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %20 = icmp ne %struct.acpi_processor* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = call i32 @mutex_unlock(i32* @performance_mutex)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %14
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 0
  %28 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %27, align 8
  %29 = icmp ne %struct.acpi_processor_performance* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @mutex_unlock(i32* @performance_mutex)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %25
  %35 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %4, align 8
  %36 = icmp ne %struct.acpi_processor_performance* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %4, align 8
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 0
  store %struct.acpi_processor_performance* %40, %struct.acpi_processor_performance** %42, align 8
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %44 = call i64 @acpi_processor_get_performance_info(%struct.acpi_processor* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %48 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %47, i32 0, i32 0
  store %struct.acpi_processor_performance* null, %struct.acpi_processor_performance** %48, align 8
  %49 = call i32 @mutex_unlock(i32* @performance_mutex)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %34
  %53 = call i32 @mutex_unlock(i32* @performance_mutex)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %46, %30, %21, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @acpi_processor_get_performance_info(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
