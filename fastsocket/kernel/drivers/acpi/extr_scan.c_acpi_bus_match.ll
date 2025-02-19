; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @acpi_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.acpi_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_driver* %1, %struct.device_driver** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.acpi_device* @to_acpi_device(%struct.device* %7)
  store %struct.acpi_device* %8, %struct.acpi_device** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %10 = call %struct.acpi_driver* @to_acpi_driver(%struct.device_driver* %9)
  store %struct.acpi_driver* %10, %struct.acpi_driver** %6, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %12 = load %struct.acpi_driver*, %struct.acpi_driver** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @acpi_match_device_ids(%struct.acpi_device* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local %struct.acpi_driver* @to_acpi_driver(%struct.device_driver*) #1

declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
