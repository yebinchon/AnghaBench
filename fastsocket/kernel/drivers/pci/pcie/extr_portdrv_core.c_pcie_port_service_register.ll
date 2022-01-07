; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_service_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_service_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port_service_driver = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32* }

@pcie_ports_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@pcie_port_bus_type = common dso_local global i32 0, align 4
@pcie_port_probe_service = common dso_local global i32 0, align 4
@pcie_port_remove_service = common dso_local global i32 0, align 4
@pcie_port_shutdown_service = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_port_service_register(%struct.pcie_port_service_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_port_service_driver*, align 8
  store %struct.pcie_port_service_driver* %0, %struct.pcie_port_service_driver** %3, align 8
  %4 = load i64, i64* @pcie_ports_disabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %11 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %15 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %18 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32* @pcie_port_bus_type, i32** %19, align 8
  %20 = load i32, i32* @pcie_port_probe_service, align 4
  %21 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %22 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @pcie_port_remove_service, align 4
  %25 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %26 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @pcie_port_shutdown_service, align 4
  %29 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %30 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %3, align 8
  %33 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %32, i32 0, i32 0
  %34 = call i32 @driver_register(%struct.TYPE_2__* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %9, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
