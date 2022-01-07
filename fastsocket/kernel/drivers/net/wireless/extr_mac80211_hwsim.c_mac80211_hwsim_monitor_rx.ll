; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_monitor_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_monitor_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.hwsim_radiotap_hdr = type { i32, i8*, i8*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_rate = type { i32, i32 }

@hwsim_mon = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PKTHDR_RADIOTAP_VERSION = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_RATE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_TSFT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_OFDM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_CCK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*)* @mac80211_hwsim_monitor_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hwsim_radiotap_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_rate*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %14, align 8
  store %struct.mac80211_hwsim_data* %15, %struct.mac80211_hwsim_data** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %20 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %18, %struct.ieee80211_tx_info* %19)
  store %struct.ieee80211_rate* %20, %struct.ieee80211_rate** %12, align 8
  %21 = load i32, i32* @hwsim_mon, align 4
  %22 = call i32 @netif_running(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %121

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %26, i32 72, i32 0, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %121

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i64 @skb_push(%struct.sk_buff* %33, i32 72)
  %35 = inttoptr i64 %34 to %struct.hwsim_radiotap_hdr*
  store %struct.hwsim_radiotap_hdr* %35, %struct.hwsim_radiotap_hdr** %9, align 8
  %36 = load i32, i32* @PKTHDR_RADIOTAP_VERSION, align 4
  %37 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %38 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = call i8* @cpu_to_le16(i32 72)
  %44 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %45 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* @IEEE80211_RADIOTAP_FLAGS, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @IEEE80211_RADIOTAP_RATE, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @IEEE80211_RADIOTAP_TSFT, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = load i32, i32* @IEEE80211_RADIOTAP_CHANNEL, align 4
  %56 = shl i32 1, %55
  %57 = or i32 %54, %56
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %60 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %63 = call i32 @__mac80211_hwsim_get_tsf(%struct.mac80211_hwsim_data* %62)
  %64 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %65 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 5
  %72 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %73 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %79 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %32
  %88 = load i32, i32* @IEEE80211_CHAN_OFDM, align 4
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %95

91:                                               ; preds = %32
  %92 = load i32, i32* @IEEE80211_CHAN_CCK, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %99 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @hwsim_mon, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = call i32 @skb_set_mac_header(%struct.sk_buff* %103, i32 0)
  %105 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @PACKET_OTHERHOST, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @ETH_P_802_2, align 4
  %112 = call i32 @htons(i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memset(i32 %117, i32 0, i32 4)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = call i32 @netif_rx(%struct.sk_buff* %119)
  br label %121

121:                                              ; preds = %95, %31, %24
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__mac80211_hwsim_get_tsf(%struct.mac80211_hwsim_data*) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
