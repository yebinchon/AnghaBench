; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_driver = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@acpi_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@acpi_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_register_driver(%struct.acpi_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_driver* %0, %struct.acpi_driver** %3, align 8
  %5 = load i64, i64* @acpi_disabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32* @acpi_bus_type, i32** %19, align 8
  %20 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.acpi_driver*, %struct.acpi_driver** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %26, i32 0, i32 0
  %28 = call i32 @driver_register(%struct.TYPE_2__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %10, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
