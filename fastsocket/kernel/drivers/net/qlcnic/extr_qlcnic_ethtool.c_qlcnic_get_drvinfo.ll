; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.qlcnic_adapter = type { i32 }

@QLCNIC_FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@QLCNIC_FW_VERSION_MINOR = common dso_local global i32 0, align 4
@QLCNIC_FW_VERSION_SUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@qlcnic_driver_name = common dso_local global i32 0, align 4
@QLCNIC_LINUX_VERSIONID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @qlcnic_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %5, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = load i32, i32* @QLCNIC_FW_VERSION_MAJOR, align 4
  %13 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = load i32, i32* @QLCNIC_FW_VERSION_MINOR, align 4
  %16 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %18 = load i32, i32* @QLCNIC_FW_VERSION_SUB, align 4
  %19 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_name(i32 %32)
  %34 = call i32 @strlcpy(i32 %29, i32 %33, i32 4)
  %35 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @qlcnic_driver_name, align 4
  %39 = call i32 @strlcpy(i32 %37, i32 %38, i32 4)
  %40 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QLCNIC_LINUX_VERSIONID, align 4
  %44 = call i32 @strlcpy(i32 %42, i32 %43, i32 4)
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
