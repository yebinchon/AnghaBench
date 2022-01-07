; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64 }
%struct.atl1c_adapter = type { i32, %struct.TYPE_2__*, %struct.atl1c_hw }
%struct.TYPE_2__ = type { i32 }
%struct.atl1c_hw = type { i64 }

@__AT_RESETTING = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"1000M half is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ethtool speed/duplex setting failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @atl1c_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.atl1c_adapter*, align 8
  %7 = alloca %struct.atl1c_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.atl1c_adapter* %11, %struct.atl1c_adapter** %6, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 2
  store %struct.atl1c_hw* %13, %struct.atl1c_hw** %7, align 8
  br label %14

14:                                               ; preds = %20, %2
  %15 = load i32, i32* @__AT_RESETTING, align 4
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 0
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @msleep(i32 1)
  br label %14

22:                                               ; preds = %14
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AUTONEG_ENABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @ADVERTISED_Autoneg, align 8
  store i64 %29, i64* %8, align 8
  br label %89

30:                                               ; preds = %22
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %32 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @SPEED_1000, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DUPLEX_FULL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %44 = call i64 @netif_msg_link(%struct.atl1c_adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32, i32* @__AT_RESETTING, align 4
  %54 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %125

59:                                               ; preds = %36
  %60 = load i64, i64* @ADVERTISED_1000baseT_Full, align 8
  store i64 %60, i64* %8, align 8
  br label %88

61:                                               ; preds = %30
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @SPEED_100, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DUPLEX_FULL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  store i64 %72, i64* %8, align 8
  br label %75

73:                                               ; preds = %65
  %74 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %73, %71
  br label %87

76:                                               ; preds = %61
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DUPLEX_FULL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  store i64 %83, i64* %8, align 8
  br label %86

84:                                               ; preds = %76
  %85 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %28
  %90 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %91 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %98 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %100 = call i64 @atl1c_restart_autoneg(%struct.atl1c_hw* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  %103 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %104 = call i64 @netif_msg_link(%struct.atl1c_adapter* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @dev_warn(i32* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i32, i32* @__AT_RESETTING, align 4
  %114 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %115 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %114, i32 0, i32 0
  %116 = call i32 @clear_bit(i32 %113, i32* %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %125

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %89
  %121 = load i32, i32* @__AT_RESETTING, align 4
  %122 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %122, i32 0, i32 0
  %124 = call i32 @clear_bit(i32 %121, i32* %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %120, %112, %52
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i64 @netif_msg_link(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @atl1c_restart_autoneg(%struct.atl1c_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
