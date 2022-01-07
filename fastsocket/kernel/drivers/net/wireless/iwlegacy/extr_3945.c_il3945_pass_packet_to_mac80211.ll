; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_pass_packet_to_mac80211.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_pass_packet_to_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.il_priv = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.il_rx_buf = type { i32* }
%struct.ieee80211_rx_status = type { i32 }
%struct.il_rx_pkt = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.il3945_rx_frame_hdr = type { i64, i32 }
%struct.il3945_rx_frame_end = type { i32 }
%struct.sk_buff = type { i32 }

@IL39_RX_FRAME_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Corruption detected!\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Dropping packet while interface is not open.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dev_alloc_skb failed\0A\00", align 1
@il3945_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*, %struct.ieee80211_rx_status*)* @il3945_pass_packet_to_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_pass_packet_to_mac80211(%struct.il_priv* %0, %struct.il_rx_buf* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_rx_buf*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.il_rx_pkt*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.il3945_rx_frame_hdr*, align 8
  %10 = alloca %struct.il3945_rx_frame_end*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %14 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %15 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %14)
  store %struct.il_rx_pkt* %15, %struct.il_rx_pkt** %7, align 8
  %16 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %17 = call i64 @IL_RX_DATA(%struct.il_rx_pkt* %16)
  %18 = inttoptr i64 %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %8, align 8
  %19 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %20 = call %struct.il3945_rx_frame_hdr* @IL_RX_HDR(%struct.il_rx_pkt* %19)
  store %struct.il3945_rx_frame_hdr* %20, %struct.il3945_rx_frame_hdr** %9, align 8
  %21 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %22 = call %struct.il3945_rx_frame_end* @IL_RX_END(%struct.il_rx_pkt* %21)
  store %struct.il3945_rx_frame_end* %22, %struct.il3945_rx_frame_end** %10, align 8
  %23 = load %struct.il3945_rx_frame_hdr*, %struct.il3945_rx_frame_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.il3945_rx_frame_hdr, %struct.il3945_rx_frame_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @IL39_RX_FRAME_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 %33, %38
  %40 = icmp sgt i64 %32, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = call i32 @D_DROP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %114

46:                                               ; preds = %3
  %47 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @D_DROP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %114

57:                                               ; preds = %46
  %58 = call %struct.sk_buff* @dev_alloc_skb(i32 128)
  store %struct.sk_buff* %58, %struct.sk_buff** %12, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 @IL_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %114

63:                                               ; preds = %57
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @il3945_mod_params, i32 0, i32 0), align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %68 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %69 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %68)
  %70 = bitcast %struct.il_rx_pkt* %69 to %struct.ieee80211_hdr*
  %71 = load %struct.il3945_rx_frame_end*, %struct.il3945_rx_frame_end** %10, align 8
  %72 = getelementptr inbounds %struct.il3945_rx_frame_end, %struct.il3945_rx_frame_end* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %76 = call i32 @il_set_decrypted_flag(%struct.il_priv* %67, %struct.ieee80211_hdr* %70, i32 %74, %struct.ieee80211_rx_status* %75)
  br label %77

77:                                               ; preds = %66, %63
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %80 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.il3945_rx_frame_hdr*, %struct.il3945_rx_frame_hdr** %9, align 8
  %83 = getelementptr inbounds %struct.il3945_rx_frame_hdr, %struct.il3945_rx_frame_hdr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %7, align 8
  %87 = bitcast %struct.il_rx_pkt* %86 to i8*
  %88 = ptrtoint i8* %85 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @skb_add_rx_frag(%struct.sk_buff* %78, i32 0, i32* %81, i32 %91, i64 %92, i64 %93)
  %95 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @il_update_stats(%struct.il_priv* %95, i32 0, i32 %96, i64 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %99)
  %101 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %102 = call i32 @memcpy(i32 %100, %struct.ieee80211_rx_status* %101, i32 4)
  %103 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %107 = call i32 @ieee80211_rx(i32 %105, %struct.sk_buff* %106)
  %108 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %109 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.il_rx_buf*, %struct.il_rx_buf** %5, align 8
  %113 = getelementptr inbounds %struct.il_rx_buf, %struct.il_rx_buf* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %77, %61, %55, %44
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i64 @IL_RX_DATA(%struct.il_rx_pkt*) #1

declare dso_local %struct.il3945_rx_frame_hdr* @IL_RX_HDR(%struct.il_rx_pkt*) #1

declare dso_local %struct.il3945_rx_frame_end* @IL_RX_END(%struct.il_rx_pkt*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @D_DROP(i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il_set_decrypted_flag(%struct.il_priv*, %struct.ieee80211_hdr*, i32, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32*, i32, i64, i64) #1

declare dso_local i32 @il_update_stats(%struct.il_priv*, i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
