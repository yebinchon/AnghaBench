; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hdl_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_hdl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_tx_queue* }
%struct.il_tx_queue = type { %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_tx_info = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.il3945_tx_resp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"Read idx for DMA queue txq_id (%d) idx %d is out of range [0-%d] %d %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@TX_STATUS_MSK = common dso_local global i32 0, align 4
@TX_STATUS_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Tx queue %d Status %s (0x%08x) plcp rate %d retries %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Tx queue reclaim %d\0A\00", align 1
@TX_ABORT_REQUIRED_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"TODO:  Implement Tx ABORT REQUIRED!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il3945_hdl_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_hdl_tx(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_tx_queue*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.il3945_tx_resp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %15 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %16 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %15)
  store %struct.il_rx_pkt* %16, %struct.il_rx_pkt** %5, align 8
  %17 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %18 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SEQ_TO_QUEUE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SEQ_TO_IDX(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = load %struct.il_tx_queue*, %struct.il_tx_queue** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %28, i64 %30
  store %struct.il_tx_queue* %31, %struct.il_tx_queue** %9, align 8
  %32 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %33 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8* %37 to %struct.il3945_tx_resp*
  store %struct.il3945_tx_resp* %38, %struct.il3945_tx_resp** %11, align 8
  %39 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %40 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %45 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %43, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %2
  %50 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %51 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @il_queue_used(%struct.TYPE_10__* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %49, %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %59 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %63 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %67 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %61, i32 %65, i64 %69)
  br label %158

71:                                               ; preds = %49
  %72 = load i32, i32* @jiffies, align 4
  %73 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %74 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %76 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.il_tx_queue*, %struct.il_tx_queue** %9, align 8
  %79 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %83)
  store %struct.ieee80211_tx_info* %84, %struct.ieee80211_tx_info** %10, align 8
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %86 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %85)
  %87 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %88 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @il3945_hwrate_to_plcp_idx(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %92 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %71
  %97 = load i64, i64* @IL_FIRST_OFDM_RATE, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %96, %71
  %103 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %104 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %116 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 %114, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @TX_STATUS_MSK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @TX_STATUS_SUCCESS, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %102
  %127 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  br label %129

128:                                              ; preds = %102
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %132 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @il3945_get_tx_fail_reason(i32 %136)
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %140 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.il3945_tx_resp*, %struct.il3945_tx_resp** %11, align 8
  %143 = getelementptr inbounds %struct.il3945_tx_resp, %struct.il3945_tx_resp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @D_TX(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %137, i32 %138, i32 %141, i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @D_TX_REPLY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @il3945_tx_queue_reclaim(%struct.il_priv* %148, i32 %149, i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @TX_ABORT_REQUIRED_MSK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %129
  %157 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %55, %156, %129
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i32) #1

declare dso_local i32 @SEQ_TO_IDX(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @il_queue_used(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @il3945_hwrate_to_plcp_idx(i32) #1

declare dso_local i32 @D_TX(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @il3945_get_tx_fail_reason(i32) #1

declare dso_local i32 @D_TX_REPLY(i8*, i32) #1

declare dso_local i32 @il3945_tx_queue_reclaim(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
