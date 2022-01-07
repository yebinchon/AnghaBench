; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_msi_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_msi_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_ENABLE = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_msi_off(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %7 = call i32 @pci_find_capability(%struct.pci_dev* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i64 %15, i32* %4)
  %17 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @pci_write_config_word(%struct.pci_dev* %21, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %10, %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %31 = call i32 @pci_find_capability(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i64 %39, i32* %4)
  %41 = load i32, i32* @PCI_MSIX_FLAGS_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pci_write_config_word(%struct.pci_dev* %45, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
