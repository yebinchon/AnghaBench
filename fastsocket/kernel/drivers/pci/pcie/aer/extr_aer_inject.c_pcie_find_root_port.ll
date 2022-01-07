; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aer_inject.c_pcie_find_root_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aer_inject.c_pcie_find_root_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_dev*)* @pcie_find_root_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pcie_find_root_port(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  br label %4

4:                                                ; preds = %1, %24
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = call i32 @pci_is_pcie(%struct.pci_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  br label %30

9:                                                ; preds = %4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @pci_pcie_type(%struct.pci_dev* %10)
  %12 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %2, align 8
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %3, align 8
  br label %4

30:                                               ; preds = %23, %8
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %32
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
