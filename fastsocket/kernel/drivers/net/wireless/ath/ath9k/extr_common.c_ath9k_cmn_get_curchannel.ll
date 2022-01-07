; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_get_curchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_get_curchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_channel = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.ath_hw = type { %struct.ath9k_channel* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath9k_channel* @ath9k_cmn_get_curchannel(%struct.ieee80211_hw* %0, %struct.ath_hw* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ath_hw* %1, %struct.ath_hw** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  store %struct.ieee80211_channel* %12, %struct.ieee80211_channel** %5, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = load %struct.ath9k_channel*, %struct.ath9k_channel** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %18, i64 %19
  store %struct.ath9k_channel* %20, %struct.ath9k_channel** %6, align 8
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %25)
  %27 = call i32 @ath9k_cmn_update_ichannel(%struct.ath9k_channel* %21, %struct.ieee80211_channel* %22, i32 %26)
  %28 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  ret %struct.ath9k_channel* %28
}

declare dso_local i32 @ath9k_cmn_update_ichannel(%struct.ath9k_channel*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
