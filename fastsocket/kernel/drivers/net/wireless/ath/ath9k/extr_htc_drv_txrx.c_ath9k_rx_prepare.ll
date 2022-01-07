; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_rx_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_rx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_14__*, %struct.TYPE_8__, %struct.ieee80211_hw* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ath9k_htc_rxbuf = type { %struct.TYPE_13__, %struct.sk_buff* }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i32* }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ath_common = type { i32, i32 }
%struct.ath_htc_rx_status = type { i32 }

@ATH_RSSI_DUMMY_MARKER = common dso_local global i32 0, align 4
@HTC_RX_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Corrupted RX frame, dropping (len: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Corrupted RX data len, dropping (dlen: %d, skblen: %d)\0A\00", align 1
@FCS_LEN = common dso_local global i64 0, align 8
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@ATH9K_RXKEYIX_INVALID = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@ATH9K_RSSI_BAD = common dso_local global i64 0, align 8
@ATH_RSSI_EP_MULTIPLIER = common dso_local global i32 0, align 4
@ATH_DEFAULT_NOISE_FLOOR = common dso_local global i64 0, align 8
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ath9k_htc_rxbuf*, %struct.ieee80211_rx_status*)* @ath9k_rx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rx_prepare(%struct.ath9k_htc_priv* %0, %struct.ath9k_htc_rxbuf* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath9k_htc_rxbuf*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_htc_rx_status*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store %struct.ath9k_htc_rxbuf* %1, %struct.ath9k_htc_rxbuf** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 2
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %20, align 8
  store %struct.ieee80211_hw* %21, %struct.ieee80211_hw** %9, align 8
  %22 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %22, i32 0, i32 1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_14__* %27)
  store %struct.ath_common* %28, %struct.ath_common** %11, align 8
  %29 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.ath_common*, i8*, i64, ...) @ath_err(%struct.ath_common* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %413

41:                                               ; preds = %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.ath_htc_rx_status*
  store %struct.ath_htc_rx_status* %45, %struct.ath_htc_rx_status** %12, align 8
  %46 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %12, align 8
  %47 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @be16_to_cpu(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %54 = sub nsw i64 %52, %53
  %55 = sub nsw i64 %49, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %41
  %58 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %59 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %12, align 8
  %60 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct.ath_common*, i8*, i64, ...) @ath_err(%struct.ath_common* %58, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %65)
  br label %413

67:                                               ; preds = %41
  %68 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %69 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %12, align 8
  %70 = call i32 @ath9k_htc_err_stat_rx(%struct.ath9k_htc_priv* %68, %struct.ath_htc_rx_status* %69)
  %71 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %71, i32 0, i32 0
  %73 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %12, align 8
  %74 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %75 = call i32 @memcpy(%struct.TYPE_13__* %72, %struct.ath_htc_rx_status* %73, i64 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load i64, i64* @HTC_RX_FRAME_HEADER_SIZE, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @skb_pull(%struct.sk_buff* %76, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %83, %struct.ieee80211_hdr** %8, align 8
  %84 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %85 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %16, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = and i32 %89, 3
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %67
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @FCS_LEN, align 8
  %102 = add nsw i64 %100, %101
  %103 = icmp sge i64 %96, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %93
  %105 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @memmove(i32* %110, i32* %113, i32 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @skb_pull(%struct.sk_buff* %116, i32 %117)
  br label %119

119:                                              ; preds = %104, %93, %67
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %121 = call i32 @memset(%struct.ieee80211_rx_status* %120, i32 0, i32 32)
  %122 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %123 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %224

127:                                              ; preds = %119
  %128 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %129 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %137 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %127
  %142 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %143 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %413

150:                                              ; preds = %141
  %151 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %152 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %187

159:                                              ; preds = %150
  %160 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %161 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %159
  %168 = load i32, i32* %16, align 4
  %169 = call i64 @ieee80211_is_ctl(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %175 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %185

179:                                              ; preds = %167
  %180 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %181 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %182 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %171
  br label %186

186:                                              ; preds = %185, %159
  br label %187

187:                                              ; preds = %186, %158
  %188 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %189 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %188, i32 0, i32 0
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %187
  %196 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %197 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %201 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %204 = or i32 %202, %203
  %205 = xor i32 %204, -1
  %206 = and i32 %199, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  br label %413

209:                                              ; preds = %195
  br label %223

210:                                              ; preds = %187
  %211 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %212 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %216 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %217 = or i32 %215, %216
  %218 = xor i32 %217, -1
  %219 = and i32 %214, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %413

222:                                              ; preds = %210
  br label %223

223:                                              ; preds = %222, %209
  br label %224

224:                                              ; preds = %223, %119
  %225 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %226 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %283, label %232

232:                                              ; preds = %224
  %233 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %234 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %17, align 4
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* @ATH9K_RXKEYIX_INVALID, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %242 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %243 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %282

246:                                              ; preds = %232
  %247 = load i32, i32* %16, align 4
  %248 = call i64 @ieee80211_has_protected(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %281

250:                                              ; preds = %246
  %251 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 4
  %256 = sext i32 %255 to i64
  %257 = icmp sge i64 %253, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %250
  %259 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 3
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = ashr i32 %266, 6
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %270 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @test_bit(i32 %268, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %258
  %275 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %276 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %277 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %274, %258
  br label %281

281:                                              ; preds = %280, %250, %246
  br label %282

282:                                              ; preds = %281, %240
  br label %283

283:                                              ; preds = %282, %224
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %285 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %286 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %287 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %291 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @ath9k_process_rate(%struct.ieee80211_hw* %284, %struct.ieee80211_rx_status* %285, i32 %289, i32 %293)
  %295 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %296 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @ATH9K_RSSI_BAD, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %283
  %302 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %303 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %317, label %307

307:                                              ; preds = %301
  %308 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %309 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %313 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @ATH_RSSI_LPF(i32 %311, i64 %315)
  br label %317

317:                                              ; preds = %307, %301, %283
  %318 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %319 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  store i32 %321, i32* %15, align 4
  %322 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %323 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @ieee80211_is_beacon(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %368

327:                                              ; preds = %317
  %328 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %329 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @is_zero_ether_addr(i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %368, label %333

333:                                              ; preds = %327
  %334 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %335 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %338 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i64 @ether_addr_equal(i32 %336, i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %368

342:                                              ; preds = %333
  %343 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %344 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %18, align 8
  %347 = load i32, i32* %15, align 4
  %348 = load i32, i32* @ATH_RSSI_DUMMY_MARKER, align 4
  %349 = icmp ne i32 %347, %348
  %350 = zext i1 %349 to i32
  %351 = call i64 @likely(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %342
  %354 = load i32, i32* %15, align 4
  %355 = load i32, i32* @ATH_RSSI_EP_MULTIPLIER, align 4
  %356 = call i64 @ATH_EP_RND(i32 %354, i32 %355)
  store i64 %356, i64* %18, align 8
  br label %357

357:                                              ; preds = %353, %342
  %358 = load i64, i64* %18, align 8
  %359 = icmp slt i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  store i64 0, i64* %18, align 8
  br label %361

361:                                              ; preds = %360, %357
  %362 = load i64, i64* %18, align 8
  %363 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %364 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %363, i32 0, i32 0
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  store i64 %362, i64* %367, align 8
  br label %368

368:                                              ; preds = %361, %333, %327, %317
  %369 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %370 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @be64_to_cpu(i32 %372)
  %374 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %375 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %374, i32 0, i32 5
  store i32 %373, i32* %375, align 8
  %376 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %377 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %384 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %383, i32 0, i32 4
  store i32 %382, i32* %384, align 4
  %385 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %386 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %393 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 8
  %394 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %395 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @ATH_DEFAULT_NOISE_FLOOR, align 8
  %399 = add nsw i64 %397, %398
  %400 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %401 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %400, i32 0, i32 0
  store i64 %399, i64* %401, align 8
  %402 = load %struct.ath9k_htc_rxbuf*, %struct.ath9k_htc_rxbuf** %6, align 8
  %403 = getelementptr inbounds %struct.ath9k_htc_rxbuf, %struct.ath9k_htc_rxbuf* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %407 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %406, i32 0, i32 2
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %409 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %410 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  store i32 1, i32* %4, align 4
  br label %414

413:                                              ; preds = %221, %208, %149, %57, %35
  store i32 0, i32* %4, align 4
  br label %414

414:                                              ; preds = %413, %368
  %415 = load i32, i32* %4, align 4
  ret i32 %415
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_14__*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @ath9k_htc_err_stat_rx(%struct.ath9k_htc_priv*, %struct.ath_htc_rx_status*) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.ath_htc_rx_status*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ath9k_process_rate(%struct.ieee80211_hw*, %struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @ATH_RSSI_LPF(i32, i64) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @ATH_EP_RND(i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
