; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_hostap_setup_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_hostap_setup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32, i32*, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32 }

@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@hostap_iw_handler_def = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@hostap_mgmt_netdev_ops = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@hostap_80211_ops = common dso_local global i32 0, align 4
@hostap_master_ops = common dso_local global i32 0, align 4
@hostap_netdev_ops = common dso_local global i32 0, align 4
@prism2_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_setup_dev(%struct.net_device* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostap_interface*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %8)
  store %struct.hostap_interface* %9, %struct.hostap_interface** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @ether_setup(%struct.net_device* %10)
  %12 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.TYPE_7__* @netdev_extended(%struct.net_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %20 = icmp ne %struct.hostap_interface* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %23 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %22, i32 0, i32 1
  %24 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %25 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load %struct.hostap_interface*, %struct.hostap_interface** %7, align 8
  %28 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 7
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 6
  store i32* @hostap_iw_handler_def, i32** %33, align 8
  %34 = load i32, i32* @TX_TIMEOUT, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %51 [
    i32 129, label %38
    i32 128, label %48
  ]

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  store i32* @hostap_mgmt_netdev_ops, i32** %42, align 8
  %43 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 3
  store i32* @hostap_80211_ops, i32** %47, align 8
  br label %56

48:                                               ; preds = %31
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  store i32* @hostap_master_ops, i32** %50, align 8
  br label %56

51:                                               ; preds = %31
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  store i32* @hostap_netdev_ops, i32** %55, align 8
  br label %56

56:                                               ; preds = %51, %48, %38
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %62, i32* @prism2_ethtool_ops)
  ret void
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local %struct.TYPE_7__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
