; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_show_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_show_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.acpi_device = type { %struct.acpi_power_meter_resource* }
%struct.acpi_power_meter_resource = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_str(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.acpi_power_meter_resource*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.acpi_device* @to_acpi_device(%struct.device* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %8, align 8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %16, align 8
  store %struct.acpi_power_meter_resource* %17, %struct.acpi_power_meter_resource** %9, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 0, label %21
    i32 1, label %25
    i32 2, label %29
  ]

21:                                               ; preds = %3
  %22 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %9, align 8
  %23 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %9, align 8
  %27 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %9, align 8
  %31 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  br label %35

33:                                               ; preds = %3
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %29, %25, %21
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %37)
  ret i32 %38
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
