; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_save_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_save_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @mwl8k_save_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_save_beacon(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mwl8k_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  store %struct.mwl8k_priv* %8, %struct.mwl8k_priv** %5, align 8
  %9 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = call i32 @memset(i32 %13, i32 0, i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i32* @skb_copy(%struct.sk_buff* %16, i32 %17)
  %19 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %27, i32 0, i32 1
  %29 = call i32 @ieee80211_queue_work(%struct.ieee80211_hw* %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_queue_work(%struct.ieee80211_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
