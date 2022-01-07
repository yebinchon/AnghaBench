; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_disable_rootport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv.c_aer_disable_rootport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_rpc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_COMMAND = common dso_local global i64 0, align 8
@ROOT_PORT_INTR_ON_MESG_MASK = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aer_rpc*)* @aer_disable_rootport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_disable_rootport(%struct.aer_rpc* %0) #0 {
  %2 = alloca %struct.aer_rpc*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aer_rpc* %0, %struct.aer_rpc** %2, align 8
  %6 = load %struct.aer_rpc*, %struct.aer_rpc** %2, align 8
  %7 = getelementptr inbounds %struct.aer_rpc, %struct.aer_rpc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @set_downstream_devices_error_reporting(%struct.pci_dev* %11, i32 0)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %15 = call i32 @pci_find_ext_capability(%struct.pci_dev* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i64 %20, i32* %4)
  %22 = load i32, i32* @ROOT_PORT_INTR_ON_MESG_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pci_write_config_dword(%struct.pci_dev* %26, i64 %30, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @pci_read_config_dword(%struct.pci_dev* %33, i64 %37, i32* %4)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pci_write_config_dword(%struct.pci_dev* %39, i64 %43, i32 %44)
  ret void
}

declare dso_local i32 @set_downstream_devices_error_reporting(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
