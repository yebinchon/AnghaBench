; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_pcie_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci_host.c_bcma_pcie_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { i32 }

@BCMA_CORE_PCI_CONFIG_ADDR = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_CONFIG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pci*, i32, i32)* @bcma_pcie_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_pcie_write_config(%struct.bcma_drv_pci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcma_drv_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %8 = load i32, i32* @BCMA_CORE_PCI_CONFIG_ADDR, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %7, i32 %8, i32 %9)
  %11 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %12 = load i32, i32* @BCMA_CORE_PCI_CONFIG_ADDR, align 4
  %13 = call i32 @pcicore_read32(%struct.bcma_drv_pci* %11, i32 %12)
  %14 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %15 = load i32, i32* @BCMA_CORE_PCI_CONFIG_DATA, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @pcicore_write32(%struct.bcma_drv_pci*, i32, i32) #1

declare dso_local i32 @pcicore_read32(%struct.bcma_drv_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
