; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_ps.c_wl1271_ps_filter_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_ps.c_wl1271_ps_filter_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, i32, i32, %struct.wl1271_link* }
%struct.wl1271_link = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_TX_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i64)* @wl1271_ps_filter_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_ps_filter_frames(%struct.wl1271* %0, i64 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wl1271_link*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @NUM_TX_QUEUES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 3
  %18 = load %struct.wl1271_link*, %struct.wl1271_link** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %18, i64 %19
  store %struct.wl1271_link* %20, %struct.wl1271_link** %11, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %70, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NUM_TX_QUEUES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %15, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %50, %49, %25
  %30 = load %struct.wl1271_link*, %struct.wl1271_link** %11, align 8
  %31 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call %struct.sk_buff* @skb_dequeue(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %15, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %44, %struct.sk_buff* %45)
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %29

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %51)
  store %struct.ieee80211_tx_info* %52, %struct.ieee80211_tx_info** %7, align 8
  %53 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 4
  %64 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @ieee80211_tx_status_ni(i32 %66, %struct.sk_buff* %67)
  br label %29

69:                                               ; preds = %29
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %21

73:                                               ; preds = %21
  %74 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 1
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %115, %73
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @NUM_TX_QUEUES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %15, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, %86
  store i32 %94, i32* %92, align 4
  %95 = load %struct.wl1271_link*, %struct.wl1271_link** %11, align 8
  %96 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %82
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %15, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.wl1271_link*, %struct.wl1271_link** %11, align 8
  %105 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, %103
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %99, %82
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %78

118:                                              ; preds = %78
  %119 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 1
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %124 = call i32 @wl1271_handle_tx_low_watermark(%struct.wl1271* %123)
  %125 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @ieee80211_tx_status_ni(i32, %struct.sk_buff*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @wl1271_handle_tx_low_watermark(%struct.wl1271*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
