; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_enable_intx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_enable_intx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_ENABLE = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_enable_intx(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i64, i64* @PCI_COMMAND, align 8
  %8 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i64 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i64, i64* @PCI_COMMAND, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pci_write_config_word(%struct.pci_dev* %17, i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %24 = call i32 @pci_find_capability(%struct.pci_dev* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i64 %32, i32* %3)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PCI_MSI_FLAGS_ENABLE, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pci_write_config_word(%struct.pci_dev* %42, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %27
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %53 = call i32 @pci_find_capability(%struct.pci_dev* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @pci_read_config_word(%struct.pci_dev* %57, i64 %61, i32* %3)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @PCI_MSIX_FLAGS_ENABLE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pci_write_config_word(%struct.pci_dev* %71, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %56
  br label %79

79:                                               ; preds = %78, %50
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
