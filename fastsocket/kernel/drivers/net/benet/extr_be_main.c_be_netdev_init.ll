; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_netdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i32 }
%struct.be_adapter = type { i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@be_netdev_ops = common dso_local global i32 0, align 4
@be_ethtool_ops = common dso_local global i32 0, align 4
@be_ethtool_ops_ext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @be_netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_netdev_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.be_adapter* %5, %struct.be_adapter** %3, align 8
  %6 = load i32, i32* @NETIF_F_SG, align 4
  %7 = load i32, i32* @NETIF_F_TSO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @NETIF_F_TSO6, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NETIF_F_GRO, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %28 = call i64 @be_multi_rxq(%struct.be_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @NETIF_F_RXHASH, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %30, %1
  %37 = load i32, i32* @NETIF_F_SG, align 4
  %38 = load i32, i32* @NETIF_F_TSO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NETIF_F_TSO6, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NETIF_F_GRO, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @IFF_MULTICAST, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i64, i64* @ETH_HLEN, align 8
  %61 = sub nsw i64 65535, %60
  %62 = call i32 @netif_set_gso_max_size(%struct.net_device* %59, i64 %61)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  store i32* @be_netdev_ops, i32** %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %65, i32* @be_ethtool_ops)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @set_ethtool_ops_ext(%struct.net_device* %67, i32* @be_ethtool_ops_ext)
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @be_multi_rxq(%struct.be_adapter*) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i64) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @set_ethtool_ops_ext(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
