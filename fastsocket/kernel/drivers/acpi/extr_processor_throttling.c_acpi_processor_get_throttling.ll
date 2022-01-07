; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.acpi_processor.0*)* }
%struct.acpi_processor.0 = type opaque
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_throttling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_throttling(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = icmp ne %struct.acpi_processor* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %11
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @alloc_cpumask_var(i32* %4, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @cpumask_copy(i32 %28, i32* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %33 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cpumask_of(i32 %35)
  %37 = call i32 @set_cpus_allowed_ptr(%struct.TYPE_7__* %32, i32 %36)
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.acpi_processor.0*)*, i32 (%struct.acpi_processor.0*)** %40, align 8
  %42 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %43 = bitcast %struct.acpi_processor* %42 to %struct.acpi_processor.0*
  %44 = call i32 %41(%struct.acpi_processor.0* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @set_cpus_allowed_ptr(%struct.TYPE_7__* %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @free_cpumask_var(i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %27, %24, %17, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32*) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
