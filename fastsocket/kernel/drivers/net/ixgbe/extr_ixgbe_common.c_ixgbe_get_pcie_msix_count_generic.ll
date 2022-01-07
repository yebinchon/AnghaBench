; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_pcie_msix_count_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_pcie_msix_count_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__, %struct.ixgbe_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_adapter = type { i32 }

@IXGBE_PCIE_MSIX_82598_CAPS = common dso_local global i32 0, align 4
@IXGBE_MAX_MSIX_VECTORS_82598 = common dso_local global i32 0, align 4
@IXGBE_PCIE_MSIX_82599_CAPS = common dso_local global i32 0, align 4
@IXGBE_MAX_MSIX_VECTORS_82599 = common dso_local global i32 0, align 4
@IXGBE_PCIE_MSIX_TBL_SZ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %4, align 8
  store i32 1, i32* %5, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %21 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %18
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @IXGBE_PCIE_MSIX_82598_CAPS, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @IXGBE_MAX_MSIX_VECTORS_82598, align 4
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %1, %1
  %19 = load i32, i32* @IXGBE_PCIE_MSIX_82599_CAPS, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @IXGBE_MAX_MSIX_VECTORS_82599, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %18, %15
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pci_read_config_word(i32 %26, i32 %27, i32* %5)
  %29 = load i32, i32* @IXGBE_PCIE_MSIX_TBL_SZ_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
