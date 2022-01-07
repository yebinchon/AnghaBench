; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci.c_bcma_pcicore_polarity_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci.c_bcma_pcicore_polarity_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { i32 }

@BCMA_CORE_PCI_PLP_STATUSREG = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_PLP_POLARITYINV_STAT = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_SERDES_RX_CTRL_FORCE = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_SERDES_RX_CTRL_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_pci*)* @bcma_pcicore_polarity_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_pcicore_polarity_workaround(%struct.bcma_drv_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %3, align 8
  %5 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %3, align 8
  %6 = load i32, i32* @BCMA_CORE_PCI_PLP_STATUSREG, align 4
  %7 = call i32 @bcma_pcie_read(%struct.bcma_drv_pci* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BCMA_CORE_PCI_PLP_POLARITYINV_STAT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @BCMA_CORE_PCI_SERDES_RX_CTRL_FORCE, align 4
  %14 = load i32, i32* @BCMA_CORE_PCI_SERDES_RX_CTRL_POLARITY, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @BCMA_CORE_PCI_SERDES_RX_CTRL_FORCE, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @bcma_pcie_read(%struct.bcma_drv_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
