; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pcie-sh7786.c_phy_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pcie-sh7786.c_phy_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { i32 }

@BITS_CMD = common dso_local global i32 0, align 4
@BITS_LANE = common dso_local global i32 0, align 4
@BITS_ADR = common dso_local global i32 0, align 4
@SH4A_PCIEPHYCTLR = common dso_local global i32 0, align 4
@BITS_CKE = common dso_local global i32 0, align 4
@SH4A_PCIEPHYDOUTR = common dso_local global i32 0, align 4
@SH4A_PCIEPHYADRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_channel*, i32, i32, i32)* @phy_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_write_reg(%struct.pci_channel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pci_channel* %0, %struct.pci_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @BITS_CMD, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 15
  %15 = load i32, i32* @BITS_LANE, align 4
  %16 = shl i32 %14, %15
  %17 = add i32 %12, %16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = load i32, i32* @BITS_ADR, align 4
  %21 = shl i32 %19, %20
  %22 = add i32 %17, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %25 = load i32, i32* @SH4A_PCIEPHYCTLR, align 4
  %26 = call i64 @pci_read_reg(%struct.pci_channel* %24, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* @BITS_CKE, align 4
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %10, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %10, align 8
  %32 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @SH4A_PCIEPHYCTLR, align 4
  %35 = call i32 @pci_write_reg(%struct.pci_channel* %32, i64 %33, i32 %34)
  %36 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* @SH4A_PCIEPHYDOUTR, align 4
  %40 = call i32 @pci_write_reg(%struct.pci_channel* %36, i64 %38, i32 %39)
  %41 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @SH4A_PCIEPHYADRR, align 4
  %44 = call i32 @pci_write_reg(%struct.pci_channel* %41, i64 %42, i32 %43)
  %45 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %46 = call i32 @phy_wait_for_ack(%struct.pci_channel* %45)
  %47 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %48 = load i32, i32* @SH4A_PCIEPHYADRR, align 4
  %49 = call i32 @pci_write_reg(%struct.pci_channel* %47, i64 0, i32 %48)
  %50 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %51 = call i32 @phy_wait_for_ack(%struct.pci_channel* %50)
  %52 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %53 = load i32, i32* @SH4A_PCIEPHYCTLR, align 4
  %54 = call i64 @pci_read_reg(%struct.pci_channel* %52, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i32, i32* @BITS_CKE, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load %struct.pci_channel*, %struct.pci_channel** %5, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @SH4A_PCIEPHYCTLR, align 4
  %64 = call i32 @pci_write_reg(%struct.pci_channel* %61, i64 %62, i32 %63)
  ret void
}

declare dso_local i64 @pci_read_reg(%struct.pci_channel*, i32) #1

declare dso_local i32 @pci_write_reg(%struct.pci_channel*, i64, i32) #1

declare dso_local i32 @phy_wait_for_ack(%struct.pci_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
