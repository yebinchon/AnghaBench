; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_compressed_ba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hdl_compressed_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i64, %struct.TYPE_9__*, %struct.il_tx_queue*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.il_ht_agg }
%struct.il_ht_agg = type { i64, i64, i64, i64, i32 }
%struct.il_tx_queue = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.il_compressed_ba_resp }
%struct.il_compressed_ba_resp = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"BUG_ON scd_flow is bigger than number of queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"BA scd_flow %d does not match txq_id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"N_COMPRESSED_BA [%d] Received from %pM, sta_id = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"TID = %d, SeqCtl = %d, bitmap = 0x%llx,scd_flow = %d, scd_ssn = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"DAT start_idx = %d, bitmap = 0x%llx\0A\00", align 1
@IL_EMPTYING_HW_QUEUE_DELBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il4965_hdl_compressed_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_hdl_compressed_ba(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_compressed_ba_resp*, align 8
  %7 = alloca %struct.il_tx_queue*, align 8
  %8 = alloca %struct.il_ht_agg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %16 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %17 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %16)
  store %struct.il_rx_pkt* %17, %struct.il_rx_pkt** %5, align 8
  %18 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.il_compressed_ba_resp* %20, %struct.il_compressed_ba_resp** %6, align 8
  store %struct.il_tx_queue* null, %struct.il_tx_queue** %7, align 8
  %21 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %22 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le16_to_cpu(i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %26 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le16_to_cpu(i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @IL_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %179

37:                                               ; preds = %2
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 3
  %40 = load %struct.il_tx_queue*, %struct.il_tx_queue** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %40, i64 %41
  store %struct.il_tx_queue* %42, %struct.il_tx_queue** %7, align 8
  %43 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %44 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %47 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store %struct.il_ht_agg* %60, %struct.il_ht_agg** %8, align 8
  %61 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %62 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %37
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %72 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, i64, i64, ...) @D_TX_REPLY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %73)
  br label %179

75:                                               ; preds = %37
  %76 = load i64, i64* %14, align 8
  %77 = and i64 %76, 255
  %78 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %79 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @il_queue_dec_wrap(i64 %77, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %88 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %92 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %91, i32 0, i32 6
  %93 = ptrtoint i32* %92 to i64
  %94 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %95 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i64, i64, ...) @D_TX_REPLY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %90, i64 %93, i32 %96)
  %98 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %99 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %103 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %107 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @le64_to_cpu(i32 %108)
  %110 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %111 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %114 = getelementptr inbounds %struct.il_compressed_ba_resp, %struct.il_compressed_ba_resp* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i64, i64, ...) @D_TX_REPLY(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %101, i64 %105, i64 %109, i32 %112, i32 %115)
  %117 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %118 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %121 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i8*, i64, i64, ...) @D_TX_REPLY(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %119, i64 %122)
  %124 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %125 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %126 = load %struct.il_compressed_ba_resp*, %struct.il_compressed_ba_resp** %6, align 8
  %127 = call i32 @il4965_tx_status_reply_compressed_ba(%struct.il_priv* %124, %struct.il_ht_agg* %125, %struct.il_compressed_ba_resp* %126)
  %128 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %129 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = and i64 %132, 255
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %174

135:                                              ; preds = %75
  %136 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @il4965_tx_queue_reclaim(%struct.il_priv* %136, i64 %137, i32 %138)
  store i32 %139, i32* %15, align 4
  %140 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @il4965_free_tfds_in_queue(%struct.il_priv* %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %146 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %145, i32 0, i32 0
  %147 = call i64 @il_queue_space(%struct.TYPE_10__* %146)
  %148 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %149 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %147, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %135
  %154 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %155 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %160 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IL_EMPTYING_HW_QUEUE_DELBA, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %166 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %167 = call i32 @il_wake_queue(%struct.il_priv* %165, %struct.il_tx_queue* %166)
  br label %168

168:                                              ; preds = %164, %158, %153, %135
  %169 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i64, i64* %13, align 8
  %173 = call i32 @il4965_txq_check_empty(%struct.il_priv* %169, i32 %170, i32 %171, i64 %172)
  br label %174

174:                                              ; preds = %168, %75
  %175 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %176 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %175, i32 0, i32 0
  %177 = load i64, i64* %12, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  br label %179

179:                                              ; preds = %174, %69, %35
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @D_TX_REPLY(i8*, i64, i64, ...) #1

declare dso_local i32 @il_queue_dec_wrap(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @il4965_tx_status_reply_compressed_ba(%struct.il_priv*, %struct.il_ht_agg*, %struct.il_compressed_ba_resp*) #1

declare dso_local i32 @il4965_tx_queue_reclaim(%struct.il_priv*, i64, i32) #1

declare dso_local i32 @il4965_free_tfds_in_queue(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i64 @il_queue_space(%struct.TYPE_10__*) #1

declare dso_local i32 @il_wake_queue(%struct.il_priv*, %struct.il_tx_queue*) #1

declare dso_local i32 @il4965_txq_check_empty(%struct.il_priv*, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
