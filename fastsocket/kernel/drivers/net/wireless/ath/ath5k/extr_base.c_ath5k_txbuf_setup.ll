; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txbuf_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txbuf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.ath5k_desc = type opaque
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ath5k_buf = type { i32, i64, i32, %struct.sk_buff*, %struct.ath5k_desc.0* }
%struct.sk_buff = type { i32, i32 }
%struct.ath5k_desc.0 = type { i64, i32 }
%struct.ath5k_txq = type { i32, i32, i64*, i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@AR5K_TXKEYIX_INVALID = common dso_local global i32 0, align 4
@AR5K_TXDESC_INTREQ = common dso_local global i32 0, align 4
@AR5K_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@AR5K_TXDESC_NOACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@AR5K_TXDESC_RTSENA = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@AR5K_TXDESC_CTSENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_buf*, %struct.ath5k_txq*, i32)* @ath5k_txbuf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_txbuf_setup(%struct.ath5k_hw* %0, %struct.ath5k_buf* %1, %struct.ath5k_txq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca %struct.ath5k_buf*, align 8
  %8 = alloca %struct.ath5k_txq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath5k_desc.0*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_rate*, align 8
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store %struct.ath5k_buf* %1, %struct.ath5k_buf** %7, align 8
  store %struct.ath5k_txq* %2, %struct.ath5k_txq** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %26 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %25, i32 0, i32 4
  %27 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %26, align 8
  store %struct.ath5k_desc.0* %27, %struct.ath5k_desc.0** %10, align 8
  %28 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %29 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %28, i32 0, i32 3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %31)
  store %struct.ieee80211_tx_info* %32, %struct.ieee80211_tx_info** %12, align 8
  %33 = load i32, i32* @AR5K_TXKEYIX_INVALID, align 4
  store i32 %33, i32* %15, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %34 = load i32, i32* @AR5K_TXDESC_INTREQ, align 4
  %35 = load i32, i32* @AR5K_TXDESC_CLRDMASK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_TO_DEVICE, align 4
  %47 = call i32 @dma_map_single(i32 %39, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %49 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %54 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %52, %struct.ieee80211_tx_info* %53)
  store %struct.ieee80211_rate* %54, %struct.ieee80211_rate** %16, align 8
  %55 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %16, align 8
  %56 = icmp ne %struct.ieee80211_rate* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %20, align 4
  br label %326

60:                                               ; preds = %4
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @AR5K_TXDESC_NOACK, align 4
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %16, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %91

87:                                               ; preds = %71
  %88 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %16, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i32 [ %86, %83 ], [ %90, %87 ]
  store i32 %92, i32* %21, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %13, align 4
  %96 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %97 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %91
  %102 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %15, align 4
  %108 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %109 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %101, %91
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %118
  %124 = load i32, i32* @AR5K_TXDESC_RTSENA, align 4
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %128 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %131 = call %struct.TYPE_12__* @ieee80211_get_rts_cts_rate(i32 %129, %struct.ieee80211_tx_info* %130)
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %22, align 4
  %134 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %135 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %138 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %143 = call i32 @ieee80211_rts_duration(i32 %136, i32 %140, i32 %141, %struct.ieee80211_tx_info* %142)
  %144 = call i32 @le16_to_cpu(i32 %143)
  store i32 %144, i32* %23, align 4
  br label %145

145:                                              ; preds = %123, %118
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %145
  %151 = load i32, i32* @AR5K_TXDESC_CTSENA, align 4
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %14, align 4
  %154 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %155 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %158 = call %struct.TYPE_12__* @ieee80211_get_rts_cts_rate(i32 %156, %struct.ieee80211_tx_info* %157)
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %22, align 4
  %161 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %162 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %165 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %170 = call i32 @ieee80211_ctstoself_duration(i32 %163, i32 %167, i32 %168, %struct.ieee80211_tx_info* %169)
  %171 = call i32 @le16_to_cpu(i32 %170)
  store i32 %171, i32* %23, align 4
  br label %172

172:                                              ; preds = %150, %145
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %174 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %173, i32 0, i32 0
  %175 = load i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %174, align 8
  %176 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %177 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %10, align 8
  %178 = bitcast %struct.ath5k_desc.0* %177 to %struct.ath5k_desc*
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %181 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %180)
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %184 = call i32 @get_hw_packet_type(%struct.sk_buff* %183)
  %185 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %186 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %188, 2
  %190 = load i32, i32* %21, align 4
  %191 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %192 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %200 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %23, align 4
  %205 = call i32 %175(%struct.ath5k_hw* %176, %struct.ath5k_desc* %178, i32 %179, i32 %181, i32 %182, i32 %184, i32 %189, i32 %190, i32 %197, i32 %198, i32 %201, i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %172
  br label %326

209:                                              ; preds = %172
  %210 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %211 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %272

215:                                              ; preds = %209
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %217 = call i32 @memset(i32* %216, i32 0, i32 12)
  %218 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %219 = call i32 @memset(i32* %218, i32 0, i32 12)
  store i32 0, i32* %19, align 4
  br label %220

220:                                              ; preds = %253, %215
  %221 = load i32, i32* %19, align 4
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %223, label %256

223:                                              ; preds = %220
  %224 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %225 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %228 = load i32, i32* %19, align 4
  %229 = call %struct.ieee80211_rate* @ieee80211_get_alt_retry_rate(i32 %226, %struct.ieee80211_tx_info* %227, i32 %228)
  store %struct.ieee80211_rate* %229, %struct.ieee80211_rate** %16, align 8
  %230 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %16, align 8
  %231 = icmp ne %struct.ieee80211_rate* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %223
  br label %256

233:                                              ; preds = %223
  %234 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %16, align 8
  %235 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %238
  store i32 %236, i32* %239, align 4
  %240 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %241 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %251
  store i32 %249, i32* %252, align 4
  br label %253

253:                                              ; preds = %233
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %19, align 4
  br label %220

256:                                              ; preds = %232, %220
  %257 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %258 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %10, align 8
  %259 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @ath5k_hw_setup_mrr_tx_desc(%struct.ath5k_hw* %257, %struct.ath5k_desc.0* %258, i32 %260, i32 %262, i32 %264, i32 %266, i32 %268, i32 %270)
  br label %272

272:                                              ; preds = %256, %209
  %273 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %10, align 8
  %274 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  %275 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %276 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %10, align 8
  %279 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %281 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %280, i32 0, i32 0
  %282 = call i32 @spin_lock_bh(i32* %281)
  %283 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %284 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %283, i32 0, i32 2
  %285 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %286 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %285, i32 0, i32 4
  %287 = call i32 @list_add_tail(i32* %284, i32* %286)
  %288 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %289 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  %292 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %293 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %292, i32 0, i32 2
  %294 = load i64*, i64** %293, align 8
  %295 = icmp eq i64* %294, null
  br i1 %295, label %296, label %305

296:                                              ; preds = %272
  %297 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %298 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %299 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %302 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @ath5k_hw_set_txdp(%struct.ath5k_hw* %297, i32 %300, i64 %303)
  br label %312

305:                                              ; preds = %272
  %306 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %307 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %310 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %309, i32 0, i32 2
  %311 = load i64*, i64** %310, align 8
  store i64 %308, i64* %311, align 8
  br label %312

312:                                              ; preds = %305, %296
  %313 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %10, align 8
  %314 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %313, i32 0, i32 0
  %315 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %316 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %315, i32 0, i32 2
  store i64* %314, i64** %316, align 8
  %317 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %318 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %319 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw* %317, i32 %320)
  %322 = call i32 (...) @mmiowb()
  %323 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %324 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %323, i32 0, i32 0
  %325 = call i32 @spin_unlock_bh(i32* %324)
  store i32 0, i32* %5, align 4
  br label %339

326:                                              ; preds = %208, %57
  %327 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %328 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.ath5k_buf*, %struct.ath5k_buf** %7, align 8
  %331 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %334 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @DMA_TO_DEVICE, align 4
  %337 = call i32 @dma_unmap_single(i32 %329, i32 %332, i32 %335, i32 %336)
  %338 = load i32, i32* %20, align 4
  store i32 %338, i32* %5, align 4
  br label %339

339:                                              ; preds = %326, %312
  %340 = load i32, i32* %5, align 4
  ret i32 %340
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local %struct.TYPE_12__* @ieee80211_get_rts_cts_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_rts_duration(i32, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_ctstoself_duration(i32, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @get_hw_packet_type(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_alt_retry_rate(i32, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @ath5k_hw_setup_mrr_tx_desc(%struct.ath5k_hw*, %struct.ath5k_desc.0*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath5k_hw_set_txdp(%struct.ath5k_hw*, i32, i64) #1

declare dso_local i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
