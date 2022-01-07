; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_get_aspm_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_get_aspm_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aspm_register_info = type { i32, i32, i32, i32 }

@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_ASPMS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_L0SEL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_L1EL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aspm_register_info*)* @pcie_get_aspm_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_get_aspm_reg(%struct.pci_dev* %0, %struct.aspm_register_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aspm_register_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aspm_register_info* %1, %struct.aspm_register_info** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %9 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %7, i32 %8, i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PCI_EXP_LNKCAP_ASPMS, align 4
  %12 = and i32 %10, %11
  %13 = ashr i32 %12, 10
  %14 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %15 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PCI_EXP_LNKCAP_L0SEL, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 12
  %20 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %21 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCI_EXP_LNKCAP_L1EL, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 15
  %26 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %27 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %30 = call i32 @pcie_capability_read_word(%struct.pci_dev* %28, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCI_EXP_LNKCTL_ASPMC, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.aspm_register_info*, %struct.aspm_register_info** %4, align 8
  %35 = getelementptr inbounds %struct.aspm_register_info, %struct.aspm_register_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
