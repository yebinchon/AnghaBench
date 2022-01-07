; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.ixgb_adapter = type { %struct.ixgb_hw }
%struct.ixgb_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@ixgb_fc_rx_pause = common dso_local global i64 0, align 8
@ixgb_fc_tx_pause = common dso_local global i64 0, align 8
@ixgb_fc_full = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @ixgb_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ixgb_adapter*, align 8
  %6 = alloca %struct.ixgb_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgb_adapter* %8, %struct.ixgb_adapter** %5, align 8
  %9 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %9, i32 0, i32 0
  store %struct.ixgb_hw* %10, %struct.ixgb_hw** %6, align 8
  %11 = load i32, i32* @AUTONEG_DISABLE, align 4
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgb_fc_rx_pause, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %25 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ixgb_fc_tx_pause, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %46

33:                                               ; preds = %23
  %34 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %35 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ixgb_fc_full, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %20
  ret void
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
