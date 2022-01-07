; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_memory_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_menlow.c_intel_menlow_memory_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, %struct.thermal_cooling_device*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.thermal_cooling_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MEMORY_GET_BANDWIDTH = common dso_local global i32 0, align 4
@MEMORY_SET_BANDWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Memory controller\00", align 1
@memory_cooling_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @intel_menlow_memory_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_menlow_memory_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thermal_cooling_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = icmp ne %struct.acpi_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MEMORY_GET_BANDWIDTH, align 4
  %21 = call i32 @acpi_get_handle(i32 %19, i32 %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %75

26:                                               ; preds = %16
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MEMORY_SET_BANDWIDTH, align 4
  %31 = call i32 @acpi_get_handle(i32 %29, i32 %30, i32* %6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %75

36:                                               ; preds = %26
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.acpi_device* %37, i32* @memory_cooling_ops)
  store %struct.thermal_cooling_device* %38, %struct.thermal_cooling_device** %7, align 8
  %39 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %7, align 8
  %40 = call i64 @IS_ERR(%struct.thermal_cooling_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %43)
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %7, align 8
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 1
  store %struct.thermal_cooling_device* %46, %struct.thermal_cooling_device** %48, align 8
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %7, align 8
  %53 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @sysfs_create_link(i32* %51, i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %77

59:                                               ; preds = %45
  %60 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %7, align 8
  %61 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_create_link(i32* %62, i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @sysfs_remove_link(i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %77

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %42, %35, %25
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %69, %58
  %78 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %7, align 8
  %79 = call i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %75, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @acpi_get_handle(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, %struct.acpi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
