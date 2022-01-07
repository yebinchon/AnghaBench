; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_get_hlid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_get_hlid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tx offchannel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_tx_get_hlid(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %12 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %18 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %21 = call i32 @wl12xx_tx_get_hlid_ap(%struct.wl1271* %17, %struct.wl12xx_vif* %18, %struct.sk_buff* %19, %struct.ieee80211_sta* %20)
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %23)
  store %struct.ieee80211_tx_info* %24, %struct.ieee80211_tx_info** %10, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @DEBUG_TX, align 4
  %33 = call i32 @wl1271_debug(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %35 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %31, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @wl12xx_tx_get_hlid_ap(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, %struct.ieee80211_sta*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
