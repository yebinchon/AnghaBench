; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.netxen_adapter = type { i32 }

@netxen_nic_driver_name = common dso_local global i32 0, align 4
@NETXEN_NIC_LINUX_VERSIONID = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_MINOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@NETXEN_NIC_REGS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @netxen_nic_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.netxen_adapter* %10, %struct.netxen_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @netxen_nic_driver_name, align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  %16 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NETXEN_NIC_LINUX_VERSIONID, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %22 = load i32, i32* @NETXEN_FW_VERSION_MAJOR, align 4
  %23 = call i32 @NXRD32(%struct.netxen_adapter* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %25 = load i32, i32* @NETXEN_FW_VERSION_MINOR, align 4
  %26 = call i32 @NXRD32(%struct.netxen_adapter* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %28 = load i32, i32* @NETXEN_FW_VERSION_SUB, align 4
  %29 = call i32 @NXRD32(%struct.netxen_adapter* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci_name(i32 %42)
  %44 = call i32 @strlcpy(i32 %39, i32 %43, i32 4)
  %45 = load i32, i32* @NETXEN_NIC_REGS_LEN, align 4
  %46 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @netxen_nic_get_eeprom_len(%struct.net_device* %48)
  %50 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @netxen_nic_get_eeprom_len(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
