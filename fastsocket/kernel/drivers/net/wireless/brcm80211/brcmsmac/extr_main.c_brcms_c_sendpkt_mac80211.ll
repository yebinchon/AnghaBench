; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_sendpkt_mac80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_sendpkt_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.scb }
%struct.scb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_sendpkt_mac80211(%struct.brcms_c_info* %0, %struct.sk_buff* %1, %struct.ieee80211_hw* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scb*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_hw* %2, %struct.ieee80211_hw** %7, align 8
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 0
  store %struct.scb* %11, %struct.scb** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %12)
  %14 = call i32 @brcms_ac_to_fifo(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.scb*, %struct.scb** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @brcms_c_d11hdrs_mac80211(%struct.brcms_c_info* %15, %struct.ieee80211_hw* %16, %struct.sk_buff* %17, %struct.scb* %18, i32 0, i32 1, i32 %19, i32 0)
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @brcms_c_tx(%struct.brcms_c_info* %21, %struct.sk_buff* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @brcms_ac_to_fifo(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @brcms_c_d11hdrs_mac80211(%struct.brcms_c_info*, %struct.ieee80211_hw*, %struct.sk_buff*, %struct.scb*, i32, i32, i32, i32) #1

declare dso_local i32 @brcms_c_tx(%struct.brcms_c_info*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
