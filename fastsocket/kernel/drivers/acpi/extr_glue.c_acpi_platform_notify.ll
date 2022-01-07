; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_glue.c_acpi_platform_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_glue.c_acpi_platform_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_bus_type = type { i32 (%struct.device*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No ACPI bus support for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't get handler for %s\0A\00", align 1
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_platform_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_platform_notify(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.acpi_bus_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i32 @acpi_find_bridge_device(%struct.device* %18, i32* %4)
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.acpi_bus_type* @acpi_get_bus_type(i32 %23)
  store %struct.acpi_bus_type* %24, %struct.acpi_bus_type** %3, align 8
  %25 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %26 = icmp ne %struct.acpi_bus_type* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @dev_name(%struct.device* %28)
  %30 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %34, i32 0, i32 0
  %36 = load i32 (%struct.device*, i32*)*, i32 (%struct.device*, i32*)** %35, align 8
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = call i32 %36(%struct.device* %37, i32* %4)
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %2, align 8
  %42 = call i32 @dev_name(%struct.device* %41)
  %43 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %27, %17
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @acpi_bind_one(%struct.device* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @acpi_find_bridge_device(%struct.device*, i32*) #1

declare dso_local %struct.acpi_bus_type* @acpi_get_bus_type(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @acpi_bind_one(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
