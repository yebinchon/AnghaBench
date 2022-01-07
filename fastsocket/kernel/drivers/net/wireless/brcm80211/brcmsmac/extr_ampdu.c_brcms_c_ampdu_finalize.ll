; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_finalize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_ampdu_session = type { i32, i32, i32, %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ampdu_info* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ampdu_info = type { %struct.brcms_fifo_info* }
%struct.brcms_fifo_info = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.d11txh = type { i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64 }
%struct.ieee80211_rts = type { i8*, i32 }

@PHY_TXC1_BW_20MHZ = common dso_local global i32 0, align 4
@BRCMS_GF_PREAMBLE = common dso_local global i32 0, align 4
@BRCMS_LONG_PREAMBLE = common dso_local global i32 0, align 4
@TXFID_QUEUE_MASK = common dso_local global i32 0, align 4
@TXC_AMPDU_MASK = common dso_local global i32 0, align 4
@TXC_AMPDU_LAST = common dso_local global i32 0, align 4
@TXC_AMPDU_SHIFT = common dso_local global i32 0, align 4
@AMPDU_FBR_NULL_DELIM = common dso_local global i64 0, align 8
@AMPDU_DELIMITER_LEN = common dso_local global i32 0, align 4
@TXC_AMPDU_FIRST = common dso_local global i32 0, align 4
@TXC_STARTMSDU = common dso_local global i32 0, align 4
@TXC_SENDRTS = common dso_local global i32 0, align 4
@TXC_SENDCTS = common dso_local global i32 0, align 4
@MIMO_PLCP_40MHZ = common dso_local global i32 0, align 4
@PHY_TXC1_BW_20MHZ_UP = common dso_local global i32 0, align 4
@RSPEC_MIMORATE = common dso_local global i32 0, align 4
@PHY_TXC1_BW_40MHZ = common dso_local global i32 0, align 4
@RSPEC_BW_SHIFT = common dso_local global i32 0, align 4
@BRCMS_MM_PREAMBLE = common dso_local global i32 0, align 4
@TXC_PREAMBLE_RTS_MAIN_SHORT = common dso_local global i32 0, align 4
@BRCMS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@TXC_PREAMBLE_RTS_FB_SHORT = common dso_local global i32 0, align 4
@TXC_AMPDU_FBR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wl%d: count %d ampdu_len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_ampdu_finalize(%struct.brcms_ampdu_session* %0) #0 {
  %2 = alloca %struct.brcms_ampdu_session*, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.ampdu_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.d11txh*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.brcms_fifo_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_rts*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.brcms_ampdu_session* %0, %struct.brcms_ampdu_session** %2, align 8
  %40 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %40, i32 0, i32 3
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %41, align 8
  store %struct.brcms_c_info* %42, %struct.brcms_c_info** %3, align 8
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %44 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %43, i32 0, i32 3
  %45 = load %struct.ampdu_info*, %struct.ampdu_info** %44, align 8
  store %struct.ampdu_info* %45, %struct.ampdu_info** %4, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %46 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %47 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* @PHY_TXC1_BW_20MHZ, align 4
  store i32 %49, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %50 = load i32, i32* @BRCMS_GF_PREAMBLE, align 4
  store i32 %50, i32* %33, align 4
  %51 = load i32, i32* @BRCMS_GF_PREAMBLE, align 4
  store i32 %51, i32* %34, align 4
  %52 = load i32, i32* @BRCMS_LONG_PREAMBLE, align 4
  store i32 %52, i32* %35, align 4
  %53 = load i32, i32* @BRCMS_LONG_PREAMBLE, align 4
  store i32 %53, i32* %36, align 4
  %54 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %55 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %54, i32 0, i32 2
  %56 = call i64 @skb_queue_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %1
  br label %511

59:                                               ; preds = %1
  %60 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %60, i32 0, i32 2
  %62 = call %struct.sk_buff* @skb_peek(i32* %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %5, align 8
  %63 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %63, i32 0, i32 2
  %65 = call %struct.sk_buff* @skb_peek_tail(i32* %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.d11txh*
  store %struct.d11txh* %69, %struct.d11txh** %7, align 8
  %70 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %71 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %70, i32 0, i32 12
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @le16_to_cpu(i8* %72)
  %74 = load i32, i32* @TXFID_QUEUE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %13, align 8
  %77 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %78 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %77, i32 0, i32 0
  %79 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %79, i64 %80
  store %struct.brcms_fifo_info* %81, %struct.brcms_fifo_info** %14, align 8
  %82 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %83 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %82, i32 0, i32 10
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @le16_to_cpu(i8* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* @TXC_AMPDU_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @TXC_AMPDU_LAST, align 4
  %91 = load i32, i32* @TXC_AMPDU_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %98 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %97, i32 0, i32 10
  store i8* %96, i8** %98, align 8
  %99 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %100 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @AMPDU_FBR_NULL_DELIM, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %10, align 4
  %105 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %106 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @AMPDU_FBR_NULL_DELIM, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @AMPDU_DELIMITER_LEN, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %114 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %118 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %117, i32 0, i32 9
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @le16_to_cpu(i8* %119)
  %121 = and i32 %120, 3
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %59
  %127 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %128 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @BRCMS_GET_CCK_PLCP_LEN(i32* %129)
  br label %136

131:                                              ; preds = %59
  %132 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %133 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @BRCMS_GET_MIMO_PLCP_LEN(i32* %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i64 [ %130, %126 ], [ %135, %131 ]
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = call i64 @roundup(i64 %138, i32 4)
  %140 = load i64, i64* %12, align 8
  %141 = sub i64 %139, %140
  %142 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %143 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %148)
  store %struct.ieee80211_tx_info* %149, %struct.ieee80211_tx_info** %8, align 8
  %150 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %151 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %152, align 8
  store %struct.ieee80211_tx_rate* %153, %struct.ieee80211_tx_rate** %9, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.d11txh*
  store %struct.d11txh* %157, %struct.d11txh** %7, align 8
  %158 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %159 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %158, i64 1
  %160 = bitcast %struct.d11txh* %159 to i32*
  store i32* %160, i32** %11, align 8
  %161 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %162 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %161, i32 0, i32 11
  %163 = bitcast i32* %162 to %struct.ieee80211_rts*
  store %struct.ieee80211_rts* %163, %struct.ieee80211_rts** %18, align 8
  %164 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %165 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %164, i32 0, i32 10
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @le16_to_cpu(i8* %166)
  store i32 %167, i32* %15, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = icmp ne %struct.sk_buff* %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %136
  %172 = load i32, i32* @TXC_AMPDU_MASK, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %15, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* @TXC_AMPDU_FIRST, align 4
  %177 = load i32, i32* @TXC_AMPDU_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* %15, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %171, %136
  %182 = load i32, i32* @TXC_STARTMSDU, align 4
  %183 = load i32, i32* %15, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %15, align 4
  %185 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %18, align 8
  %186 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @ieee80211_is_rts(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = load i32, i32* @TXC_SENDRTS, align 4
  %192 = load i32, i32* %15, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %15, align 4
  store i32 1, i32* %19, align 4
  br label %194

194:                                              ; preds = %190, %181
  %195 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %18, align 8
  %196 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @ieee80211_is_cts(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @TXC_SENDCTS, align 4
  %202 = load i32, i32* %15, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %15, align 4
  store i32 1, i32* %20, align 4
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i32, i32* %15, align 4
  %206 = call i8* @cpu_to_le16(i32 %205)
  %207 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %208 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %207, i32 0, i32 10
  store i8* %206, i8** %208, align 8
  %209 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %210 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %209, i64 1
  %211 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %212, 0
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %204
  %218 = load i32*, i32** %11, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %27, align 4
  %221 = load i32*, i32** %11, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %28, align 4
  br label %235

224:                                              ; preds = %204
  %225 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %226 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %27, align 4
  %230 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %231 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %28, align 4
  br label %235

235:                                              ; preds = %224, %217
  %236 = load i32, i32* %27, align 4
  %237 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 1, i32 0
  store i32 %241, i32* %29, align 4
  %242 = load i32, i32* %28, align 4
  %243 = call i64 @plcp3_issgi(i32 %242)
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 1, i32 0
  store i32 %246, i32* %30, align 4
  %247 = load i32, i32* %27, align 4
  %248 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %249 = xor i32 %248, -1
  %250 = and i32 %247, %249
  store i32 %250, i32* %31, align 4
  %251 = load i32, i32* %29, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %235
  %254 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %255 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %254, i32 0, i32 2
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @wlc_phy_chanspec_get(i32 %258)
  %260 = call i64 @CHSPEC_SB_UPPER(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %253
  %263 = load i32, i32* @PHY_TXC1_BW_20MHZ_UP, align 4
  store i32 %263, i32* %22, align 4
  br label %266

264:                                              ; preds = %253
  %265 = load i32, i32* @PHY_TXC1_BW_20MHZ, align 4
  store i32 %265, i32* %22, align 4
  br label %266

266:                                              ; preds = %264, %262
  br label %267

267:                                              ; preds = %266, %235
  %268 = load i32, i32* @RSPEC_MIMORATE, align 4
  store i32 %268, i32* %23, align 4
  %269 = load i32*, i32** %11, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %273 = xor i32 %272, -1
  %274 = and i32 %271, %273
  %275 = load i32, i32* %23, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %23, align 4
  %277 = load i32*, i32** %11, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %267
  %284 = load i32, i32* @PHY_TXC1_BW_40MHZ, align 4
  %285 = load i32, i32* @RSPEC_BW_SHIFT, align 4
  %286 = shl i32 %284, %285
  %287 = load i32, i32* %23, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %23, align 4
  br label %289

289:                                              ; preds = %283, %267
  %290 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %291 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %290, i32 0, i32 9
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @le16_to_cpu(i8* %292)
  %294 = and i32 %293, 3
  %295 = icmp ne i32 %294, 0
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %289
  %301 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %302 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @cck_phy2mac_rate(i32 %305)
  %307 = call i32 @cck_rspec(i32 %306)
  store i32 %307, i32* %24, align 4
  br label %335

308:                                              ; preds = %289
  %309 = load i32, i32* @RSPEC_MIMORATE, align 4
  store i32 %309, i32* %24, align 4
  %310 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %311 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %316 = xor i32 %315, -1
  %317 = and i32 %314, %316
  %318 = load i32, i32* %24, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %24, align 4
  %320 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %321 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %308
  %329 = load i32, i32* @PHY_TXC1_BW_40MHZ, align 4
  %330 = load i32, i32* @RSPEC_BW_SHIFT, align 4
  %331 = shl i32 %329, %330
  %332 = load i32, i32* %24, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %24, align 4
  br label %334

334:                                              ; preds = %328, %308
  br label %335

335:                                              ; preds = %334, %300
  %336 = load i32, i32* %19, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* %20, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %350

341:                                              ; preds = %338, %335
  %342 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %343 = load i32, i32* %23, align 4
  %344 = load i32, i32* %22, align 4
  %345 = call i32 @brcms_c_rspec_to_rts_rspec(%struct.brcms_c_info* %342, i32 %343, i32 0, i32 %344)
  store i32 %345, i32* %25, align 4
  %346 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %347 = load i32, i32* %24, align 4
  %348 = load i32, i32* %22, align 4
  %349 = call i32 @brcms_c_rspec_to_rts_rspec(%struct.brcms_c_info* %346, i32 %347, i32 0, i32 %348)
  store i32 %349, i32* %26, align 4
  br label %350

350:                                              ; preds = %341, %338
  %351 = load i32*, i32** %11, align 8
  %352 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %353 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @BRCMS_SET_MIMO_PLCP_LEN(i32* %351, i32 %354)
  %356 = load i32*, i32** %11, align 8
  %357 = call i32 @BRCMS_SET_MIMO_PLCP_AMPDU(i32* %356)
  %358 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %359 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %358, i32 0, i32 8
  %360 = load i8*, i8** %359, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %374

362:                                              ; preds = %350
  %363 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %364 = load i32, i32* %23, align 4
  %365 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %366 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @brcms_c_calc_lsig_len(%struct.brcms_c_info* %363, i32 %364, i32 %367)
  store i32 %368, i32* %37, align 4
  %369 = load i32, i32* %37, align 4
  %370 = call i8* @cpu_to_le16(i32 %369)
  %371 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %372 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %371, i32 0, i32 8
  store i8* %370, i8** %372, align 8
  %373 = load i32, i32* @BRCMS_MM_PREAMBLE, align 4
  store i32 %373, i32* %33, align 4
  br label %374

374:                                              ; preds = %362, %350
  %375 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %376 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %375, i32 0, i32 7
  %377 = load i8*, i8** %376, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %391

379:                                              ; preds = %374
  %380 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %381 = load i32, i32* %24, align 4
  %382 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %383 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @brcms_c_calc_lsig_len(%struct.brcms_c_info* %380, i32 %381, i32 %384)
  store i32 %385, i32* %38, align 4
  %386 = load i32, i32* %38, align 4
  %387 = call i8* @cpu_to_le16(i32 %386)
  %388 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %389 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %388, i32 0, i32 7
  store i8* %387, i8** %389, align 8
  %390 = load i32, i32* @BRCMS_MM_PREAMBLE, align 4
  store i32 %390, i32* %34, align 4
  br label %391

391:                                              ; preds = %379, %374
  %392 = load i32, i32* %31, align 4
  %393 = call i64 @mcs_2_rate(i32 %392, i32 1, i32 0)
  %394 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %14, align 8
  %395 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp sge i64 %393, %396
  br i1 %397, label %398, label %408

398:                                              ; preds = %391
  %399 = load i32, i32* %21, align 4
  %400 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %14, align 8
  %401 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @min(i32 %399, i32 %402)
  store i32 %403, i32* %21, align 4
  %404 = load i32, i32* %21, align 4
  %405 = call i8* @cpu_to_le16(i32 %404)
  %406 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %407 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %406, i32 0, i32 6
  store i8* %405, i8** %407, align 8
  br label %411

408:                                              ; preds = %391
  %409 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %410 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %409, i32 0, i32 6
  store i8* null, i8** %410, align 8
  br label %411

411:                                              ; preds = %408, %398
  %412 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %413 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %412, i32 0, i32 2
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @le16_to_cpu(i8* %414)
  store i32 %415, i32* %32, align 4
  %416 = load i32, i32* %19, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %411
  %419 = load i32, i32* %20, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %476

421:                                              ; preds = %418, %411
  %422 = load i32, i32* %32, align 4
  %423 = load i32, i32* @TXC_PREAMBLE_RTS_MAIN_SHORT, align 4
  %424 = and i32 %422, %423
  %425 = load i32, i32* @TXC_PREAMBLE_RTS_MAIN_SHORT, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %421
  %428 = load i32, i32* @BRCMS_SHORT_PREAMBLE, align 4
  store i32 %428, i32* %35, align 4
  br label %429

429:                                              ; preds = %427, %421
  %430 = load i32, i32* %32, align 4
  %431 = load i32, i32* @TXC_PREAMBLE_RTS_FB_SHORT, align 4
  %432 = and i32 %430, %431
  %433 = load i32, i32* @TXC_PREAMBLE_RTS_FB_SHORT, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %437

435:                                              ; preds = %429
  %436 = load i32, i32* @BRCMS_SHORT_PREAMBLE, align 4
  store i32 %436, i32* %36, align 4
  br label %437

437:                                              ; preds = %435, %429
  %438 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %439 = load i32, i32* %20, align 4
  %440 = load i32, i32* %25, align 4
  %441 = load i32, i32* %23, align 4
  %442 = load i32, i32* %35, align 4
  %443 = load i32, i32* %33, align 4
  %444 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %445 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @brcms_c_compute_rtscts_dur(%struct.brcms_c_info* %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443, i32 %446, i32 1)
  store i32 %447, i32* %39, align 4
  %448 = load i32, i32* %39, align 4
  %449 = call i8* @cpu_to_le16(i32 %448)
  %450 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %18, align 8
  %451 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %450, i32 0, i32 0
  store i8* %449, i8** %451, align 8
  %452 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %453 = load i32, i32* %20, align 4
  %454 = load i32, i32* %26, align 4
  %455 = load i32, i32* %24, align 4
  %456 = load i32, i32* %36, align 4
  %457 = load i32, i32* %34, align 4
  %458 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %459 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @brcms_c_compute_rtscts_dur(%struct.brcms_c_info* %452, i32 %453, i32 %454, i32 %455, i32 %456, i32 %457, i32 %460, i32 1)
  store i32 %461, i32* %39, align 4
  %462 = load i32, i32* %39, align 4
  %463 = call i8* @cpu_to_le16(i32 %462)
  %464 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %465 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %464, i32 0, i32 3
  store i8* %463, i8** %465, align 8
  %466 = load %struct.ieee80211_rts*, %struct.ieee80211_rts** %18, align 8
  %467 = getelementptr inbounds %struct.ieee80211_rts, %struct.ieee80211_rts* %466, i32 0, i32 0
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %470 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %469, i32 0, i32 5
  store i8* %468, i8** %470, align 8
  %471 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %472 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %471, i32 0, i32 3
  %473 = load i8*, i8** %472, align 8
  %474 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %475 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %474, i32 0, i32 4
  store i8* %473, i8** %475, align 8
  br label %476

476:                                              ; preds = %437, %418
  %477 = load i32, i32* %16, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %493

479:                                              ; preds = %476
  %480 = load i32, i32* @TXC_AMPDU_FBR, align 4
  %481 = load i32, i32* %32, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %32, align 4
  %483 = load i32, i32* %32, align 4
  %484 = call i8* @cpu_to_le16(i32 %483)
  %485 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %486 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %485, i32 0, i32 2
  store i8* %484, i8** %486, align 8
  %487 = load i32*, i32** %11, align 8
  %488 = call i32 @BRCMS_SET_MIMO_PLCP_AMPDU(i32* %487)
  %489 = load %struct.d11txh*, %struct.d11txh** %7, align 8
  %490 = getelementptr inbounds %struct.d11txh, %struct.d11txh* %489, i32 0, i32 1
  %491 = load i32*, i32** %490, align 8
  %492 = call i32 @BRCMS_SET_MIMO_PLCP_AMPDU(i32* %491)
  br label %493

493:                                              ; preds = %479, %476
  %494 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %495 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %494, i32 0, i32 1
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %500 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %499, i32 0, i32 0
  %501 = load %struct.TYPE_7__*, %struct.TYPE_7__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %505 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %504, i32 0, i32 2
  %506 = call i32 @skb_queue_len(i32* %505)
  %507 = load %struct.brcms_ampdu_session*, %struct.brcms_ampdu_session** %2, align 8
  %508 = getelementptr inbounds %struct.brcms_ampdu_session, %struct.brcms_ampdu_session* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @brcms_dbg_ht(i32 %498, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %503, i32 %506, i32 %509)
  br label %511

511:                                              ; preds = %493, %58
  ret void
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @BRCMS_GET_CCK_PLCP_LEN(i32*) #1

declare dso_local i64 @BRCMS_GET_MIMO_PLCP_LEN(i32*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_rts(i32) #1

declare dso_local i64 @ieee80211_is_cts(i32) #1

declare dso_local i64 @plcp3_issgi(i32) #1

declare dso_local i64 @CHSPEC_SB_UPPER(i32) #1

declare dso_local i32 @wlc_phy_chanspec_get(i32) #1

declare dso_local i32 @cck_rspec(i32) #1

declare dso_local i32 @cck_phy2mac_rate(i32) #1

declare dso_local i32 @brcms_c_rspec_to_rts_rspec(%struct.brcms_c_info*, i32, i32, i32) #1

declare dso_local i32 @BRCMS_SET_MIMO_PLCP_LEN(i32*, i32) #1

declare dso_local i32 @BRCMS_SET_MIMO_PLCP_AMPDU(i32*) #1

declare dso_local i32 @brcms_c_calc_lsig_len(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i64 @mcs_2_rate(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @brcms_c_compute_rtscts_dur(%struct.brcms_c_info*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @brcms_dbg_ht(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
