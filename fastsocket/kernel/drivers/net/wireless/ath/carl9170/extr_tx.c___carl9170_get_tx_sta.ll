; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c___carl9170_get_tx_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c___carl9170_get_tx_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ar9170 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_vif = type { i32 }

@CARL9170_TX_SUPER_MISC_VIF_ID = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_MISC_VIF_ID_S = common dso_local global i32 0, align 4
@AR9170_MAX_VIRTUAL_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_sta* (%struct.ar9170*, %struct.sk_buff*)* @__carl9170_get_tx_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct._carl9170_tx_superframe*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %14, %struct._carl9170_tx_superframe** %6, align 8
  %15 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %6, align 8
  %16 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %7, align 8
  %20 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %6, align 8
  %21 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CARL9170_TX_SUPER_MISC_VIF_ID, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CARL9170_TX_SUPER_MISC_VIF_ID_S, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AR9170_MAX_VIRTUAL_MAC, align 4
  %30 = icmp uge i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %3, align 8
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %37 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ieee80211_vif* @rcu_dereference(i32 %43)
  store %struct.ieee80211_vif* %44, %struct.ieee80211_vif** %8, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %46 = icmp ne %struct.ieee80211_vif* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %3, align 8
  br label %58

52:                                               ; preds = %35
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %53, i32 %56)
  store %struct.ieee80211_sta* %57, %struct.ieee80211_sta** %3, align 8
  br label %58

58:                                               ; preds = %52, %51, %34
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  ret %struct.ieee80211_sta* %59
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ieee80211_vif* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
