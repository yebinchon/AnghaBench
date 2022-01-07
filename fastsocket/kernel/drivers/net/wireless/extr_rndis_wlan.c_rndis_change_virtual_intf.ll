; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_change_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_change_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.vif_params = type { i32 }
%struct.rndis_wlan_private = type { %struct.TYPE_2__, %struct.usbnet* }
%struct.TYPE_2__ = type { i32 }
%struct.usbnet = type { i32 }

@NDIS_80211_INFRA_ADHOC = common dso_local global i32 0, align 4
@NDIS_80211_INFRA_INFRA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32*, %struct.vif_params*)* @rndis_change_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_change_virtual_intf(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.vif_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.rndis_wlan_private*, align 8
  %13 = alloca %struct.usbnet*, align 8
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %16 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %15)
  store %struct.rndis_wlan_private* %16, %struct.rndis_wlan_private** %12, align 8
  %17 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %12, align 8
  %18 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %17, i32 0, i32 1
  %19 = load %struct.usbnet*, %struct.usbnet** %18, align 8
  store %struct.usbnet* %19, %struct.usbnet** %13, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %25 [
    i32 129, label %21
    i32 128, label %23
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* @NDIS_80211_INFRA_ADHOC, align 4
  store i32 %22, i32* %14, align 4
  br label %28

23:                                               ; preds = %5
  %24 = load i32, i32* @NDIS_80211_INFRA_INFRA, align 4
  store i32 %24, i32* %14, align 4
  br label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %12, align 8
  %31 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.usbnet*, %struct.usbnet** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @set_infra_mode(%struct.usbnet* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @set_infra_mode(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
