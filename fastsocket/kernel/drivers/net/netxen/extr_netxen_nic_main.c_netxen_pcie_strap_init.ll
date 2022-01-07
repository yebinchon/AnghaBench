; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_pcie_strap_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_pcie_strap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32, i32 }

@PCIE_CHICKEN3 = common dso_local global i32 0, align 4
@PCI_CAP_ID_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Gen2 strapping detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Gen1 strapping detected\0A\00", align 1
@NX_P3_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_pcie_strap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_pcie_strap_init(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %14 = load i32, i32* @PCIE_CHICKEN3, align 4
  %15 = call i32 @NETXEN_PCIE_REG(i32 %14)
  %16 = call i32 @NXRD32(%struct.netxen_adapter* %13, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, -50331649
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %20 = load i32, i32* @PCI_CAP_ID_GEN, align 4
  %21 = call i32 @pci_find_capability(%struct.pci_dev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 192
  br i1 %23, label %24, label %41

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 16
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %25, i32 %27, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 983040
  %31 = icmp ne i32 %30, 131072
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 16777216
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 1
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 987136, i32* %4, align 4
  br label %58

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, 16777216
  store i32 %43, i32* %5, align 4
  %44 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %44, i32 0, i32 1
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NX_P3_B0, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 987168, i32* %4, align 4
  br label %57

56:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %60 = load i32, i32* @PCIE_CHICKEN3, align 4
  %61 = call i32 @NETXEN_PCIE_REG(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @NXWR32(%struct.netxen_adapter* %59, i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %104

67:                                               ; preds = %58
  %68 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %104

75:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 8
  %83 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i32 %82, i32* %6)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 8
  %87 = call i32 @pci_read_config_dword(%struct.pci_dev* %84, i32 %86, i32* %6)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @pci_write_config_dword(%struct.pci_dev* %88, i32 %90, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %79
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %76

100:                                              ; preds = %76
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %74, %66
  ret void
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_PCIE_REG(i32) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
