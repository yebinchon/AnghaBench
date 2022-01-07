; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.atl1_adapter = type { i32, %struct.atl1_hw }
%struct.atl1_hw = type { i64 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i64 0, align 8
@MEDIA_TYPE_1000M_FULL = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @atl1_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca %struct.atl1_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.atl1_adapter* %10, %struct.atl1_adapter** %5, align 8
  %11 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %11, i32 0, i32 1
  store %struct.atl1_hw* %12, %struct.atl1_hw** %6, align 8
  %13 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %14 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_TP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @ADVERTISED_TP, align 4
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %32 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %38 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MEDIA_TYPE_1000M_FULL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %36, %2
  %43 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %49 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %42
  %54 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %60 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %78

72:                                               ; preds = %42
  %73 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %53
  br label %79

79:                                               ; preds = %78, %36
  %80 = load i32, i32* @PORT_TP, align 4
  %81 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @XCVR_INTERNAL, align 4
  %86 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %89 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @netif_carrier_ok(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %79
  %94 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %95 = call i32 @atl1_get_speed_and_duplex(%struct.atl1_hw* %94, i64* %7, i64* %8)
  %96 = load i64, i64* %7, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @FULL_DUPLEX, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i32, i32* @DUPLEX_FULL, align 4
  %105 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %111

107:                                              ; preds = %93
  %108 = load i32, i32* @DUPLEX_HALF, align 4
  %109 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %110 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %117

112:                                              ; preds = %79
  %113 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %113, i32 0, i32 2
  store i32 -1, i32* %114, align 8
  %115 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %116 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %115, i32 0, i32 3
  store i32 -1, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %111
  %118 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %119 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MEDIA_TYPE_AUTO_SENSOR, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %125 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MEDIA_TYPE_1000M_FULL, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123, %117
  %130 = load i32, i32* @AUTONEG_ENABLE, align 4
  %131 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %132 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  br label %137

133:                                              ; preds = %123
  %134 = load i32, i32* @AUTONEG_DISABLE, align 4
  %135 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %129
  ret i32 0
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @atl1_get_speed_and_duplex(%struct.atl1_hw*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
