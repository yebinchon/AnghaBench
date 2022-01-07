; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8111_edac.c_amd8111_pci_bridge_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd8111_edac.c_amd8111_pci_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8111_pci_info = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@REG_PCI_STSCMD = common dso_local global i32 0, align 4
@PCI_STSCMD_CLEAR_MASK = common dso_local global i32 0, align 4
@REG_HT_LINK = common dso_local global i32 0, align 4
@HT_LINK_CLEAR_MASK = common dso_local global i32 0, align 4
@REG_MEM_LIM = common dso_local global i32 0, align 4
@MEM_LIMIT_CLEAR_MASK = common dso_local global i32 0, align 4
@REG_PCI_INTBRG_CTRL = common dso_local global i32 0, align 4
@PCI_INTBRG_CTRL_CLEAR_MASK = common dso_local global i32 0, align 4
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_POLL = common dso_local global i64 0, align 8
@PCI_STSCMD_SERREN = common dso_local global i32 0, align 4
@HT_LINK_CRCFEN = common dso_local global i32 0, align 4
@PCI_INTBRG_CTRL_POLL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd8111_pci_info*)* @amd8111_pci_bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111_pci_bridge_init(%struct.amd8111_pci_info* %0) #0 {
  %2 = alloca %struct.amd8111_pci_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.amd8111_pci_info* %0, %struct.amd8111_pci_info** %2, align 8
  %5 = load %struct.amd8111_pci_info*, %struct.amd8111_pci_info** %2, align 8
  %6 = getelementptr inbounds %struct.amd8111_pci_info, %struct.amd8111_pci_info* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @REG_PCI_STSCMD, align 4
  %10 = call i32 @edac_pci_read_dword(%struct.pci_dev* %8, i32 %9, i32* %3)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PCI_STSCMD_CLEAR_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @REG_PCI_STSCMD, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @edac_pci_write_dword(%struct.pci_dev* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load i32, i32* @REG_HT_LINK, align 4
  %23 = call i32 @edac_pci_read_dword(%struct.pci_dev* %21, i32 %22, i32* %3)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @HT_LINK_CLEAR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* @REG_HT_LINK, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @edac_pci_write_dword(%struct.pci_dev* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* @REG_MEM_LIM, align 4
  %36 = call i32 @edac_pci_read_dword(%struct.pci_dev* %34, i32 %35, i32* %3)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MEM_LIMIT_CLEAR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @REG_MEM_LIM, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @edac_pci_write_dword(%struct.pci_dev* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = load i32, i32* @REG_PCI_INTBRG_CTRL, align 4
  %49 = call i32 @edac_pci_read_dword(%struct.pci_dev* %47, i32 %48, i32* %3)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @PCI_INTBRG_CTRL_CLEAR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load i32, i32* @REG_PCI_INTBRG_CTRL, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @edac_pci_write_dword(%struct.pci_dev* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i64, i64* @edac_op_state, align 8
  %61 = load i64, i64* @EDAC_OPSTATE_POLL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @REG_PCI_STSCMD, align 4
  %66 = call i32 @edac_pci_read_dword(%struct.pci_dev* %64, i32 %65, i32* %3)
  %67 = load i32, i32* @PCI_STSCMD_SERREN, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load i32, i32* @REG_PCI_STSCMD, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @edac_pci_write_dword(%struct.pci_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* @REG_HT_LINK, align 4
  %76 = call i32 @edac_pci_read_dword(%struct.pci_dev* %74, i32 %75, i32* %3)
  %77 = load i32, i32* @HT_LINK_CRCFEN, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = load i32, i32* @REG_HT_LINK, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @edac_pci_write_dword(%struct.pci_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @REG_PCI_INTBRG_CTRL, align 4
  %86 = call i32 @edac_pci_read_dword(%struct.pci_dev* %84, i32 %85, i32* %3)
  %87 = load i32, i32* @PCI_INTBRG_CTRL_POLL_MASK, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* @REG_PCI_INTBRG_CTRL, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @edac_pci_write_dword(%struct.pci_dev* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %63, %59
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
