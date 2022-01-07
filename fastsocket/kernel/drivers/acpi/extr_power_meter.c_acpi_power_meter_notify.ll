; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_acpi_power_meter_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power_meter.c_acpi_power_meter_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_power_meter_resource = type { i32 }

@POWER_AVERAGE_NAME = common dso_local global i32 0, align 4
@POWER_CAP_NAME = common dso_local global i32 0, align 4
@POWER_AVG_INTERVAL_NAME = common dso_local global i32 0, align 4
@POWER_ALARM_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Capping in progress.\0A\00", align 1
@ACPI_POWER_METER_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_power_meter_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_power_meter_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_power_meter_resource*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = call %struct.acpi_power_meter_resource* @acpi_driver_data(%struct.acpi_device* %10)
  %12 = icmp ne %struct.acpi_power_meter_resource* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  br label %79

14:                                               ; preds = %9
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = call %struct.acpi_power_meter_resource* @acpi_driver_data(%struct.acpi_device* %15)
  store %struct.acpi_power_meter_resource* %16, %struct.acpi_power_meter_resource** %5, align 8
  %17 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %67 [
    i32 130, label %21
    i32 128, label %34
    i32 132, label %42
    i32 129, label %50
    i32 131, label %58
  ]

21:                                               ; preds = %14
  %22 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %23 = call i32 @free_capabilities(%struct.acpi_power_meter_resource* %22)
  %24 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %25 = call i32 @read_capabilities(%struct.acpi_power_meter_resource* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %69

29:                                               ; preds = %21
  %30 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %31 = call i32 @remove_attrs(%struct.acpi_power_meter_resource* %30)
  %32 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %33 = call i32 @setup_attrs(%struct.acpi_power_meter_resource* %32)
  br label %69

34:                                               ; preds = %14
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* @POWER_AVERAGE_NAME, align 4
  %39 = call i32 @sysfs_notify(i32* %37, i32* null, i32 %38)
  %40 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %41 = call i32 @update_meter(%struct.acpi_power_meter_resource* %40)
  br label %69

42:                                               ; preds = %14
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* @POWER_CAP_NAME, align 4
  %47 = call i32 @sysfs_notify(i32* %45, i32* null, i32 %46)
  %48 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %49 = call i32 @update_cap(%struct.acpi_power_meter_resource* %48)
  br label %69

50:                                               ; preds = %14
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* @POWER_AVG_INTERVAL_NAME, align 4
  %55 = call i32 @sysfs_notify(i32* %53, i32* null, i32 %54)
  %56 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %57 = call i32 @update_avg_interval(%struct.acpi_power_meter_resource* %56)
  br label %69

58:                                               ; preds = %14
  %59 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* @POWER_ALARM_NAME, align 4
  %63 = call i32 @sysfs_notify(i32* %61, i32* null, i32 %62)
  %64 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %65 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %64, i32 0, i32 0
  %66 = call i32 @dev_info(%struct.TYPE_3__* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %69

67:                                               ; preds = %14
  %68 = call i32 (...) @BUG()
  br label %69

69:                                               ; preds = %67, %58, %50, %42, %34, %29, %28
  %70 = load %struct.acpi_power_meter_resource*, %struct.acpi_power_meter_resource** %5, align 8
  %71 = getelementptr inbounds %struct.acpi_power_meter_resource, %struct.acpi_power_meter_resource* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* @ACPI_POWER_METER_CLASS, align 4
  %74 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %74, i32 0, i32 0
  %76 = call i32 @dev_name(%struct.TYPE_3__* %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @acpi_bus_generate_netlink_event(i32 %73, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %69, %13
  ret void
}

declare dso_local %struct.acpi_power_meter_resource* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_capabilities(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @read_capabilities(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @remove_attrs(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @setup_attrs(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i32) #1

declare dso_local i32 @update_meter(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @update_cap(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @update_avg_interval(%struct.acpi_power_meter_resource*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
