; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_rx_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64, i32, i32, %struct.ath_hw*, i64 }
%struct.ath_hw = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ath_rx_status = type { i64, i32, i64, i64 }
%struct.ath_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATH9K_RXKEYIX_INVALID = common dso_local global i64 0, align 8
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@ATH9K_RXERR_KEYMISS = common dso_local global i32 0, align 4
@rx_len_err = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, %struct.ath_rx_status*, i32*)* @ath9k_rx_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_rx_accept(%struct.ath_common* %0, %struct.ieee80211_hdr* %1, %struct.ieee80211_rx_status* %2, %struct.ath_rx_status* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.ath_rx_status*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ath_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ath_hw*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.ath_common* %0, %struct.ath_common** %7, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %8, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %9, align 8
  store %struct.ath_rx_status* %3, %struct.ath_rx_status** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ath_softc*
  store %struct.ath_softc* %24, %struct.ath_softc** %12, align 8
  %25 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %26 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %25, i32 0, i32 3
  %27 = load %struct.ath_hw*, %struct.ath_hw** %26, align 8
  store %struct.ath_hw* %27, %struct.ath_hw** %17, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %19, align 8
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %18, align 4
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_multicast_ether_addr(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %44 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ATH9K_RXKEYIX_INVALID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %5
  %49 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %50 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %53 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @test_bit(i64 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %48, %5
  %58 = phi i1 [ false, %5 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load i32, i32* %18, align 4
  %64 = call i64 @ieee80211_is_data(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = call i64 @ieee80211_has_protected(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %72 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %75 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %73, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %70, %66, %62, %57
  %85 = phi i1 [ false, %66 ], [ false, %62 ], [ false, %57 ], [ %83, %70 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %15, align 4
  %87 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %88 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ATH9K_RXKEYIX_INVALID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %84
  %93 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %94 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %97 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @test_bit(i64 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %92, %84
  %102 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %105 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %101, %92
  %109 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %110 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @rx_len_err, align 4
  %115 = call i32 @RX_STAT_INC(i32 %114)
  store i32 0, i32* %6, align 4
  br label %266

116:                                              ; preds = %108
  %117 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %118 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %121 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %19, align 8
  %124 = sub nsw i64 %122, %123
  %125 = icmp sgt i64 %119, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* @rx_len_err, align 4
  %128 = call i32 @RX_STAT_INC(i32 %127)
  store i32 0, i32* %6, align 4
  br label %266

129:                                              ; preds = %116
  %130 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %131 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %266

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %135
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @ieee80211_is_ctl(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @ieee80211_has_morefrags(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %142
  %147 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %148 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @le16_to_cpu(i32 %149)
  %151 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %146
  %155 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %156 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %154, %146, %142, %138, %135
  %162 = phi i1 [ false, %146 ], [ false, %142 ], [ false, %138 ], [ false, %135 ], [ %160, %154 ]
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %16, align 4
  %164 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %165 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %243

168:                                              ; preds = %161
  %169 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %170 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %177 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %178 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  store i32 0, i32* %16, align 4
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %183 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 0, i32* %6, align 4
  br label %266

189:                                              ; preds = %181
  %190 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %191 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %196
  %200 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %201 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %199, %189
  %207 = load i32*, i32** %11, align 8
  store i32 1, i32* %207, align 4
  store i32 0, i32* %16, align 4
  br label %208

208:                                              ; preds = %206, %199, %196
  %209 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %210 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %213 = or i32 %211, %212
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %20, align 8
  %215 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  %216 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %208
  %220 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  %221 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @FIF_FCSFAIL, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %219
  %228 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* %20, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %20, align 8
  br label %232

232:                                              ; preds = %227, %219, %208
  %233 = load %struct.ath_rx_status*, %struct.ath_rx_status** %10, align 8
  %234 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %20, align 8
  %238 = xor i64 %237, -1
  %239 = and i64 %236, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  br label %266

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242, %161
  %244 = load i32, i32* %15, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %248 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %249 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  br label %265

252:                                              ; preds = %243
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %260 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %261 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %258, %255, %252
  br label %265

265:                                              ; preds = %264, %246
  store i32 1, i32* %6, align 4
  br label %266

266:                                              ; preds = %265, %241, %188, %134, %126, %113
  %267 = load i32, i32* %6, align 4
  ret i32 %267
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @RX_STAT_INC(i32) #1

declare dso_local i32 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @ieee80211_has_morefrags(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
