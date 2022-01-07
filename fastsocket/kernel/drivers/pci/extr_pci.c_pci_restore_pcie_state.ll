; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_restore_pcie_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_restore_pcie_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_cap_saved_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_restore_pcie_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_restore_pcie_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_cap_saved_state*, align 8
  %5 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %8 = call %struct.pci_cap_saved_state* @pci_find_saved_cap(%struct.pci_dev* %6, i32 %7)
  store %struct.pci_cap_saved_state* %8, %struct.pci_cap_saved_state** %4, align 8
  %9 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %4, align 8
  %10 = icmp ne %struct.pci_cap_saved_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %81

12:                                               ; preds = %1
  %13 = load %struct.pci_cap_saved_state*, %struct.pci_cap_saved_state** %4, align 8
  %14 = getelementptr inbounds %struct.pci_cap_saved_state, %struct.pci_cap_saved_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pcie_capability_write_word(%struct.pci_dev* %18, i32 %19, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pcie_capability_write_word(%struct.pci_dev* %27, i32 %28, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pcie_capability_write_word(%struct.pci_dev* %36, i32 %37, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = load i32, i32* @PCI_EXP_RTCTL, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pcie_capability_write_word(%struct.pci_dev* %45, i32 %46, i32 %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pcie_capability_write_word(%struct.pci_dev* %54, i32 %55, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = load i32, i32* @PCI_EXP_LNKCTL2, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pcie_capability_write_word(%struct.pci_dev* %63, i32 %64, i32 %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = load i32, i32* @PCI_EXP_SLTCTL2, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pcie_capability_write_word(%struct.pci_dev* %72, i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.pci_cap_saved_state* @pci_find_saved_cap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
