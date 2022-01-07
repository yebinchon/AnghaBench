; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_unmask_bad_dllp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_unmask_bad_dllp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_COR_BAD_DLLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @pcie_unmask_bad_dllp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_unmask_bad_dllp(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  %6 = load %struct.controller*, %struct.controller** %2, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %13 = call i32 @pci_find_ext_capability(%struct.pci_dev* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i64 %22, i32* %4)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PCI_ERR_COR_BAD_DLLP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %41

29:                                               ; preds = %17
  %30 = load i32, i32* @PCI_ERR_COR_BAD_DLLP, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pci_write_config_dword(%struct.pci_dev* %34, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %28, %16
  ret void
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
