; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_ap_update_inconnection_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_ap_update_inconnection_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.sk_buff*)* @wl1271_tx_ap_update_inconnection_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_tx_ap_update_inconnection_sta(%struct.wl1271* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 4
  %10 = inttoptr i64 %9 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %10, %struct.ieee80211_hdr** %5, align 8
  %11 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ieee80211_is_auth(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wl1271_acx_set_inconnection_sta(%struct.wl1271* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i32 @wl1271_acx_set_inconnection_sta(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
