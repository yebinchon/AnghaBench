; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32 }

@ixgbe_driver_name = common dso_local global i32 0, align 4
@ixgbe_driver_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@IXGBE_STATS_LEN = common dso_local global i32 0, align 4
@IXGBE_TEST_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ixgbe_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %5, align 8
  %9 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ixgbe_driver_name, align 4
  %13 = call i32 @strlcpy(i32 %11, i32 %12, i32 4)
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ixgbe_driver_version, align 4
  %18 = call i32 @strlcpy(i32 %16, i32 %17, i32 4)
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_name(i32 %37)
  %39 = call i32 @strlcpy(i32 %34, i32 %38, i32 4)
  %40 = load i32, i32* @IXGBE_STATS_LEN, align 4
  %41 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @IXGBE_TEST_LEN, align 4
  %44 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @ixgbe_get_regs_len(%struct.net_device* %46)
  %48 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @ixgbe_get_regs_len(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
