; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_acpi_pad_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_acpi_pad_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@ACPI_PROCESSOR_AGGREGATOR_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_AGGREGATOR_CLASS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_pad_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_pad_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pad_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = call i32 @acpi_device_name(%struct.acpi_device* %5)
  %7 = load i32, i32* @ACPI_PROCESSOR_AGGREGATOR_DEVICE_NAME, align 4
  %8 = call i32 @strcpy(i32 %6, i32 %7)
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call i32 @acpi_device_class(%struct.acpi_device* %9)
  %11 = load i32, i32* @ACPI_PROCESSOR_AGGREGATOR_CLASS, align 4
  %12 = call i32 @strcpy(i32 %10, i32 %11)
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = call i64 @acpi_pad_add_sysfs(%struct.acpi_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %24 = load i32, i32* @acpi_pad_notify, align 4
  %25 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %26 = call i32 @acpi_install_notify_handler(i32 %22, i32 %23, i32 %24, %struct.acpi_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = call i32 @acpi_pad_remove_sysfs(%struct.acpi_device* %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i64 @acpi_pad_add_sysfs(%struct.acpi_device*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.acpi_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_pad_remove_sysfs(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
