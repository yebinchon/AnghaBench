; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_register_ro_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_register_ro_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_power_meter_resource = type { i64, %struct.sensor_device_attribute*, %struct.TYPE_4__* }
%struct.sensor_device_attribute = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ro_sensor_template = type { i32, i32, i32* }

@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_power_meter_resource*, %struct.ro_sensor_template*)* @register_ro_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_ro_attrs(%struct.acpi_power_meter_resource* %0, %struct.ro_sensor_template* %1) #0 {
  %3 = alloca %struct.acpi_power_meter_resource*, align 8
  %4 = alloca %struct.ro_sensor_template*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sensor_device_attribute*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_power_meter_resource* %0, %struct.acpi_power_meter_resource** %3, align 8
  store %struct.ro_sensor_template* %1, %struct.ro_sensor_template** %4, align 8
  %8 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %12, i32 0, i32 1
  %14 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %13, align 8
  %15 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %14, i64 %17
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %59, %2
  %20 = load %struct.ro_sensor_template*, %struct.ro_sensor_template** %4, align 8
  %21 = getelementptr inbounds %struct.ro_sensor_template, %struct.ro_sensor_template* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load %struct.ro_sensor_template*, %struct.ro_sensor_template** %4, align 8
  %26 = getelementptr inbounds %struct.ro_sensor_template, %struct.ro_sensor_template* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32* %27, i32** %31, align 8
  %32 = load i32, i32* @S_IRUGO, align 4
  %33 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load %struct.ro_sensor_template*, %struct.ro_sensor_template** %4, align 8
  %38 = getelementptr inbounds %struct.ro_sensor_template, %struct.ro_sensor_template* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.ro_sensor_template*, %struct.ro_sensor_template** %4, align 8
  %44 = getelementptr inbounds %struct.ro_sensor_template, %struct.ro_sensor_template* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %50 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %49, i32 0, i32 0
  %51 = call i32 @device_create_file(%struct.device* %48, %struct.TYPE_6__* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %24
  %55 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %56 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %69

59:                                               ; preds = %24
  %60 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %6, align 8
  %61 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %60, i32 1
  store %struct.sensor_device_attribute* %61, %struct.sensor_device_attribute** %6, align 8
  %62 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.ro_sensor_template*, %struct.ro_sensor_template** %4, align 8
  %67 = getelementptr inbounds %struct.ro_sensor_template, %struct.ro_sensor_template* %66, i32 1
  store %struct.ro_sensor_template* %67, %struct.ro_sensor_template** %4, align 8
  br label %19

68:                                               ; preds = %19
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
