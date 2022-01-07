; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_status_reply_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_status_reply_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.sk_buff** }
%struct.sk_buff = type { i64 }
%struct.il_ht_agg = type { i32, i32, i32, i32, i32 }
%struct.il4965_tx_resp = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.agg_tx_status* }
%struct.agg_tx_status = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"got tx response w/o block-ack\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"FrameCnt = %d, StartIdx=%d idx=%d\0A\00", align 1
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"1 Frame 0x%x failure :%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Rate Info rate_n_flags=%x\0A\00", align 1
@AGG_TX_STATE_FEW_BYTES_MSK = common dso_local global i32 0, align 4
@AGG_TX_STATE_ABORT_MSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"FrameCnt = %d, txq_id=%d idx=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"BUG_ON idx doesn't match seq control idx=%d, seq_idx=%d, seq=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"AGG Frame i=%d idx %d seq=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"start=%d bitmap=0x%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Frames %d start_idx=%d bitmap=0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_ht_agg*, %struct.il4965_tx_resp*, i32, i32)* @il4965_tx_status_reply_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_tx_status_reply_tx(%struct.il_priv* %0, %struct.il_ht_agg* %1, %struct.il4965_tx_resp* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.il_ht_agg*, align 8
  %9 = alloca %struct.il4965_tx_resp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.agg_tx_status*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store %struct.il_ht_agg* %1, %struct.il_ht_agg** %8, align 8
  store %struct.il4965_tx_resp* %2, %struct.il4965_tx_resp** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %9, align 8
  %26 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.agg_tx_status*, %struct.agg_tx_status** %27, align 8
  store %struct.agg_tx_status* %28, %struct.agg_tx_status** %13, align 8
  store %struct.ieee80211_tx_info* null, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_hdr* null, %struct.ieee80211_hdr** %15, align 8
  %29 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %9, align 8
  %30 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %34 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %5
  %40 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %9, align 8
  %41 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %44 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %47 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %50 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %52 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  %53 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %54 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %122

57:                                               ; preds = %39
  %58 = load %struct.agg_tx_status*, %struct.agg_tx_status** %13, align 8
  %59 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %58, i64 0
  %60 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %19, align 4
  %64 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %65 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %68 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %19, align 4
  %71 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %70)
  %72 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %79, i64 %81
  %83 = load %struct.sk_buff*, %struct.sk_buff** %82, align 8
  %84 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %83)
  store %struct.ieee80211_tx_info* %84, %struct.ieee80211_tx_info** %14, align 8
  %85 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %9, align 8
  %86 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %91 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 %89, i64* %95, align 8
  %96 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @il4965_tx_status_to_mac80211(i32 %102)
  %104 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %111 = call i32 @il4965_hwrate_to_tx_control(%struct.il_priv* %108, i32 %109, %struct.ieee80211_tx_info* %110)
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 255
  %114 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %9, align 8
  %115 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %121 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  br label %286

122:                                              ; preds = %39
  store i32 0, i32* %21, align 4
  %123 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %124 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %126

126:                                              ; preds = %259, %122
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %129 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %262

132:                                              ; preds = %126
  %133 = load %struct.agg_tx_status*, %struct.agg_tx_status** %13, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %133, i64 %135
  %137 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le16_to_cpu(i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load %struct.agg_tx_status*, %struct.agg_tx_status** %13, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %140, i64 %142
  %144 = getelementptr inbounds %struct.agg_tx_status, %struct.agg_tx_status* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le16_to_cpu(i32 %145)
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @SEQ_TO_IDX(i32 %147)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @SEQ_TO_QUEUE(i32 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @AGG_TX_STATE_FEW_BYTES_MSK, align 4
  %153 = load i32, i32* @AGG_TX_STATE_ABORT_MSK, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %132
  br label %259

158:                                              ; preds = %132
  %159 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %160 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %19, align 4
  %164 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %162, i32 %163)
  %165 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %166 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %165, i32 0, i32 0
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load %struct.sk_buff**, %struct.sk_buff*** %171, align 8
  %173 = load i32, i32* %19, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %172, i64 %174
  %176 = load %struct.sk_buff*, %struct.sk_buff** %175, align 8
  store %struct.sk_buff* %176, %struct.sk_buff** %23, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %178 = icmp eq %struct.sk_buff* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i64 @WARN_ON_ONCE(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %158
  store i32 -1, i32* %6, align 4
  br label %287

183:                                              ; preds = %158
  %184 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %187, %struct.ieee80211_hdr** %15, align 8
  %188 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %189 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le16_to_cpu(i32 %190)
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %24, align 4
  %195 = call i64 @IEEE80211_SEQ_TO_SN(i32 %194)
  %196 = and i64 %195, 255
  %197 = icmp ne i64 %193, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %183
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %24, align 4
  %201 = call i64 @IEEE80211_SEQ_TO_SN(i32 %200)
  %202 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %203 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @IL_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %199, i64 %201, i32 %204)
  store i32 -1, i32* %6, align 4
  br label %287

206:                                              ; preds = %183
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %24, align 4
  %210 = call i64 @IEEE80211_SEQ_TO_SN(i32 %209)
  %211 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %207, i32 %208, i64 %210)
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %22, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = icmp sgt i32 %215, 64
  br i1 %216, label %217, label %226

217:                                              ; preds = %206
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sub nsw i32 %218, %219
  %221 = add nsw i32 %220, 255
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %18, align 4
  %224 = shl i32 %222, %223
  store i32 %224, i32* %21, align 4
  store i32 0, i32* %18, align 4
  %225 = load i32, i32* %19, align 4
  store i32 %225, i32* %22, align 4
  br label %247

226:                                              ; preds = %206
  %227 = load i32, i32* %18, align 4
  %228 = icmp slt i32 %227, -64
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* %19, align 4
  %232 = sub nsw i32 %230, %231
  %233 = sub nsw i32 255, %232
  store i32 %233, i32* %18, align 4
  br label %246

234:                                              ; preds = %226
  %235 = load i32, i32* %18, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %234
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %19, align 4
  %240 = sub nsw i32 %238, %239
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %22, align 4
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %18, align 4
  %244 = shl i32 %242, %243
  store i32 %244, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %245

245:                                              ; preds = %237, %234
  br label %246

246:                                              ; preds = %245, %229
  br label %247

247:                                              ; preds = %246, %217
  %248 = load i32, i32* %18, align 4
  %249 = zext i32 %248 to i64
  %250 = shl i64 1, %249
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = or i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %21, align 4
  %255 = load i32, i32* %22, align 4
  %256 = load i32, i32* %21, align 4
  %257 = sext i32 %256 to i64
  %258 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %255, i64 %257)
  br label %259

259:                                              ; preds = %247, %157
  %260 = load i32, i32* %17, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %17, align 4
  br label %126

262:                                              ; preds = %126
  %263 = load i32, i32* %21, align 4
  %264 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %265 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %22, align 4
  %267 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %268 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 4
  %269 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %270 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %273 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %276 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = call i32 (i8*, ...) @D_TX_REPLY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %271, i32 %274, i64 %278)
  %280 = load i32, i32* %21, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %262
  %283 = load %struct.il_ht_agg*, %struct.il_ht_agg** %8, align 8
  %284 = getelementptr inbounds %struct.il_ht_agg, %struct.il_ht_agg* %283, i32 0, i32 0
  store i32 1, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %262
  br label %286

286:                                              ; preds = %285, %57
  store i32 0, i32* %6, align 4
  br label %287

287:                                              ; preds = %286, %198, %182
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @D_TX_REPLY(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @il4965_tx_status_to_mac80211(i32) #1

declare dso_local i32 @il4965_hwrate_to_tx_control(%struct.il_priv*, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @SEQ_TO_IDX(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @IL_ERR(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
