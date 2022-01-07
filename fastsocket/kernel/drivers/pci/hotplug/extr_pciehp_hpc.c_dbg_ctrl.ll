; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_dbg_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_dbg_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i8*, i8*, i8*, i8*, i32*, i32 }

@pciehp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Hotplug Controller:\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"  Seg/Bus/Dev/Func/IRQ : %s IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"  Vendor ID            : 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"  Device ID            : 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"  Subsystem ID         : 0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"  Subsystem Vendor ID  : 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"  PCIe Cap offset      : 0x%02x\0A\00", align 1
@DEVICE_COUNT_RESOURCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"  PCI resource [%d]     : %pR\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Slot Capabilities      : 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"  Physical Slot Number : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"  Attention Button     : %3s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"  Power Controller     : %3s\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"  MRL Sensor           : %3s\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"  Attention Indicator  : %3s\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"  Power Indicator      : %3s\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"  Hot-Plug Surprise    : %3s\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"  EMI Present          : %3s\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"  Command Completed    : %3s\0A\00", align 1
@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"Slot Status            : 0x%04x\0A\00", align 1
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"Slot Control           : 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @dbg_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_ctrl(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %6 = load %struct.controller*, %struct.controller** %2, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @pciehp_debug, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %149

14:                                               ; preds = %1
  %15 = load %struct.controller*, %struct.controller** %2, align 8
  %16 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.controller*, %struct.controller** %2, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @pci_name(%struct.pci_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.controller*, %struct.controller** %2, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load %struct.controller*, %struct.controller** %2, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = load %struct.controller*, %struct.controller** %2, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load %struct.controller*, %struct.controller** %2, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = load %struct.controller*, %struct.controller** %2, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = call i8* @pci_pcie_cap(%struct.pci_dev* %45)
  %47 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %68, %14
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @DEVICE_COUNT_RESOURCE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @pci_resource_len(%struct.pci_dev* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %68

58:                                               ; preds = %52
  %59 = load %struct.controller*, %struct.controller** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %60, i32* %66)
  br label %68

68:                                               ; preds = %58, %57
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.controller*, %struct.controller** %2, align 8
  %73 = load %struct.controller*, %struct.controller** %2, align 8
  %74 = getelementptr inbounds %struct.controller, %struct.controller* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %75)
  %77 = load %struct.controller*, %struct.controller** %2, align 8
  %78 = load %struct.controller*, %struct.controller** %2, align 8
  %79 = call i8* @PSN(%struct.controller* %78)
  %80 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %79)
  %81 = load %struct.controller*, %struct.controller** %2, align 8
  %82 = load %struct.controller*, %struct.controller** %2, align 8
  %83 = call i64 @ATTN_BUTTN(%struct.controller* %82)
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %87 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %86)
  %88 = load %struct.controller*, %struct.controller** %2, align 8
  %89 = load %struct.controller*, %struct.controller** %2, align 8
  %90 = call i64 @POWER_CTRL(%struct.controller* %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %94 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %93)
  %95 = load %struct.controller*, %struct.controller** %2, align 8
  %96 = load %struct.controller*, %struct.controller** %2, align 8
  %97 = call i64 @MRL_SENS(%struct.controller* %96)
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %101 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %100)
  %102 = load %struct.controller*, %struct.controller** %2, align 8
  %103 = load %struct.controller*, %struct.controller** %2, align 8
  %104 = call i64 @ATTN_LED(%struct.controller* %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %108 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %107)
  %109 = load %struct.controller*, %struct.controller** %2, align 8
  %110 = load %struct.controller*, %struct.controller** %2, align 8
  %111 = call i64 @PWR_LED(%struct.controller* %110)
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %115 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %114)
  %116 = load %struct.controller*, %struct.controller** %2, align 8
  %117 = load %struct.controller*, %struct.controller** %2, align 8
  %118 = call i64 @HP_SUPR_RM(%struct.controller* %117)
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %122 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %121)
  %123 = load %struct.controller*, %struct.controller** %2, align 8
  %124 = load %struct.controller*, %struct.controller** %2, align 8
  %125 = call i64 @EMI(%struct.controller* %124)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %129 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %128)
  %130 = load %struct.controller*, %struct.controller** %2, align 8
  %131 = load %struct.controller*, %struct.controller** %2, align 8
  %132 = call i64 @NO_CMD_CMPL(%struct.controller* %131)
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %136 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* %135)
  %137 = load %struct.controller*, %struct.controller** %2, align 8
  %138 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %139 = call i32 @pciehp_readw(%struct.controller* %137, i32 %138, i8** %4)
  %140 = load %struct.controller*, %struct.controller** %2, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* %141)
  %143 = load %struct.controller*, %struct.controller** %2, align 8
  %144 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %145 = call i32 @pciehp_readw(%struct.controller* %143, i32 %144, i8** %4)
  %146 = load %struct.controller*, %struct.controller** %2, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 (%struct.controller*, i8*, ...) @ctrl_info(%struct.controller* %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %71, %13
  ret void
}

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i8* @pci_pcie_cap(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @PSN(%struct.controller*) #1

declare dso_local i64 @ATTN_BUTTN(%struct.controller*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i64 @MRL_SENS(%struct.controller*) #1

declare dso_local i64 @ATTN_LED(%struct.controller*) #1

declare dso_local i64 @PWR_LED(%struct.controller*) #1

declare dso_local i64 @HP_SUPR_RM(%struct.controller*) #1

declare dso_local i64 @EMI(%struct.controller*) #1

declare dso_local i64 @NO_CMD_CMPL(%struct.controller*) #1

declare dso_local i32 @pciehp_readw(%struct.controller*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
