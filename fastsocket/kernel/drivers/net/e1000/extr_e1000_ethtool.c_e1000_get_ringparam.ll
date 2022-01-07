; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }
%struct.e1000_adapter = type { %struct.e1000_rx_ring*, %struct.e1000_tx_ring*, %struct.e1000_hw }
%struct.e1000_rx_ring = type { i32 }
%struct.e1000_tx_ring = type { i32 }
%struct.e1000_hw = type { i64 }

@e1000_82544 = common dso_local global i64 0, align 8
@E1000_MAX_RXD = common dso_local global i32 0, align 4
@E1000_MAX_82544_RXD = common dso_local global i32 0, align 4
@E1000_MAX_TXD = common dso_local global i32 0, align 4
@E1000_MAX_82544_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @e1000_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.e1000_tx_ring*, align 8
  %9 = alloca %struct.e1000_rx_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.e1000_adapter* %11, %struct.e1000_adapter** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 2
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
  %19 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %18, align 8
  store %struct.e1000_tx_ring* %19, %struct.e1000_tx_ring** %8, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %21, align 8
  store %struct.e1000_rx_ring* %22, %struct.e1000_rx_ring** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @e1000_82544, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @E1000_MAX_RXD, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @E1000_MAX_82544_RXD, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @e1000_82544, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @E1000_MAX_TXD, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @E1000_MAX_82544_TXD, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %9, align 8
  %46 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %51 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
