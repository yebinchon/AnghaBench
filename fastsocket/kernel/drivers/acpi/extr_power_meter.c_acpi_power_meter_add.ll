; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_acpi_power_meter_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_acpi_power_meter_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.acpi_power_meter_resource* }
%struct.acpi_power_meter_resource = type { i32*, i32, i32, %struct.acpi_device*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_POWER_METER_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_POWER_METER_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_power_meter_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_power_meter_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_power_meter_resource*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %85

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.acpi_power_meter_resource* @kzalloc(i32 32, i32 %12)
  store %struct.acpi_power_meter_resource* %13, %struct.acpi_power_meter_resource** %5, align 8
  %14 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %15 = icmp ne %struct.acpi_power_meter_resource* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %11
  %20 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %23, i32 0, i32 3
  store %struct.acpi_device* %22, %struct.acpi_device** %24, align 8
  %25 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %29 = call i32 @acpi_device_name(%struct.acpi_device* %28)
  %30 = load i32, i32* @ACPI_POWER_METER_DEVICE_NAME, align 4
  %31 = call i32 @strcpy(i32 %29, i32 %30)
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = call i32 @acpi_device_class(%struct.acpi_device* %32)
  %34 = load i32, i32* @ACPI_POWER_METER_CLASS, align 4
  %35 = call i32 @strcpy(i32 %33, i32 %34)
  %36 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 1
  store %struct.acpi_power_meter_resource* %36, %struct.acpi_power_meter_resource** %38, align 8
  %39 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %40 = call i32 @free_capabilities(%struct.acpi_power_meter_resource* %39)
  %41 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %42 = call i32 @read_capabilities(%struct.acpi_power_meter_resource* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %19
  br label %80

46:                                               ; preds = %19
  %47 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 -1, i32* %50, align 4
  %51 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %56 = call i32 @setup_attrs(%struct.acpi_power_meter_resource* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %80

60:                                               ; preds = %46
  %61 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %61, i32 0, i32 0
  %63 = call i32 @hwmon_device_register(i32* %62)
  %64 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %67 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %73 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %83

77:                                               ; preds = %71
  %78 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %79 = call i32 @remove_attrs(%struct.acpi_power_meter_resource* %78)
  br label %80

80:                                               ; preds = %77, %59, %45
  %81 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %82 = call i32 @kfree(%struct.acpi_power_meter_resource* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %16, %8
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.acpi_power_meter_resource* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @free_capabilities(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @read_capabilities(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @setup_attrs(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @remove_attrs(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @kfree(%struct.acpi_power_meter_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
