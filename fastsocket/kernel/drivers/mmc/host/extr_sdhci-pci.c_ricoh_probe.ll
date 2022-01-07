; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_ricoh_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_ricoh_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PCI_VENDOR_ID_IBM = common dso_local global i64 0, align 8
@SDHCI_QUIRK_CLOCK_BEFORE_RESET = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SAMSUNG = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_SONY = common dso_local global i64 0, align 8
@SDHCI_QUIRK_NO_CARD_NO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_chip*)* @ricoh_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ricoh_probe(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca %struct.sdhci_pci_chip*, align 8
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %2, align 8
  %3 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_VENDOR_ID_IBM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @SDHCI_QUIRK_CLOCK_BEFORE_RESET, align 4
  %12 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %13 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %18 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_VENDOR_ID_SAMSUNG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %26 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_VENDOR_ID_SONY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24, %16
  %33 = load i32, i32* @SDHCI_QUIRK_NO_CARD_NO_RESET, align 4
  %34 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %35 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %24
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
