; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.pch_gbe_adapter = type { %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@PCH_GBE_FC_RX_PAUSE = common dso_local global i64 0, align 8
@PCH_GBE_FC_TX_PAUSE = common dso_local global i64 0, align 8
@PCH_GBE_FC_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @pch_gbe_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca %struct.pch_gbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %5, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 0
  store %struct.pch_gbe_hw* %10, %struct.pch_gbe_hw** %6, align 8
  %11 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCH_GBE_FC_RX_PAUSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %57

33:                                               ; preds = %20
  %34 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCH_GBE_FC_TX_PAUSE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %6, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCH_GBE_FC_FULL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %30
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
