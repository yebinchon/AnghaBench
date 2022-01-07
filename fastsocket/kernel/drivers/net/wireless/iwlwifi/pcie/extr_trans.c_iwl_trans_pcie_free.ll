; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_free(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @synchronize_irq(i32 %10)
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %13 = call i32 @iwl_pcie_tx_free(%struct.iwl_trans* %12)
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %15 = call i32 @iwl_pcie_rx_free(%struct.iwl_trans* %14)
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.iwl_trans* %21)
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %24 = call i32 @iwl_pcie_free_ict(%struct.iwl_trans* %23)
  %25 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @pci_disable_msi(%struct.TYPE_4__* %27)
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @pci_release_regions(%struct.TYPE_4__* %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @pci_disable_device(%struct.TYPE_4__* %39)
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kmem_cache_destroy(i32 %43)
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %46 = call i32 @kfree(%struct.iwl_trans* %45)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @iwl_pcie_tx_free(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_free(%struct.iwl_trans*) #1

declare dso_local i32 @free_irq(i32, %struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_free_ict(%struct.iwl_trans*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_4__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_4__*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
