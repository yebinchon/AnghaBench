; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.atl2_adapter = type { i64, i64, %struct.atl2_hw }
%struct.atl2_hw = type { i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @atl2_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.atl2_adapter*, align 8
  %6 = alloca %struct.atl2_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl2_adapter* %8, %struct.atl2_adapter** %5, align 8
  %9 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %9, i32 0, i32 2
  store %struct.atl2_hw* %10, %struct.atl2_hw** %6, align 8
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
  %24 = load i32, i32* @ADVERTISED_TP, align 4
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.atl2_hw*, %struct.atl2_hw** %6, align 8
  %33 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @PORT_TP, align 4
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @XCVR_INTERNAL, align 4
  %45 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SPEED_0, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %2
  %53 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FULL_DUPLEX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @DUPLEX_FULL, align 4
  %65 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %71

67:                                               ; preds = %52
  %68 = load i32, i32* @DUPLEX_HALF, align 4
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %77

72:                                               ; preds = %2
  %73 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %73, i32 0, i32 1
  store i64 -1, i64* %74, align 8
  %75 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %75, i32 0, i32 2
  store i32 -1, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %71
  %78 = load i32, i32* @AUTONEG_ENABLE, align 4
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  ret i32 0
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
