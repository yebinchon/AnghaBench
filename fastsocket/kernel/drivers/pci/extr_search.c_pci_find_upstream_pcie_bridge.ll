; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_search.c_pci_find_upstream_pcie_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_search.c_pci_find_upstream_pcie_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_EXP_TYPE_PCI_BRIDGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = call i64 @pci_is_pcie(%struct.pci_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %39

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %26
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i64 @pci_is_root_bus(%struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %37

17:                                               ; preds = %10
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %3, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i64 @pci_is_pcie(%struct.pci_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %4, align 8
  br label %10

28:                                               ; preds = %17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i64 @pci_pcie_type(%struct.pci_dev* %29)
  %31 = load i64, i64* @PCI_EXP_TYPE_PCI_BRIDGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @WARN_ON_ONCE(i32 1)
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %36, %struct.pci_dev** %2, align 8
  br label %39

37:                                               ; preds = %16
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %38, %struct.pci_dev** %2, align 8
  br label %39

39:                                               ; preds = %37, %35, %33, %8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %40
}

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_2__*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
