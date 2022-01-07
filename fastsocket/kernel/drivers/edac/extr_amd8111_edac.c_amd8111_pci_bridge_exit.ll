; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8111_edac.c_amd8111_pci_bridge_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8111_edac.c_amd8111_pci_bridge_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8111_pci_info = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_POLL = common dso_local global i64 0, align 8
@REG_PCI_STSCMD = common dso_local global i32 0, align 4
@PCI_STSCMD_SERREN = common dso_local global i32 0, align 4
@REG_HT_LINK = common dso_local global i32 0, align 4
@HT_LINK_CRCFEN = common dso_local global i32 0, align 4
@REG_PCI_INTBRG_CTRL = common dso_local global i32 0, align 4
@PCI_INTBRG_CTRL_POLL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd8111_pci_info*)* @amd8111_pci_bridge_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111_pci_bridge_exit(%struct.amd8111_pci_info* %0) #0 {
  %2 = alloca %struct.amd8111_pci_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.amd8111_pci_info* %0, %struct.amd8111_pci_info** %2, align 8
  %5 = load %struct.amd8111_pci_info*, %struct.amd8111_pci_info** %2, align 8
  %6 = getelementptr inbounds %struct.amd8111_pci_info, %struct.amd8111_pci_info* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load i64, i64* @edac_op_state, align 8
  %9 = load i64, i64* @EDAC_OPSTATE_POLL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i32, i32* @REG_PCI_STSCMD, align 4
  %14 = call i32 @edac_pci_read_dword(%struct.pci_dev* %12, i32 %13, i32* %3)
  %15 = load i32, i32* @PCI_STSCMD_SERREN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* @REG_PCI_STSCMD, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @edac_pci_write_dword(%struct.pci_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* @REG_HT_LINK, align 4
  %25 = call i32 @edac_pci_read_dword(%struct.pci_dev* %23, i32 %24, i32* %3)
  %26 = load i32, i32* @HT_LINK_CRCFEN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* @REG_HT_LINK, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @edac_pci_write_dword(%struct.pci_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* @REG_PCI_INTBRG_CTRL, align 4
  %36 = call i32 @edac_pci_read_dword(%struct.pci_dev* %34, i32 %35, i32* %3)
  %37 = load i32, i32* @PCI_INTBRG_CTRL_POLL_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* @REG_PCI_INTBRG_CTRL, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @edac_pci_write_dword(%struct.pci_dev* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @edac_pci_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @edac_pci_write_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
