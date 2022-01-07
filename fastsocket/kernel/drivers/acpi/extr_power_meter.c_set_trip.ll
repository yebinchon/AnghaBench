; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_set_trip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_set_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.acpi_device = type { %struct.acpi_power_meter_resource* }
%struct.acpi_power_meter_resource = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_trip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_trip(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.acpi_device*, align 8
  %12 = alloca %struct.acpi_power_meter_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.acpi_device* @to_acpi_device(%struct.device* %17)
  store %struct.acpi_device* %18, %struct.acpi_device** %11, align 8
  %19 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 0
  %21 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %20, align 8
  store %struct.acpi_power_meter_resource* %21, %struct.acpi_power_meter_resource** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strict_strtoul(i8* %22, i32 10, i64* %14)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %4
  %29 = load i64, i64* %14, align 8
  %30 = udiv i64 %29, 1000
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ult i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %62

36:                                               ; preds = %28
  %37 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %12, align 8
  %38 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %12, align 8
  %42 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %45 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %43, i64 %48
  store i64 %40, i64* %49, align 8
  %50 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %12, align 8
  %51 = call i32 @set_acpi_trip(%struct.acpi_power_meter_resource* %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %12, align 8
  %53 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %5, align 4
  br label %62

59:                                               ; preds = %36
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %57, %33, %26
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_acpi_trip(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
