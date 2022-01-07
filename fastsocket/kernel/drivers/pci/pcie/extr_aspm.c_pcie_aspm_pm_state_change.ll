; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_aspm_pm_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_aspm_pm_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pcie_link_state* }
%struct.pcie_link_state = type { i32 }

@aspm_disabled = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_aspm_pm_state_change(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  store %struct.pcie_link_state* %6, %struct.pcie_link_state** %3, align 8
  %7 = load i64, i64* @aspm_disabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_is_pcie(%struct.pci_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %15 = icmp ne %struct.pcie_link_state* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %9, %1
  br label %39

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i64 @pci_pcie_type(%struct.pci_dev* %18)
  %20 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i64 @pci_pcie_type(%struct.pci_dev* %23)
  %25 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %39

28:                                               ; preds = %22, %17
  %29 = call i32 @down_read(i32* @pci_bus_sem)
  %30 = call i32 @mutex_lock(i32* @aspm_lock)
  %31 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %32 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pcie_update_aspm_capable(i32 %33)
  %35 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %36 = call i32 @pcie_config_aspm_path(%struct.pcie_link_state* %35)
  %37 = call i32 @mutex_unlock(i32* @aspm_lock)
  %38 = call i32 @up_read(i32* @pci_bus_sem)
  br label %39

39:                                               ; preds = %28, %27, %16
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcie_update_aspm_capable(i32) #1

declare dso_local i32 @pcie_config_aspm_path(%struct.pcie_link_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
