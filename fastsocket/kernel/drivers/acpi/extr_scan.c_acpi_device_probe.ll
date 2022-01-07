; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { %struct.TYPE_5__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.acpi_driver = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.acpi_device.0*, i32)*, i64 }
%struct.acpi_device.0 = type opaque

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Found driver [%s] for device [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.acpi_device* @to_acpi_device(%struct.device* %7)
  store %struct.acpi_device* %8, %struct.acpi_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.acpi_driver* @to_acpi_driver(i32 %11)
  store %struct.acpi_driver* %12, %struct.acpi_driver** %5, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %14 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %15 = call i32 @acpi_bus_driver_init(%struct.acpi_device* %13, %struct.acpi_driver* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %1
  %19 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %26 = call i32 @acpi_start_single_object(%struct.acpi_device* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %35 = call i32 @acpi_device_install_notify_handler(%struct.acpi_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.acpi_device.0*, i32)*, i32 (%struct.acpi_device.0*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.acpi_device.0*, i32)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %46 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.acpi_device.0*, i32)*, i32 (%struct.acpi_device.0*, i32)** %47, align 8
  %49 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %50 = bitcast %struct.acpi_device* %49 to %struct.acpi_device.0*
  %51 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %48(%struct.acpi_device.0* %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %38
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %72

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* @ACPI_DB_INFO, align 4
  %60 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %61 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ACPI_DEBUG_PRINT(i32 %66)
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @get_device(%struct.device* %68)
  br label %70

70:                                               ; preds = %58, %1
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %55
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local %struct.acpi_driver* @to_acpi_driver(i32) #1

declare dso_local i32 @acpi_bus_driver_init(%struct.acpi_device*, %struct.acpi_driver*) #1

declare dso_local i32 @acpi_start_single_object(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_install_notify_handler(%struct.acpi_device*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
