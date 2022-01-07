; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_prism2_sta_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_prism2_sta_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.sk_buff = type { %struct.net_device*, i64 }
%struct.hostap_ieee80211_mgmt = type { i32, i32, i64, i64, i64, i32 }
%struct.hostap_skb_tx_data = type { i32, i32, i64, i64, i64, i32 }

@IEEE80211_MGMT_HDR_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@HOSTAP_SKB_TX_DATA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2_sta_send_mgmt(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.hostap_ieee80211_mgmt*, align 8
  %14 = alloca %struct.hostap_skb_tx_data*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %15, align 8
  %19 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.sk_buff* @dev_alloc_skb(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %98

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = call i64 @skb_put(%struct.sk_buff* %31, i64 %33)
  %35 = inttoptr i64 %34 to %struct.hostap_ieee80211_mgmt*
  store %struct.hostap_ieee80211_mgmt* %35, %struct.hostap_ieee80211_mgmt** %13, align 8
  %36 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %37 = bitcast %struct.hostap_ieee80211_mgmt* %36 to %struct.hostap_skb_tx_data*
  %38 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %39 = call i32 @memset(%struct.hostap_skb_tx_data* %37, i32 0, i32 %38)
  %40 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %45 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %47 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* @ETH_ALEN, align 8
  %51 = call i32 @memcpy(i64 %48, i32* %49, i64 %50)
  %52 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %53 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %15, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @ETH_ALEN, align 8
  %59 = call i32 @memcpy(i64 %54, i32* %57, i64 %58)
  %60 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %61 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* @ETH_ALEN, align 8
  %65 = call i32 @memcpy(i64 %62, i32* %63, i64 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %30
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @skb_put(%struct.sk_buff* %69, i64 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i64 %71, i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %30
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.hostap_skb_tx_data*
  store %struct.hostap_skb_tx_data* %79, %struct.hostap_skb_tx_data** %14, align 8
  %80 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %14, align 8
  %81 = call i32 @memset(%struct.hostap_skb_tx_data* %80, i32 0, i32 40)
  %82 = load i32, i32* @HOSTAP_SKB_TX_DATA_MAGIC, align 4
  %83 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %14, align 8
  %84 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.net_device*, %struct.net_device** %15, align 8
  %86 = call i32 @netdev_priv(%struct.net_device* %85)
  %87 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %14, align 8
  %88 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %15, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  store %struct.net_device* %89, %struct.net_device** %91, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = call i32 @skb_reset_mac_header(%struct.sk_buff* %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = call i32 @skb_reset_network_header(%struct.sk_buff* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = call i32 @dev_queue_xmit(%struct.sk_buff* %96)
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %75, %27
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(%struct.hostap_skb_tx_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
