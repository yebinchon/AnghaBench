; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, %struct.sk_buff**, i64* }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@WL12XX_MAX_LINKS = common dso_local global i32 0, align 4
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"freeing skb 0x%p\00", align 1
@WLCORE_QUIRK_TKIP_HEADER_SPACE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1271_EXTRA_SPACE_TKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_tx_reset(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %8 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @WL12XX_MAX_LINKS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @wl1271_tx_reset_link_queues(%struct.wl1271* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NUM_TX_QUEUES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 4
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %23

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = call i32 @wl1271_handle_tx_low_watermark(%struct.wl1271* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %137, %38
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %140

47:                                               ; preds = %41
  %48 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 3
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = icmp eq %struct.sk_buff* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %137

57:                                               ; preds = %47
  %58 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 3
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %62
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %4, align 8
  %65 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @wl1271_free_tx_id(%struct.wl1271* %65, i32 %66)
  %68 = load i32, i32* @DEBUG_TX, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @wl1271_debug(i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %69)
  %71 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %71, %struct.sk_buff* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %136, label %75

75:                                               ; preds = %57
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %76)
  store %struct.ieee80211_tx_info* %77, %struct.ieee80211_tx_info** %5, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @skb_pull(%struct.sk_buff* %78, i32 4)
  %80 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %75
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %118

92:                                               ; preds = %86
  %93 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %92
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @WL1271_EXTRA_SPACE_TKIP, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @memmove(i64 %109, i64 %112, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = load i32, i32* @WL1271_EXTRA_SPACE_TKIP, align 4
  %117 = call i32 @skb_pull(%struct.sk_buff* %115, i32 %116)
  br label %118

118:                                              ; preds = %101, %92, %86, %75
  %119 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %120 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 -1, i32* %124, align 8
  %125 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %126 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %132 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = call i32 @ieee80211_tx_status_ni(i32 %133, %struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %118, %57
  br label %137

137:                                              ; preds = %136, %56
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %41

140:                                              ; preds = %41
  ret void
}

declare dso_local i64 @wl1271_tx_total_queue_count(%struct.wl1271*) #1

declare dso_local i32 @wl1271_tx_reset_link_queues(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_handle_tx_low_watermark(%struct.wl1271*) #1

declare dso_local i32 @wl1271_free_tx_id(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @ieee80211_tx_status_ni(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
