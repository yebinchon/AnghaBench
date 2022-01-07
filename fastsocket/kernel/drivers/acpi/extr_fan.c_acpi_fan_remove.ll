; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_fan.c_acpi_fan_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_fan.c_acpi_fan_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.thermal_cooling_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_fan_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fan_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thermal_cooling_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = call %struct.thermal_cooling_device* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.thermal_cooling_device* %8, %struct.thermal_cooling_device** %6, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %13 = icmp ne %struct.thermal_cooling_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %19 = call i32 @acpi_fan_remove_fs(%struct.acpi_device* %18)
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @sysfs_remove_link(i32* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %25 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_remove_link(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %29 = call i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.thermal_cooling_device* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_fan_remove_fs(%struct.acpi_device*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
