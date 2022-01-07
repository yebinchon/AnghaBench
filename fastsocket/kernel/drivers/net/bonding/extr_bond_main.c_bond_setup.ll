; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.net_device = type { i32, i32, i32, i64, i32, i32*, i32* }
%struct.bonding = type { %struct.TYPE_4__, i32, %struct.net_device*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@bonding_defaults = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@bond_netdev_ops = common dso_local global i32 0, align 4
@bond_ethtool_ops = common dso_local global i32 0, align 4
@bond_destructor = common dso_local global i32 0, align 4
@IFF_MASTER = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_BONDING = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@IFF_MASTER_ARPMON = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bond_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bonding*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bonding* @netdev_priv(%struct.net_device* %4)
  store %struct.bonding* %5, %struct.bonding** %3, align 8
  %6 = load %struct.bonding*, %struct.bonding** %3, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 4
  %8 = call i32 @rwlock_init(i32* %7)
  %9 = load %struct.bonding*, %struct.bonding** %3, align 8
  %10 = getelementptr inbounds %struct.bonding, %struct.bonding* %9, i32 0, i32 3
  %11 = call i32 @rwlock_init(i32* %10)
  %12 = load %struct.bonding*, %struct.bonding** %3, align 8
  %13 = getelementptr inbounds %struct.bonding, %struct.bonding* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_4__* @bonding_defaults to i8*), i64 16, i1 false)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load %struct.bonding*, %struct.bonding** %3, align 8
  %17 = getelementptr inbounds %struct.bonding, %struct.bonding* %16, i32 0, i32 2
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.bonding*, %struct.bonding** %3, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @ether_setup(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 6
  store i32* @bond_netdev_ops, i32** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 5
  store i32* @bond_ethtool_ops, i32** %26, align 8
  %27 = load %struct.bonding*, %struct.bonding** %3, align 8
  %28 = load %struct.bonding*, %struct.bonding** %3, align 8
  %29 = getelementptr inbounds %struct.bonding, %struct.bonding* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bond_set_mode_ops(%struct.bonding* %27, i32 %31)
  %33 = load i32, i32* @bond_destructor, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @IFF_MASTER, align 4
  %39 = load i32, i32* @IFF_MULTICAST, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @IFF_BONDING, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call %struct.TYPE_3__* @netdev_extended(%struct.net_device* %58)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.bonding*, %struct.bonding** %3, align 8
  %64 = getelementptr inbounds %struct.bonding, %struct.bonding* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %1
  %69 = load i32, i32* @IFF_MASTER_ARPMON, align 4
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %1
  %75 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NETIF_F_LLTX, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @NETIF_F_LRO, align 4
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %91 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @NETIF_F_GRO, align 4
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  ret void
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rwlock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @bond_set_mode_ops(%struct.bonding*, i32) #1

declare dso_local %struct.TYPE_3__* @netdev_extended(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
