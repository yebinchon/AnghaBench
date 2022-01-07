; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.ixgb_adapter = type { i32, %struct.ixgb_hw }
%struct.ixgb_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ixgb_fc_full = common dso_local global i32 0, align 4
@ixgb_fc_rx_pause = common dso_local global i32 0, align 4
@ixgb_fc_tx_pause = common dso_local global i32 0, align 4
@ixgb_fc_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ixgb_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.ixgb_adapter*, align 8
  %7 = alloca %struct.ixgb_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgb_adapter* %9, %struct.ixgb_adapter** %6, align 8
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 1
  store %struct.ixgb_hw* %11, %struct.ixgb_hw** %7, align 8
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AUTONEG_ENABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %2
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @ixgb_fc_full, align 4
  %32 = load %struct.ixgb_hw*, %struct.ixgb_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %83

35:                                               ; preds = %25, %20
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ixgb_fc_rx_pause, align 4
  %47 = load %struct.ixgb_hw*, %struct.ixgb_hw** %7, align 8
  %48 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %82

50:                                               ; preds = %40, %35
  %51 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @ixgb_fc_tx_pause, align 4
  %62 = load %struct.ixgb_hw*, %struct.ixgb_hw** %7, align 8
  %63 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %81

65:                                               ; preds = %55, %50
  %66 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ixgb_fc_none, align 4
  %77 = load %struct.ixgb_hw*, %struct.ixgb_hw** %7, align 8
  %78 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %70, %65
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %45
  br label %83

83:                                               ; preds = %82, %30
  %84 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @netif_running(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %91 = call i32 @ixgb_down(%struct.ixgb_adapter* %90, i32 1)
  %92 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %93 = call i32 @ixgb_up(%struct.ixgb_adapter* %92)
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @ixgb_set_speed_duplex(%struct.net_device* %94)
  br label %99

96:                                               ; preds = %83
  %97 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %98 = call i32 @ixgb_reset(%struct.ixgb_adapter* %97)
  br label %99

99:                                               ; preds = %96, %89
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %17
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @ixgb_down(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @ixgb_up(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_set_speed_duplex(%struct.net_device*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
