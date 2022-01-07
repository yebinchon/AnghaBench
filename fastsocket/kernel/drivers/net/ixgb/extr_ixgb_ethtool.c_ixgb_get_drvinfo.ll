; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgb_adapter = type { i32 }

@ixgb_driver_name = common dso_local global i8* null, align 8
@ixgb_driver_version = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@IXGB_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ixgb_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ixgb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgb_adapter* %7, %struct.ixgb_adapter** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** @ixgb_driver_name, align 8
  %12 = call i32 @strncpy(i32 %10, i8* %11, i32 32)
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** @ixgb_driver_version, align 8
  %17 = call i32 @strncpy(i32 %15, i8* %16, i32 32)
  %18 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strncpy(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 32)
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @pci_name(i32 %27)
  %29 = call i32 @strncpy(i32 %24, i8* %28, i32 32)
  %30 = load i32, i32* @IXGB_STATS_LEN, align 4
  %31 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @ixgb_get_regs_len(%struct.net_device* %33)
  %35 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @ixgb_get_eeprom_len(%struct.net_device* %37)
  %39 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @ixgb_get_regs_len(%struct.net_device*) #1

declare dso_local i32 @ixgb_get_eeprom_len(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
