; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.rndis_wlan_private = type { i32, i32, %struct.usbnet* }
%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"cfg80211.leave_ibss()\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @rndis_leave_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_leave_ibss(%struct.wiphy* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rndis_wlan_private*, align 8
  %6 = alloca %struct.usbnet*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %7)
  store %struct.rndis_wlan_private* %8, %struct.rndis_wlan_private** %5, align 8
  %9 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %10 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %9, i32 0, i32 2
  %11 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  store %struct.usbnet* %11, %struct.usbnet** %6, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netdev_dbg(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %17 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %19 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %24 = call i32 @deauthenticate(%struct.usbnet* %23)
  ret i32 %24
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @deauthenticate(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
