; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"dropped TX frame since radio disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @mwl8k_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mwl8k_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @wiphy_debug(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @dev_kfree_skb(%struct.sk_buff* %23)
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @mwl8k_txq_xmit(%struct.ieee80211_hw* %26, i32 %27, i32 %30, %struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @wiphy_debug(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mwl8k_txq_xmit(%struct.ieee80211_hw*, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
