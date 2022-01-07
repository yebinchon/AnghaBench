; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_enable_acs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_enable_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@pci_acs_enable = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@PCI_ACS_CAP = common dso_local global i64 0, align 8
@PCI_ACS_CTRL = common dso_local global i64 0, align 8
@PCI_ACS_SV = common dso_local global i32 0, align 4
@PCI_ACS_RR = common dso_local global i32 0, align 4
@PCI_ACS_CR = common dso_local global i32 0, align 4
@PCI_ACS_UF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_enable_acs(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @pci_acs_enable, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %12 = call i32 @pci_find_ext_capability(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %56

16:                                               ; preds = %9
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @PCI_ACS_CAP, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i64 %21, i32* %4)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @PCI_ACS_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i64 %27, i32* %5)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PCI_ACS_SV, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PCI_ACS_RR, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCI_ACS_CR, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PCI_ACS_UF, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @PCI_ACS_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pci_write_config_word(%struct.pci_dev* %49, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %16, %15, %8
  ret void
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
