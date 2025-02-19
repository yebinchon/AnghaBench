; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.b43_dmaring* }
%struct.b43_dmaring = type { i32, i32, i8*, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@B43_DBG_DMAVERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Packet after queue stopped\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@TX_SLOTS_PER_FRAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA queue overflow\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DMA tx mapping failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Stopped TX ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_dma_tx(%struct.b43_wldev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.b43_dmaring*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %10)
  store %struct.ieee80211_tx_info* %11, %struct.ieee80211_tx_info** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %6, align 8
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.b43_dmaring*, %struct.b43_dmaring** %25, align 8
  store %struct.b43_dmaring* %26, %struct.b43_dmaring** %5, align 8
  %27 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i8* @skb_get_queue_mapping(%struct.sk_buff* %35)
  %37 = call %struct.b43_dmaring* @select_ring_by_priority(%struct.b43_wldev* %34, i8* %36)
  store %struct.b43_dmaring* %37, %struct.b43_dmaring** %5, align 8
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %40 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @B43_WARN_ON(i32 %44)
  %46 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %47 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %38
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_DBG_DMAVERBOSE, align 4
  %54 = call i64 @b43_debug(%struct.b43_wldev* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @b43err(%struct.TYPE_5__* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %156

64:                                               ; preds = %38
  %65 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %66 = call i64 @free_slots(%struct.b43_dmaring* %65)
  %67 = load i64, i64* @TX_SLOTS_PER_FRAME, align 8
  %68 = icmp slt i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @b43err(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ENOSPC, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %156

80:                                               ; preds = %64
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i8* @skb_get_queue_mapping(%struct.sk_buff* %81)
  %83 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %84 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @dma_tx_fragment(%struct.b43_dmaring* %85, %struct.sk_buff* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @ENOKEY, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %80
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @ieee80211_free_txskb(i32 %100, %struct.sk_buff* %101)
  store i32 0, i32* %7, align 4
  br label %156

103:                                              ; preds = %80
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = call i32 @b43err(%struct.TYPE_5__* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %156

112:                                              ; preds = %103
  %113 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %114 = call i64 @free_slots(%struct.b43_dmaring* %113)
  %115 = load i64, i64* @TX_SLOTS_PER_FRAME, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %119 = call i64 @should_inject_overflow(%struct.b43_dmaring* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %117, %112
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i8* @skb_get_queue_mapping(%struct.sk_buff* %122)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %9, align 4
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @ieee80211_stop_queue(i32 %129, i32 %130)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %133 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 1, i32* %139, align 4
  %140 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %141 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %143 = load i32, i32* @B43_DBG_DMAVERBOSE, align 4
  %144 = call i64 @b43_debug(%struct.b43_wldev* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %121
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %148 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load %struct.b43_dmaring*, %struct.b43_dmaring** %5, align 8
  %151 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @b43dbg(%struct.TYPE_5__* %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %146, %121
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %107, %95, %73, %61
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.b43_dmaring* @select_ring_by_priority(%struct.b43_wldev*, i8*) #1

declare dso_local i8* @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43_debug(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @free_slots(%struct.b43_dmaring*) #1

declare dso_local i32 @dma_tx_fragment(%struct.b43_dmaring*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i64 @should_inject_overflow(%struct.b43_dmaring*) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @b43dbg(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
