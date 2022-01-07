; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.wl12xx_vif = type { i64*, i32* }

@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DROP skb with no vif\00", align 1
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@WLCORE_QUEUE_STOP_REASON_WATERMARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DROP skb hlid %d q %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"queue skb hlid %d q %d len %d\00", align 1
@WL1271_TX_QUEUE_HIGH_WATERMARK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"op_tx: stopping queues for q %d\00", align 1
@WL1271_FLAG_FW_TX_BUSY = common dso_local global i64 0, align 8
@WL1271_FLAG_TX_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @wl1271_op_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_op_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.wl1271*, %struct.wl1271** %16, align 8
  store %struct.wl1271* %17, %struct.wl1271** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %8, align 8
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %22, align 8
  store %struct.ieee80211_vif* %23, %struct.ieee80211_vif** %9, align 8
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %10, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %25 = icmp ne %struct.ieee80211_vif* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @DEBUG_TX, align 4
  %28 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %29, %struct.sk_buff* %30)
  br label %167

32:                                               ; preds = %3
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %34 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %33)
  store %struct.wl12xx_vif* %34, %struct.wl12xx_vif** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @wl1271_tx_get_queue(i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wl12xx_tx_get_hlid(%struct.wl1271* %39, %struct.wl12xx_vif* %40, %struct.sk_buff* %41, i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %73, label %53

53:                                               ; preds = %32
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %56 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @test_bit(i64 %54, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %62 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @wlcore_is_queue_stopped_locked(%struct.wl1271* %61, %struct.wl12xx_vif* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_WATERMARK, align 4
  %71 = call i32 @wlcore_is_queue_stopped_by_reason_locked(%struct.wl1271* %67, %struct.wl12xx_vif* %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %66, %53, %32
  %74 = load i32, i32* @DEBUG_TX, align 4
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %75, i32 %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %78, %struct.sk_buff* %79)
  br label %162

81:                                               ; preds = %66, %60
  %82 = load i32, i32* @DEBUG_TX, align 4
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %83, i32 %84, i32 %87)
  %89 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 5
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @skb_queue_tail(i32* %98, %struct.sk_buff* %99)
  %101 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %110 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %118 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WL1271_TX_QUEUE_HIGH_WATERMARK, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %81
  %127 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %128 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_WATERMARK, align 4
  %131 = call i32 @wlcore_is_queue_stopped_by_reason_locked(%struct.wl1271* %127, %struct.wl12xx_vif* %128, i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @DEBUG_TX, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %138 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_WATERMARK, align 4
  %141 = call i32 @wlcore_stop_queue_locked(%struct.wl1271* %137, %struct.wl12xx_vif* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %133, %126, %81
  %143 = load i64, i64* @WL1271_FLAG_FW_TX_BUSY, align 8
  %144 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 3
  %146 = call i32 @test_bit(i64 %143, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %142
  %149 = load i64, i64* @WL1271_FLAG_TX_PENDING, align 8
  %150 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %151 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %150, i32 0, i32 3
  %152 = call i32 @test_bit(i64 %149, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %148
  %155 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %156 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %159 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %158, i32 0, i32 1
  %160 = call i32 @ieee80211_queue_work(i32 %157, i32* %159)
  br label %161

161:                                              ; preds = %154, %148, %142
  br label %162

162:                                              ; preds = %161, %73
  %163 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 0
  %165 = load i64, i64* %11, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  br label %167

167:                                              ; preds = %162, %26
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i64 @wl12xx_tx_get_hlid(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i64 @wlcore_is_queue_stopped_locked(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wlcore_is_queue_stopped_by_reason_locked(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wlcore_stop_queue_locked(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
