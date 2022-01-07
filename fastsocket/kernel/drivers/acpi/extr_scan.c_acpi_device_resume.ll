; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { %struct.acpi_driver* }
%struct.acpi_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.acpi_device.0*)* }
%struct.acpi_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.acpi_device* @to_acpi_device(%struct.device* %6)
  store %struct.acpi_device* %7, %struct.acpi_device** %4, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = load %struct.acpi_driver*, %struct.acpi_driver** %9, align 8
  store %struct.acpi_driver* %10, %struct.acpi_driver** %5, align 8
  %11 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %12 = icmp ne %struct.acpi_driver* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.acpi_device.0*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %22, align 8
  %24 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %25 = bitcast %struct.acpi_device* %24 to %struct.acpi_device.0*
  %26 = call i32 %23(%struct.acpi_device.0* %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
