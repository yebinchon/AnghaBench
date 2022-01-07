; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_get_hw_crypto_keytype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_get_hw_crypto_keytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ATH9K_KEY_TYPE_WEP = common dso_local global i32 0, align 4
@ATH9K_KEY_TYPE_TKIP = common dso_local global i32 0, align 4
@ATH9K_KEY_TYPE_AES = common dso_local global i32 0, align 4
@ATH9K_KEY_TYPE_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_cmn_get_hw_crypto_keytype(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %5)
  store %struct.ieee80211_tx_info* %6, %struct.ieee80211_tx_info** %4, align 8
  %7 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %25 [
    i32 128, label %19
    i32 129, label %19
    i32 130, label %21
    i32 131, label %23
  ]

19:                                               ; preds = %12, %12
  %20 = load i32, i32* @ATH9K_KEY_TYPE_WEP, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load i32, i32* @ATH9K_KEY_TYPE_TKIP, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load i32, i32* @ATH9K_KEY_TYPE_AES, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* @ATH9K_KEY_TYPE_CLEAR, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %23, %21, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
