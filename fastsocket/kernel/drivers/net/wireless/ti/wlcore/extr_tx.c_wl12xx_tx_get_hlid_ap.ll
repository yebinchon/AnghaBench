; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_get_hlid_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_get_hlid_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.wl1271_station = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@WLVIF_FLAG_AP_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, %struct.ieee80211_sta*)* @wl12xx_tx_get_hlid_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_tx_get_hlid_ap(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.wl1271_station*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %13 = icmp ne %struct.ieee80211_sta* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.wl1271_station*
  store %struct.wl1271_station* %18, %struct.wl1271_station** %10, align 8
  %19 = load %struct.wl1271_station*, %struct.wl1271_station** %10, align 8
  %20 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %51

22:                                               ; preds = %4
  %23 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %36, %struct.ieee80211_hdr** %11, align 8
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %38 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %37)
  %39 = call i64 @is_multicast_ether_addr(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %43 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  br label %51

46:                                               ; preds = %32
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %48 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %41, %28, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
