; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_pcibios_set_pcie_reset_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_pcibios_set_pcie_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pci_dn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_set_pcie_reset_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.pci_dn*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %8)
  store %struct.device_node* %9, %struct.device_node** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %6, align 8
  %11 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %10)
  store %struct.pci_dn* %11, %struct.pci_dn** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %22 [
    i32 130, label %13
    i32 129, label %16
    i32 128, label %19
  ]

13:                                               ; preds = %2
  %14 = load %struct.pci_dn*, %struct.pci_dn** %7, align 8
  %15 = call i32 @rtas_pci_slot_reset(%struct.pci_dn* %14, i32 0)
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.pci_dn*, %struct.pci_dn** %7, align 8
  %18 = call i32 @rtas_pci_slot_reset(%struct.pci_dn* %17, i32 1)
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.pci_dn*, %struct.pci_dn** %7, align 8
  %21 = call i32 @rtas_pci_slot_reset(%struct.pci_dn* %20, i32 3)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %19, %16, %13
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @rtas_pci_slot_reset(%struct.pci_dn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
