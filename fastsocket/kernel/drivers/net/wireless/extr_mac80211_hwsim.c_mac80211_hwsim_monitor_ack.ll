; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_monitor_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_monitor_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.hwsim_radiotap_hdr = type { i8*, i8*, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64, i32 }
%struct.ieee80211_hdr = type { i32, i8*, i8* }

@hwsim_mon = common dso_local global i32 0, align 4
@PKTHDR_RADIOTAP_VERSION = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*, i32*)* @mac80211_hwsim_monitor_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_monitor_ack(%struct.ieee80211_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hwsim_radiotap_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @hwsim_mon, align 4
  %10 = call i32 @netif_running(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %96

13:                                               ; preds = %2
  %14 = call %struct.sk_buff* @dev_alloc_skb(i32 100)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %96

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i64 @skb_put(%struct.sk_buff* %19, i32 64)
  %21 = inttoptr i64 %20 to %struct.hwsim_radiotap_hdr*
  store %struct.hwsim_radiotap_hdr* %21, %struct.hwsim_radiotap_hdr** %6, align 8
  %22 = load i32, i32* @PKTHDR_RADIOTAP_VERSION, align 4
  %23 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = call i8* @cpu_to_le16(i32 64)
  %30 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @IEEE80211_RADIOTAP_FLAGS, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @IEEE80211_RADIOTAP_CHANNEL, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %43 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i64 @skb_put(%struct.sk_buff* %57, i32 10)
  %59 = inttoptr i64 %58 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %59, %struct.ieee80211_hdr** %8, align 8
  %60 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %61 = load i32, i32* @IEEE80211_STYPE_ACK, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = call i8* @cpu_to_le16(i32 0)
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %71, i32* %72, i32 %73)
  %75 = load i32, i32* @hwsim_mon, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_set_mac_header(%struct.sk_buff* %78, i32 0)
  %80 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @PACKET_OTHERHOST, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @ETH_P_802_2, align 4
  %87 = call i32 @htons(i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memset(i32 %92, i32 0, i32 4)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @netif_rx(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %18, %17, %12
  ret void
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

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
