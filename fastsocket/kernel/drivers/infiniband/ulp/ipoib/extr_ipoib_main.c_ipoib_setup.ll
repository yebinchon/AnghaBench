; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device*, i32 }

@ipoib_netdev_ops = common dso_local global i32 0, align 4
@ipoib_header_ops = common dso_local global i32 0, align 4
@ipoib_poll = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IPOIB_ENCAP_LEN = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@ARPHRD_INFINIBAND = common dso_local global i32 0, align 4
@ipoib_sendq_size = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@ipv4_bcast_addr = common dso_local global i32 0, align 4
@ipoib_pkey_poll = common dso_local global i32 0, align 4
@ipoib_mcast_join_task = common dso_local global i32 0, align 4
@ipoib_mcast_carrier_on_task = common dso_local global i32 0, align 4
@ipoib_ib_dev_flush_light = common dso_local global i32 0, align 4
@ipoib_ib_dev_flush_normal = common dso_local global i32 0, align 4
@ipoib_ib_dev_flush_heavy = common dso_local global i32 0, align 4
@ipoib_mcast_restart_task = common dso_local global i32 0, align 4
@ipoib_reap_ah = common dso_local global i32 0, align 4
@ipoib_reap_neigh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ipoib_dev_priv* %5, %struct.ipoib_dev_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 10
  store i32* @ipoib_netdev_ops, i32** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 9
  store i32* @ipoib_header_ops, i32** %9, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @ipoib_set_ethtool_ops(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 16
  %15 = load i32, i32* @ipoib_poll, align 4
  %16 = call i32 @netif_napi_add(%struct.net_device* %12, i32* %14, i32 %15, i32 100)
  %17 = load i32, i32* @HZ, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @IFF_BROADCAST, align 4
  %21 = load i32, i32* @IFF_MULTICAST, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @IPOIB_ENCAP_LEN, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @INFINIBAND_ALEN, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ipoib_sendq_size, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %41 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ipv4_bcast_addr, align 4
  %55 = load i32, i32* @INFINIBAND_ALEN, align 4
  %56 = call i32 @memcpy(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %59 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %58, i32 0, i32 15
  store %struct.net_device* %57, %struct.net_device** %59, align 8
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 14
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 13
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %67 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %66, i32 0, i32 12
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 11
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %72, i32 0, i32 10
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 9
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %79 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %78, i32 0, i32 8
  %80 = load i32, i32* @ipoib_pkey_poll, align 4
  %81 = call i32 @INIT_DELAYED_WORK(i32* %79, i32 %80)
  %82 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %83 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %82, i32 0, i32 7
  %84 = load i32, i32* @ipoib_mcast_join_task, align 4
  %85 = call i32 @INIT_DELAYED_WORK(i32* %83, i32 %84)
  %86 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %87 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %86, i32 0, i32 6
  %88 = load i32, i32* @ipoib_mcast_carrier_on_task, align 4
  %89 = call i32 @INIT_WORK(i32* %87, i32 %88)
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %91 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %90, i32 0, i32 5
  %92 = load i32, i32* @ipoib_ib_dev_flush_light, align 4
  %93 = call i32 @INIT_WORK(i32* %91, i32 %92)
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 4
  %96 = load i32, i32* @ipoib_ib_dev_flush_normal, align 4
  %97 = call i32 @INIT_WORK(i32* %95, i32 %96)
  %98 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %99 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %98, i32 0, i32 3
  %100 = load i32, i32* @ipoib_ib_dev_flush_heavy, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %103 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %102, i32 0, i32 2
  %104 = load i32, i32* @ipoib_mcast_restart_task, align 4
  %105 = call i32 @INIT_WORK(i32* %103, i32 %104)
  %106 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %107 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %106, i32 0, i32 1
  %108 = load i32, i32* @ipoib_reap_ah, align 4
  %109 = call i32 @INIT_DELAYED_WORK(i32* %107, i32 %108)
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %111 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %110, i32 0, i32 0
  %112 = load i32, i32* @ipoib_reap_neigh, align 4
  %113 = call i32 @INIT_DELAYED_WORK(i32* %111, i32 %112)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
