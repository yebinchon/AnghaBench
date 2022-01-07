; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pcie_capability_read_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pcie_capability_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@PCI_EXP_SLTSTA_PDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_capability_read_word(%struct.pci_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @pcie_capability_reg_implemented(%struct.pci_dev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = call i64 @pci_pcie_cap(%struct.pci_dev* %23)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i64*, i64** %7, align 8
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i64 %27, i64* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64*, i64** %7, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %53

36:                                               ; preds = %16
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = call i64 @pci_is_pcie(%struct.pci_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = call i64 @pci_pcie_type(%struct.pci_dev* %45)
  %47 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* @PCI_EXP_SLTSTA_PDS, align 8
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %44, %40, %36
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %34, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @pcie_capability_reg_implemented(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i64*) #1

declare dso_local i64 @pci_pcie_cap(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
