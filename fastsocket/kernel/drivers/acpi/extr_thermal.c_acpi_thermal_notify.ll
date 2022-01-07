; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_thermal = type { i32 }

@ACPI_TRIPS_REFRESH_THRESHOLDS = common dso_local global i32 0, align 4
@ACPI_TRIPS_REFRESH_DEVICES = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_thermal_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_thermal_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_thermal*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.acpi_thermal* @acpi_driver_data(%struct.acpi_device* %6)
  store %struct.acpi_thermal* %7, %struct.acpi_thermal** %5, align 8
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %9 = icmp ne %struct.acpi_thermal* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %52 [
    i32 129, label %13
    i32 128, label %16
    i32 130, label %34
  ]

13:                                               ; preds = %11
  %14 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %15 = call i32 @acpi_thermal_check(%struct.acpi_thermal* %14)
  br label %56

16:                                               ; preds = %11
  %17 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %18 = load i32, i32* @ACPI_TRIPS_REFRESH_THRESHOLDS, align 4
  %19 = call i32 @acpi_thermal_trips_update(%struct.acpi_thermal* %17, i32 %18)
  %20 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %21 = call i32 @acpi_thermal_check(%struct.acpi_thermal* %20)
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %22, i32 %23, i32 0)
  %25 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 0
  %31 = call i32 @dev_name(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @acpi_bus_generate_netlink_event(i32 %28, i32 %31, i32 %32, i32 0)
  br label %56

34:                                               ; preds = %11
  %35 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %36 = load i32, i32* @ACPI_TRIPS_REFRESH_DEVICES, align 4
  %37 = call i32 @acpi_thermal_trips_update(%struct.acpi_thermal* %35, i32 %36)
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %39 = call i32 @acpi_thermal_check(%struct.acpi_thermal* %38)
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @acpi_bus_generate_proc_event(%struct.acpi_device* %40, i32 %41, i32 0)
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = call i32 @dev_name(i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @acpi_bus_generate_netlink_event(i32 %46, i32 %49, i32 %50, i32 0)
  br label %56

52:                                               ; preds = %11
  %53 = load i32, i32* @ACPI_DB_INFO, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 %54)
  br label %56

56:                                               ; preds = %10, %52, %34, %16, %13
  ret void
}

declare dso_local %struct.acpi_thermal* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_thermal_check(%struct.acpi_thermal*) #1

declare dso_local i32 @acpi_thermal_trips_update(%struct.acpi_thermal*, i32) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
