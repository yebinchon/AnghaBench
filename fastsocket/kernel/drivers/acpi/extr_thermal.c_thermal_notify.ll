; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_thermal_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_thermal_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@ACPI_THERMAL_NOTIFY_CRITICAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_HOT = common dso_local global i32 0, align 4
@ACPI_THERMAL_NOTIFY_HOT = common dso_local global i32 0, align 4
@nocrt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @thermal_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_notify(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_thermal*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.acpi_thermal*, %struct.acpi_thermal** %11, align 8
  store %struct.acpi_thermal* %12, %struct.acpi_thermal** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ACPI_THERMAL_NOTIFY_CRITICAL, align 4
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @THERMAL_TRIP_HOT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @ACPI_THERMAL_NOTIFY_HOT, align 4
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %9, align 8
  %28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @acpi_bus_generate_proc_event(%struct.TYPE_4__* %29, i32 %30, i32 1)
  %32 = load %struct.acpi_thermal*, %struct.acpi_thermal** %9, align 8
  %33 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_thermal*, %struct.acpi_thermal** %9, align 8
  %39 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @dev_name(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @acpi_bus_generate_netlink_event(i32 %37, i32 %42, i32 %43, i32 1)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i64, i64* @nocrt, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %53

52:                                               ; preds = %48, %26
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
