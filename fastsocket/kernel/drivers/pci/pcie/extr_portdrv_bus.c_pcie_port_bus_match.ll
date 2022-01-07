; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_bus.c_pcie_port_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_bus.c_pcie_port_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.device_driver = type { i32* }
%struct.pcie_device = type { i64, i32 }
%struct.pcie_port_service_driver = type { i64, i64 }

@pcie_port_bus_type = common dso_local global i32 0, align 4
@PCIE_ANY_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @pcie_port_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_port_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.pcie_device*, align 8
  %7 = alloca %struct.pcie_port_service_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %9 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @pcie_port_bus_type
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @pcie_port_bus_type
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.pcie_device* @to_pcie_device(%struct.device* %19)
  store %struct.pcie_device* %20, %struct.pcie_device** %6, align 8
  %21 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %22 = call %struct.pcie_port_service_driver* @to_service_driver(%struct.device_driver* %21)
  store %struct.pcie_port_service_driver* %22, %struct.pcie_port_service_driver** %7, align 8
  %23 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %7, align 8
  %24 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pcie_device*, %struct.pcie_device** %6, align 8
  %27 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %18
  %32 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %7, align 8
  %33 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCIE_ANY_PORT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %7, align 8
  %39 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pcie_device*, %struct.pcie_device** %6, align 8
  %42 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @pci_pcie_type(i32 %43)
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %37, %31
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %30, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.pcie_device* @to_pcie_device(%struct.device*) #1

declare dso_local %struct.pcie_port_service_driver* @to_service_driver(%struct.device_driver*) #1

declare dso_local i64 @pci_pcie_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
