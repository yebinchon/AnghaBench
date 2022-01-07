; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.atl1c_adapter = type { i64, i64, %struct.atl1c_hw }
%struct.atl1c_hw = type { i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ATL1C_LINK_CAP_1000M = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @atl1c_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.atl1c_adapter*, align 8
  %6 = alloca %struct.atl1c_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl1c_adapter* %8, %struct.atl1c_adapter** %5, align 8
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 2
  store %struct.atl1c_hw* %10, %struct.atl1c_hw** %6, align 8
  %11 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %12 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_TP, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %6, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATL1C_LINK_CAP_1000M, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load i32, i32* @ADVERTISED_TP, align 4
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.atl1c_hw*, %struct.atl1c_hw** %6, align 8
  %41 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @PORT_TP, align 4
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @XCVR_INTERNAL, align 4
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPEED_0, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %36
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %62 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %61, i32 %65)
  %67 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FULL_DUPLEX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @DUPLEX_FULL, align 4
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %80

76:                                               ; preds = %60
  %77 = load i32, i32* @DUPLEX_HALF, align 4
  %78 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %86

81:                                               ; preds = %36
  %82 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %83 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %82, i32 -1)
  %84 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32, i32* @AUTONEG_ENABLE, align 4
  %88 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %89 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  ret i32 0
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
