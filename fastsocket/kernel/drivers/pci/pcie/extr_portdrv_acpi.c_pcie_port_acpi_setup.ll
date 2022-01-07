; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_acpi.c_pcie_port_acpi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_acpi.c_pcie_port_acpi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.acpi_pci_root = type { i32 }

@acpi_pci_disabled = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_VC = common dso_local global i32 0, align 4
@OSC_PCI_EXPRESS_NATIVE_HP_CONTROL = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@OSC_PCI_EXPRESS_PME_CONTROL = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@OSC_PCI_EXPRESS_AER_CONTROL = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_port_acpi_setup(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.acpi_pci_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @acpi_pci_disabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @acpi_find_root_bridge_handle(%struct.pci_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.acpi_pci_root* @acpi_pci_find_root(i32 %21)
  store %struct.acpi_pci_root* %22, %struct.acpi_pci_root** %6, align 8
  %23 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %6, align 8
  %24 = icmp ne %struct.acpi_pci_root* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %6, align 8
  %30 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @PCIE_PORT_SERVICE_VC, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @OSC_PCI_EXPRESS_NATIVE_HP_CONTROL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %28
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @OSC_PCI_EXPRESS_PME_CONTROL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @OSC_PCI_EXPRESS_AER_CONTROL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %53
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %25, %17, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @acpi_find_root_bridge_handle(%struct.pci_dev*) #1

declare dso_local %struct.acpi_pci_root* @acpi_pci_find_root(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
