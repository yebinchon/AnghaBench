; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_packet_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_packet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.sk_buff**, i32, %struct.TYPE_8__ }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.tx_result = type { i64, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"SKB for packet %d is NULL\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@TX_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1251_TKIP_IV_SPACE = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"tx status id %u skb 0x%p failures %u rate 0x%x status 0x%x (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, %struct.tx_result*)* @wl1251_tx_packet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_tx_packet_cb(%struct.wl1251* %0, %struct.tx_result* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.tx_result*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store %struct.tx_result* %1, %struct.tx_result** %4, align 8
  %9 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %10 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %9, i32 0, i32 0
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %12 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %13 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %11, i64 %14
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %21 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wl1251_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %126

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %25)
  store %struct.ieee80211_tx_info* %26, %struct.ieee80211_tx_info** %5, align 8
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %24
  %34 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %35 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TX_SUCCESS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %41 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %33, %24
  %46 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %47 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %50, i64* %56, align 8
  %57 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %58 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %61 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32* @skb_pull(%struct.sk_buff* %65, i32 4)
  store i32* %66, i32** %8, align 8
  %67 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %45
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @memmove(i32* %87, i32* %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %93 = call i32* @skb_pull(%struct.sk_buff* %91, i32 %92)
  br label %94

94:                                               ; preds = %81, %72, %45
  %95 = load i32, i32* @DEBUG_TX, align 4
  %96 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %97 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %101 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %104 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %107 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %110 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @wl1251_tx_parse_status(i32 %111)
  %113 = call i32 @wl1251_debug(i32 %95, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %98, %struct.sk_buff* %99, i32 %102, i32 %105, i32 %108, i32 %112)
  %114 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %115 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call i32 @ieee80211_tx_status(i32 %116, %struct.sk_buff* %117)
  %119 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %120 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %119, i32 0, i32 0
  %121 = load %struct.sk_buff**, %struct.sk_buff*** %120, align 8
  %122 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %123 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %121, i64 %124
  store %struct.sk_buff* null, %struct.sk_buff** %125, align 8
  br label %126

126:                                              ; preds = %94, %19
  ret void
}

declare dso_local i32 @wl1251_error(i8*, i64) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i64, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_tx_parse_status(i32) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
