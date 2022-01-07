; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_handle_mgmt_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_handle_mgmt_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.ipw_rx_mem_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32, i32, i64 }
%struct.libipw_rx_stats = type { i32 }
%struct.ipw_rx_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.libipw_hdr_4addr = type { i32, i32, i32 }

@IPW_RX_FRAME_SIZE = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_STYPE_PROBE_RESP = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BEACON = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CFG_NET_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sending stat packet\0A\00", align 1
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_80211_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, %struct.ipw_rx_mem_buffer*, %struct.libipw_rx_stats*)* @ipw_handle_mgmt_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_handle_mgmt_packet(%struct.ipw_priv* %0, %struct.ipw_rx_mem_buffer* %1, %struct.libipw_rx_stats* %2) #0 {
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.ipw_rx_mem_buffer*, align 8
  %6 = alloca %struct.libipw_rx_stats*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ipw_rx_packet*, align 8
  %9 = alloca %struct.libipw_hdr_4addr*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.ipw_rx_mem_buffer* %1, %struct.ipw_rx_mem_buffer** %5, align 8
  store %struct.libipw_rx_stats* %2, %struct.libipw_rx_stats** %6, align 8
  %10 = load %struct.ipw_rx_mem_buffer*, %struct.ipw_rx_mem_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.ipw_rx_mem_buffer, %struct.ipw_rx_mem_buffer* %10, i32 0, i32 0
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ipw_rx_packet*
  store %struct.ipw_rx_packet* %16, %struct.ipw_rx_packet** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPW_RX_FRAME_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to %struct.libipw_hdr_4addr*
  store %struct.libipw_hdr_4addr* %22, %struct.libipw_hdr_4addr** %9, align 8
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %9, align 8
  %27 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %28 = call i32 @libipw_rx_mgt(%struct.TYPE_6__* %25, %struct.libipw_hdr_4addr* %26, %struct.libipw_rx_stats* %27)
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IW_MODE_ADHOC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %3
  %37 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %9, align 8
  %38 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  %41 = call i64 @WLAN_FC_GET_STYPE(i64 %40)
  %42 = load i64, i64* @IEEE80211_STYPE_PROBE_RESP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %9, align 8
  %46 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le16_to_cpu(i32 %47)
  %49 = call i64 @WLAN_FC_GET_STYPE(i64 %48)
  %50 = load i64, i64* @IEEE80211_STYPE_BEACON, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %44, %36
  %53 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %9, align 8
  %54 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcmp(i32 %55, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %64 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %9, align 8
  %65 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ipw_add_station(%struct.ipw_priv* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %52
  br label %69

69:                                               ; preds = %68, %44, %3
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CFG_NET_STATS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %69
  %77 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load %struct.ipw_rx_packet*, %struct.ipw_rx_packet** %8, align 8
  %80 = getelementptr inbounds %struct.ipw_rx_packet, %struct.ipw_rx_packet* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le16_to_cpu(i32 %83)
  %85 = load i64, i64* @IPW_RX_FRAME_SIZE, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @skb_put(%struct.sk_buff* %78, i64 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load i64, i64* @IPW_RX_FRAME_SIZE, align 8
  %90 = call i32 @skb_pull(%struct.sk_buff* %88, i64 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @skb_push(%struct.sk_buff* %91, i32 4)
  %93 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %94 = call i32 @memcpy(i32 %92, %struct.libipw_rx_stats* %93, i32 4)
  %95 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %96 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i32 @skb_reset_mac_header(%struct.sk_buff* %102)
  %104 = load i32, i32* @PACKET_OTHERHOST, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @ETH_P_80211_STATS, align 4
  %108 = call i32 @cpu_to_be16(i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @memset(i32 %113, i32 0, i32 4)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = call i32 @netif_rx(%struct.sk_buff* %115)
  %117 = load %struct.ipw_rx_mem_buffer*, %struct.ipw_rx_mem_buffer** %5, align 8
  %118 = getelementptr inbounds %struct.ipw_rx_mem_buffer, %struct.ipw_rx_mem_buffer* %117, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %118, align 8
  br label %119

119:                                              ; preds = %76, %69
  ret void
}

declare dso_local i32 @libipw_rx_mgt(%struct.TYPE_6__*, %struct.libipw_hdr_4addr*, %struct.libipw_rx_stats*) #1

declare dso_local i64 @WLAN_FC_GET_STYPE(i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ipw_add_station(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.libipw_rx_stats*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
