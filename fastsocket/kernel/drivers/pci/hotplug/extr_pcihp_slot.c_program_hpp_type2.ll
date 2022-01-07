; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pcihp_slot.c_program_hpp_type2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pcihp_slot.c_program_hpp_type2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.hpp_type2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"PCIe settings rev %d not supported\0A\00", align 1
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_SEVER = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hpp_type2*)* @program_hpp_type2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hpp_type2(%struct.pci_dev* %0, %struct.hpp_type2* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpp_type2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hpp_type2* %1, %struct.hpp_type2** %4, align 8
  %7 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %8 = icmp ne %struct.hpp_type2* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %144

10:                                               ; preds = %2
  %11 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %12 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %19 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %144

22:                                               ; preds = %10
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %25 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %26 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %30 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %23, i32 %24, i32 %28, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %22
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %40 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %41 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %45 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %38, i32 %39, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %37, %22
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %51 = call i32 @pci_find_ext_capability(%struct.pci_dev* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %144

55:                                               ; preds = %48
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @pci_read_config_dword(%struct.pci_dev* %56, i64 %60, i32* %6)
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %64 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  %67 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %68 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %66, %69
  store i32 %70, i32* %6, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @pci_write_config_dword(%struct.pci_dev* %71, i64 %75, i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @pci_read_config_dword(%struct.pci_dev* %78, i64 %82, i32* %6)
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %86 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %84, %87
  %89 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %90 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  store i32 %92, i32* %6, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @pci_write_config_dword(%struct.pci_dev* %93, i64 %97, i32 %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @pci_read_config_dword(%struct.pci_dev* %100, i64 %104, i32* %6)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %108 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %106, %109
  %111 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %112 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  store i32 %114, i32* %6, align 4
  %115 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @pci_write_config_dword(%struct.pci_dev* %115, i64 %119, i32 %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* @PCI_ERR_CAP, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @pci_read_config_dword(%struct.pci_dev* %122, i64 %126, i32* %6)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %130 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %128, %131
  %133 = load %struct.hpp_type2*, %struct.hpp_type2** %4, align 8
  %134 = getelementptr inbounds %struct.hpp_type2, %struct.hpp_type2* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  store i32 %136, i32* %6, align 4
  %137 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @PCI_ERR_CAP, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @pci_write_config_dword(%struct.pci_dev* %137, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %55, %54, %15, %9
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
