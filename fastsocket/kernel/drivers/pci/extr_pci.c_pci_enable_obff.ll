; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_enable_obff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_enable_obff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PCI_EXP_DEVCAP2 = common dso_local global i32 0, align 4
@PCI_EXP_OBFF_MASK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_OBFF_WAKE = common dso_local global i32 0, align 4
@PCI_EXP_OBFF_WAKE_EN = common dso_local global i32 0, align 4
@PCI_EXP_OBFF_MSGA_EN = common dso_local global i32 0, align 4
@PCI_EXP_OBFF_MSGB_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bad OBFF signal type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_obff(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @PCI_EXP_DEVCAP2, align 4
  %11 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %9, i32 %10, i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @PCI_EXP_OBFF_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pci_enable_obff(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %81

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %42 = call i32 @pcie_capability_read_word(%struct.pci_dev* %40, i32 %41, i32* %7)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PCI_EXP_OBFF_WAKE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @PCI_EXP_OBFF_WAKE_EN, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %76

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %71 [
    i32 128, label %53
    i32 129, label %63
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PCI_EXP_OBFF_WAKE_EN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @PCI_EXP_OBFF_MSGA_EN, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %53
  br label %75

63:                                               ; preds = %51
  %64 = load i32, i32* @PCI_EXP_OBFF_WAKE_EN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @PCI_EXP_OBFF_MSGB_EN, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %75

71:                                               ; preds = %51
  %72 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %63, %62
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @pcie_capability_write_word(%struct.pci_dev* %77, i32 %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %71, %36, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
