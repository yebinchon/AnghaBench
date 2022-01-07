; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci.c_bcma_pcie_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_pci.c_bcma_pcie_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BCMA_CORE_PCI_MDIOCTL_PREAM_EN = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIOCTL_DIVISOR_VAL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_CONTROL = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEV_ADDR = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_REGADDR_SHF = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF_OLD = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_REGADDR_SHF_OLD = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_START = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_READ = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIODATA_TA = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIO_DATA = common dso_local global i32 0, align 4
@BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bcma_drv_pci*, i32, i32)* @bcma_pcie_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bcma_pcie_mdio_read(%struct.bcma_drv_pci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcma_drv_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcma_drv_pci* %0, %struct.bcma_drv_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %11 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_PREAM_EN, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_DIVISOR_VAL, align 4
  %13 = load i32, i32* %9, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %9, align 4
  %15 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %16 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %15, i32 %16, i32 %17)
  %19 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %20 = getelementptr inbounds %struct.bcma_drv_pci, %struct.bcma_drv_pci* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 10
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  store i32 200, i32* %7, align 4
  %27 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bcma_pcie_mdio_set_phy(%struct.bcma_drv_pci* %27, i32 %28)
  %30 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEV_ADDR, align 4
  %31 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_REGADDR_SHF, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_DEVADDR_SHF_OLD, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_REGADDR_SHF_OLD, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %38, %26
  %48 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_START, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_READ, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @BCMA_CORE_PCI_MDIODATA_TA, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %56 = load i32, i32* @BCMA_CORE_PCI_MDIO_DATA, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %55, i32 %56, i32 %57)
  %59 = call i32 @udelay(i32 10)
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %80, %47
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %66 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %67 = call i8* @pcicore_read32(%struct.bcma_drv_pci* %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @BCMA_CORE_PCI_MDIOCTL_ACCESS_DONE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = call i32 @udelay(i32 10)
  %75 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %76 = load i32, i32* @BCMA_CORE_PCI_MDIO_DATA, align 4
  %77 = call i8* @pcicore_read32(%struct.bcma_drv_pci* %75, i32 %76)
  store i8* %77, i8** %8, align 8
  br label %83

78:                                               ; preds = %64
  %79 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %60

83:                                               ; preds = %73, %60
  %84 = load %struct.bcma_drv_pci*, %struct.bcma_drv_pci** %4, align 8
  %85 = load i32, i32* @BCMA_CORE_PCI_MDIO_CONTROL, align 4
  %86 = call i32 @pcicore_write32(%struct.bcma_drv_pci* %84, i32 %85, i32 0)
  %87 = load i8*, i8** %8, align 8
  ret i8* %87
}

declare dso_local i32 @pcicore_write32(%struct.bcma_drv_pci*, i32, i32) #1

declare dso_local i32 @bcma_pcie_mdio_set_phy(%struct.bcma_drv_pci*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @pcicore_read32(%struct.bcma_drv_pci*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
