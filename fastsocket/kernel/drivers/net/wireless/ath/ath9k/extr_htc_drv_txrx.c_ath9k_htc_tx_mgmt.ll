; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.ath9k_htc_vif = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.ieee80211_mgmt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.tx_mgmt_hdr = type { i64, i32, i8*, i8*, i64, i64, i8*, i8*, i32 }
%struct.ath9k_htc_tx_ctl = type { i64, i32, i8*, i8*, i64, i64, i8*, i8*, i32 }

@ATH9K_HTC_MGMT = common dso_local global i32 0, align 4
@ATH9K_KEY_TYPE_CLEAR = common dso_local global i64 0, align 8
@ATH9K_TXKEYIX_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ath9k_htc_vif*, %struct.sk_buff*, i8*, i8*, i8*)* @ath9k_htc_tx_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_tx_mgmt(%struct.ath9k_htc_priv* %0, %struct.ath9k_htc_vif* %1, %struct.sk_buff* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ath9k_htc_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_mgmt*, align 8
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca %struct.tx_mgmt_hdr, align 8
  %17 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %18 = alloca i8**, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %7, align 8
  store %struct.ath9k_htc_vif* %1, %struct.ath9k_htc_vif** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call %struct.tx_mgmt_hdr* @HTC_SKB_CB(%struct.sk_buff* %21)
  %23 = bitcast %struct.tx_mgmt_hdr* %22 to %struct.ath9k_htc_tx_ctl*
  store %struct.ath9k_htc_tx_ctl* %23, %struct.ath9k_htc_tx_ctl** %17, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %27, %struct.ieee80211_hdr** %15, align 8
  %28 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %17, align 8
  %29 = bitcast %struct.ath9k_htc_tx_ctl* %28 to %struct.tx_mgmt_hdr*
  %30 = call i32 @memset(%struct.tx_mgmt_hdr* %29, i32 0, i32 72)
  %31 = call i32 @memset(%struct.tx_mgmt_hdr* %16, i32 0, i32 72)
  %32 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %8, align 8
  %33 = icmp ne %struct.ath9k_htc_vif* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %6
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ieee80211_is_probe_resp(i32 %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %45, %struct.ieee80211_mgmt** %14, align 8
  %46 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %8, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %50 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %41, %34, %6
  %54 = load i32, i32* @ATH9K_HTC_MGMT, align 4
  %55 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %17, align 8
  %56 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 7
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 6
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 3
  store i8* %63, i8** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = call i64 @ath9k_cmn_get_hw_crypto_keytype(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATH9K_KEY_TYPE_CLEAR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %53
  %73 = load i64, i64* @ATH9K_TXKEYIX_INVALID, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  br label %84

76:                                               ; preds = %53
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.tx_mgmt_hdr, %struct.tx_mgmt_hdr* %16, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %72
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call i8** @skb_push(%struct.sk_buff* %85, i32 72)
  store i8** %86, i8*** %18, align 8
  %87 = load i8**, i8*** %18, align 8
  %88 = bitcast %struct.tx_mgmt_hdr* %16 to i8**
  %89 = call i32 @memcpy(i8** %87, i8** %88, i32 72)
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %91 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %17, align 8
  %94 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.tx_mgmt_hdr* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.tx_mgmt_hdr*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ath9k_cmn_get_hw_crypto_keytype(%struct.sk_buff*) #1

declare dso_local i8** @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
