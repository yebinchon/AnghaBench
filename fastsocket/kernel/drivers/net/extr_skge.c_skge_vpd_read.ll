; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_vpd_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_vpd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @skge_vpd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_vpd_read(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @PCI_VPD_ADDR, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pci_write_config_word(%struct.pci_dev* %8, i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %22, %3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @PCI_VPD_ADDR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @pci_read_config_word(%struct.pci_dev* %16, i64 %20, i32* %6)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %15, label %28

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @PCI_VPD_DATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i64 %33, i32* %7)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
