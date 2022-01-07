; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pcie_flr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pcie_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_EXP_DEVCAP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP_FLR = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA_TRPND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"transaction is not cleared; proceeding with reset anyway\0A\00", align 1
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_BCR_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pcie_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_flr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %11 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %9, i32 %10, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PCI_EXP_DEVCAP_FLR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOTTY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %59

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = mul nsw i32 %33, 100
  %35 = call i32 @msleep(i32 %34)
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @PCI_EXP_DEVSTA, align 4
  %39 = call i32 @pcie_capability_read_word(%struct.pci_dev* %37, i32 %38, i32* %8)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PCI_EXP_DEVSTA_TRPND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %53

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %56 = load i32, i32* @PCI_EXP_DEVCTL_BCR_FLR, align 4
  %57 = call i32 @pcie_capability_set_word(%struct.pci_dev* %54, i32 %55, i32 %56)
  %58 = call i32 @msleep(i32 100)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %22, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pcie_capability_set_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
