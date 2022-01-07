; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_get_port_device_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_pcie_get_port_device_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_dev_rh1* }
%struct.pci_dev_rh1 = type { i32, i32 }

@pcie_ports_auto = common dso_local global i64 0, align 8
@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_VC = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS_SLOT = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_HPC = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_VC = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_get_port_device_capability(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev_rh1*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %10, align 8
  store %struct.pci_dev_rh1* %11, %struct.pci_dev_rh1** %8, align 8
  %12 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %8, align 8
  %13 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %8, align 8
  %18 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %112

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pcie_port_platform_notify(%struct.pci_dev* %21, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* @pcie_ports_auto, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @pcie_no_aspm()
  store i32 0, i32* %2, align 4
  br label %112

30:                                               ; preds = %25
  br label %44

31:                                               ; preds = %20
  %32 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %33 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PCIE_PORT_SERVICE_VC, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = call i64 (...) @pci_aer_available()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = call i32 @pcie_caps_reg(%struct.pci_dev* %50)
  %52 = load i32, i32* @PCI_EXP_FLAGS_SLOT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* @PCI_EXP_SLTCAP, align 4
  %58 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %56, i32 %57, i32* %5)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PCI_EXP_SLTCAP_HPC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %55
  br label %68

68:                                               ; preds = %67, %49, %44
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %76 = call i64 @pci_find_ext_capability(%struct.pci_dev* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %73, %68
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = load i32, i32* @PCI_EXT_CAP_ID_VC, align 4
  %85 = call i64 @pci_find_ext_capability(%struct.pci_dev* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @PCIE_PORT_SERVICE_VC, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = call i64 @pci_pcie_type(%struct.pci_dev* %97)
  %99 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %96, %91
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %8, align 8
  %108 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.pci_dev_rh1*, %struct.pci_dev_rh1** %8, align 8
  %110 = getelementptr inbounds %struct.pci_dev_rh1, %struct.pci_dev_rh1* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %28, %16
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @pcie_port_platform_notify(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pcie_no_aspm(...) #1

declare dso_local i64 @pci_aer_available(...) #1

declare dso_local i32 @pcie_caps_reg(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
