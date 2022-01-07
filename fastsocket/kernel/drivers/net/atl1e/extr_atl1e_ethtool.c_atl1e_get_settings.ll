; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_ethtool.c_atl1e_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_ethtool.c_atl1e_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.atl1e_adapter = type { i64, i64, %struct.atl1e_hw }
%struct.atl1e_hw = type { i64, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@athr_l1e = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @atl1e_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.atl1e_adapter*, align 8
  %6 = alloca %struct.atl1e_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl1e_adapter* %8, %struct.atl1e_adapter** %5, align 8
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 2
  store %struct.atl1e_hw* %10, %struct.atl1e_hw** %6, align 8
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
  %24 = load %struct.atl1e_hw*, %struct.atl1e_hw** %6, align 8
  %25 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @athr_l1e, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load i32, i32* @ADVERTISED_TP, align 4
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.atl1e_hw*, %struct.atl1e_hw** %6, align 8
  %45 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @PORT_TP, align 4
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @XCVR_INTERNAL, align 4
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SPEED_0, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %35
  %65 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %71 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FULL_DUPLEX, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32, i32* @DUPLEX_FULL, align 4
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %83

79:                                               ; preds = %64
  %80 = load i32, i32* @DUPLEX_HALF, align 4
  %81 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  br label %89

84:                                               ; preds = %35
  %85 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %85, i32 0, i32 1
  store i64 -1, i64* %86, align 8
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 2
  store i32 -1, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i32, i32* @AUTONEG_ENABLE, align 4
  %91 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  ret i32 0
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
