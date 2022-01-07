; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.igb_adapter = type { i64, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@__IGB_RESETTING = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@e1000_fc_default = common dso_local global i32 0, align 4
@e1000_fc_full = common dso_local global i32 0, align 4
@e1000_fc_rx_pause = common dso_local global i32 0, align 4
@e1000_fc_tx_pause = common dso_local global i32 0, align 4
@e1000_fc_none = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @igb_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %6, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 3
  store %struct.e1000_hw* %12, %struct.e1000_hw** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %153

23:                                               ; preds = %2
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %35, %23
  %30 = load i32, i32* @__IGB_RESETTING, align 4
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 1
  %33 = call i64 @test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @msleep(i32 1)
  br label %29

37:                                               ; preds = %29
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AUTONEG_ENABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load i32, i32* @e1000_fc_default, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @netif_running(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %55 = call i32 @igb_down(%struct.igb_adapter* %54)
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %57 = call i32 @igb_up(%struct.igb_adapter* %56)
  br label %61

58:                                               ; preds = %43
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %60 = call i32 @igb_reset(%struct.igb_adapter* %59)
  br label %61

61:                                               ; preds = %58, %53
  br label %147

62:                                               ; preds = %37
  %63 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @e1000_fc_full, align 4
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %125

77:                                               ; preds = %67, %62
  %78 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @e1000_fc_rx_pause, align 4
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %124

92:                                               ; preds = %82, %77
  %93 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @e1000_fc_tx_pause, align 4
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %123

107:                                              ; preds = %97, %92
  %108 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @e1000_fc_none, align 4
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %112, %107
  br label %123

123:                                              ; preds = %122, %102
  br label %124

124:                                              ; preds = %123, %87
  br label %125

125:                                              ; preds = %124, %72
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @e1000_media_type_copper, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %141 = call i32 @igb_force_mac_fc(%struct.e1000_hw* %140)
  br label %145

142:                                              ; preds = %125
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %144 = call i32 @igb_setup_link(%struct.e1000_hw* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi i32 [ %141, %139 ], [ %144, %142 ]
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %145, %61
  %148 = load i32, i32* @__IGB_RESETTING, align 4
  %149 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %149, i32 0, i32 1
  %151 = call i32 @clear_bit(i32 %148, i32* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %20
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @igb_down(%struct.igb_adapter*) #1

declare dso_local i32 @igb_up(%struct.igb_adapter*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i32 @igb_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @igb_setup_link(%struct.e1000_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
