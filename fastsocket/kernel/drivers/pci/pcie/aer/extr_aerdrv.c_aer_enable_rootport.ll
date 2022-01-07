; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_enable_rootport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_enable_rootport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXP_DEVSTA = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL = common dso_local global i32 0, align 4
@SYSTEM_ERROR_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_ROOT_COMMAND = common dso_local global i64 0, align 8
@ROOT_PORT_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aer_rpc*)* @aer_enable_rootport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_enable_rootport(%struct.aer_rpc* %0) #0 {
  %2 = alloca %struct.aer_rpc*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aer_rpc* %0, %struct.aer_rpc** %2, align 8
  %7 = load %struct.aer_rpc*, %struct.aer_rpc** %2, align 8
  %8 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %14 = call i32 @pcie_capability_read_word(%struct.pci_dev* %12, i32 %13, i32* %5)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pcie_capability_write_word(%struct.pci_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @PCI_EXP_RTCTL, align 4
  %21 = load i32, i32* @SYSTEM_ERROR_INTR_ON_MESG_MASK, align 4
  %22 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %25 = call i32 @pci_find_ext_capability(%struct.pci_dev* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %26, i64 %30, i32* %6)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i64 %36, i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @pci_read_config_dword(%struct.pci_dev* %39, i64 %43, i32* %6)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pci_write_config_dword(%struct.pci_dev* %45, i64 %49, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @pci_read_config_dword(%struct.pci_dev* %52, i64 %56, i32* %6)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pci_write_config_dword(%struct.pci_dev* %58, i64 %62, i32 %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = call i32 @set_downstream_devices_error_reporting(%struct.pci_dev* %65, i32 1)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @pci_read_config_dword(%struct.pci_dev* %67, i64 %71, i32* %6)
  %73 = load i32, i32* @ROOT_PORT_INTR_ON_MESG_MASK, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @pci_write_config_dword(%struct.pci_dev* %76, i64 %80, i32 %81)
  ret void
}

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @set_downstream_devices_error_reporting(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
