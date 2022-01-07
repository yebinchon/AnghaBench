; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_core.c_pciehp_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_core.c_pciehp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.controller = type { %struct.slot* }
%struct.slot = type { i32 }

@pciehp_disable = common dso_local global i64 0, align 8
@pciehp_force = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Bypassing BIOS check for pciehp use on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Controller initialization failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Slot already registered by another hotplug driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Slot initialization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Notification initialization failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_device*)* @pciehp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciehp_probe(%struct.pcie_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  %6 = alloca %struct.slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  %9 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %10 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %8, align 8
  %12 = load i64, i64* @pciehp_disable, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %103

15:                                               ; preds = %1
  %16 = load i64, i64* @pciehp_force, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %22 = call i32 @pci_name(%struct.pci_dev* %21)
  %23 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %26 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %25, i32 0, i32 1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  %28 = call i64 @pciehp_acpi_slot_detection_check(%struct.pci_dev* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %103

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %34 = call %struct.controller* @pcie_init(%struct.pcie_device* %33)
  store %struct.controller* %34, %struct.controller** %5, align 8
  %35 = load %struct.controller*, %struct.controller** %5, align 8
  %36 = icmp ne %struct.controller* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %39 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %103

41:                                               ; preds = %32
  %42 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %43 = load %struct.controller*, %struct.controller** %5, align 8
  %44 = call i32 @set_service_data(%struct.pcie_device* %42, %struct.controller* %43)
  %45 = load %struct.controller*, %struct.controller** %5, align 8
  %46 = call i32 @init_slot(%struct.controller* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.controller*, %struct.controller** %5, align 8
  %56 = call i32 @ctrl_warn(%struct.controller* %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %60

57:                                               ; preds = %49
  %58 = load %struct.controller*, %struct.controller** %5, align 8
  %59 = call i32 @ctrl_err(%struct.controller* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  br label %100

61:                                               ; preds = %41
  %62 = load %struct.controller*, %struct.controller** %5, align 8
  %63 = call i32 @pcie_init_notification(%struct.controller* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.controller*, %struct.controller** %5, align 8
  %68 = call i32 @ctrl_err(%struct.controller* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %100

69:                                               ; preds = %61
  %70 = load %struct.controller*, %struct.controller** %5, align 8
  %71 = getelementptr inbounds %struct.controller, %struct.controller* %70, i32 0, i32 0
  %72 = load %struct.slot*, %struct.slot** %71, align 8
  store %struct.slot* %72, %struct.slot** %6, align 8
  %73 = load %struct.slot*, %struct.slot** %6, align 8
  %74 = call i32 @pciehp_get_adapter_status(%struct.slot* %73, i64* %7)
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i64, i64* @pciehp_force, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.slot*, %struct.slot** %6, align 8
  %82 = call i32 @pciehp_enable_slot(%struct.slot* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %96

84:                                               ; preds = %69
  %85 = load %struct.controller*, %struct.controller** %5, align 8
  %86 = call i64 @POWER_CTRL(%struct.controller* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.slot*, %struct.slot** %6, align 8
  %90 = call i32 @pciehp_power_off_slot(%struct.slot* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %97

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %84
  br label %96

96:                                               ; preds = %95, %83
  store i32 0, i32* %2, align 4
  br label %106

97:                                               ; preds = %93
  %98 = load %struct.controller*, %struct.controller** %5, align 8
  %99 = call i32 @cleanup_slot(%struct.controller* %98)
  br label %100

100:                                              ; preds = %97, %66, %60
  %101 = load %struct.controller*, %struct.controller** %5, align 8
  %102 = call i32 @pciehp_release_ctrl(%struct.controller* %101)
  br label %103

103:                                              ; preds = %100, %37, %30, %14
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %96
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i64 @pciehp_acpi_slot_detection_check(%struct.pci_dev*) #1

declare dso_local %struct.controller* @pcie_init(%struct.pcie_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_service_data(%struct.pcie_device*, %struct.controller*) #1

declare dso_local i32 @init_slot(%struct.controller*) #1

declare dso_local i32 @ctrl_warn(%struct.controller*, i8*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

declare dso_local i32 @pcie_init_notification(%struct.controller*) #1

declare dso_local i32 @pciehp_get_adapter_status(%struct.slot*, i64*) #1

declare dso_local i32 @pciehp_enable_slot(%struct.slot*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_power_off_slot(%struct.slot*) #1

declare dso_local i32 @cleanup_slot(%struct.controller*) #1

declare dso_local i32 @pciehp_release_ctrl(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
