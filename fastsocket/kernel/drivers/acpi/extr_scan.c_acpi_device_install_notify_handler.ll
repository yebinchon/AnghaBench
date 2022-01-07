; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_install_notify_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_install_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i64, i32 }

@ACPI_BUS_TYPE_POWER_BUTTON = common dso_local global i64 0, align 8
@ACPI_EVENT_POWER_BUTTON = common dso_local global i32 0, align 4
@acpi_device_notify_fixed = common dso_local global i32 0, align 4
@ACPI_BUS_TYPE_SLEEP_BUTTON = common dso_local global i64 0, align 8
@ACPI_EVENT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_device_notify = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_device_install_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_install_notify_handler(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACPI_BUS_TYPE_POWER_BUTTON, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @ACPI_EVENT_POWER_BUTTON, align 4
  %12 = load i32, i32* @acpi_device_notify_fixed, align 4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = call i32 @acpi_install_fixed_event_handler(i32 %11, i32 %12, %struct.acpi_device* %13)
  store i32 %14, i32* %4, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_BUS_TYPE_SLEEP_BUTTON, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @ACPI_EVENT_SLEEP_BUTTON, align 4
  %23 = load i32, i32* @acpi_device_notify_fixed, align 4
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call i32 @acpi_install_fixed_event_handler(i32 %22, i32 %23, %struct.acpi_device* %24)
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %31 = load i32, i32* @acpi_device_notify, align 4
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = call i32 @acpi_install_notify_handler(i32 %29, i32 %30, i32 %31, %struct.acpi_device* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %21
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @acpi_install_fixed_event_handler(i32, i32, %struct.acpi_device*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.acpi_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
