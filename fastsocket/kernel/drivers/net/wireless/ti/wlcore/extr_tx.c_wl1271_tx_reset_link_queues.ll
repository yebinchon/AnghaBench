; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_reset_link_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_reset_link_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, i32, i32, %struct.wl1271_link* }
%struct.wl1271_link = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"link freeing skb 0x%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1271_tx_reset_link_queues(%struct.wl1271* %0, i64 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
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
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %73, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NUM_TX_QUEUES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %15, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %66, %25
  %30 = load %struct.wl1271_link*, %struct.wl1271_link** %11, align 8
  %31 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call %struct.sk_buff* @skb_dequeue(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %5, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %72

38:                                               ; preds = %29
  %39 = load i32, i32* @DEBUG_TX, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @wl1271_debug(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %40)
  %42 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %42, %struct.sk_buff* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %47)
  store %struct.ieee80211_tx_info* %48, %struct.ieee80211_tx_info** %8, align 8
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @ieee80211_tx_status_ni(i32 %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %46, %38
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %15, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %29

72:                                               ; preds = %29
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %21

76:                                               ; preds = %21
  %77 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %118, %76
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @NUM_TX_QUEUES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %121

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %15, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %91 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, %89
  store i32 %97, i32* %95, align 4
  %98 = load %struct.wl1271_link*, %struct.wl1271_link** %11, align 8
  %99 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %85
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %15, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wl1271_link*, %struct.wl1271_link** %11, align 8
  %108 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, %106
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %102, %85
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %81

121:                                              ; preds = %81
  %122 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %123 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %122, i32 0, i32 1
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %127 = call i32 @wl1271_handle_tx_low_watermark(%struct.wl1271* %126)
  %128 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %128)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #2

declare dso_local i32 @wl1271_debug(i32, i8*, %struct.sk_buff*) #2

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
