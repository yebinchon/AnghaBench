; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_reg_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_channel_reg_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locale_mimo_info = type { i32*, i32* }
%struct.brcms_cm_info = type { %struct.TYPE_10__*, %struct.brcms_c_info* }
%struct.TYPE_10__ = type { %struct.country_info }
%struct.country_info = type { i32, i32 }
%struct.brcms_c_info = type { %struct.brcms_band**, %struct.TYPE_9__* }
%struct.brcms_band = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.txpwr_limits = type { i64*, i64*, i64*, i64*, i64*, i64*, i64*, i8*, i8**, i8**, i8**, i8**, i8**, i8** }

@BRCMS_TXPWR_MAX = common dso_local global i32 0, align 4
@BRCM_BAND_5G = common dso_local global i64 0, align 8
@BRCM_BAND_2G = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_CCK = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_OFDM = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_MCS_1_STREAM = common dso_local global i64 0, align 8
@locale_bn = common dso_local global %struct.locale_mimo_info zeroinitializer, align 8
@BRCMS_NUM_RATES_MCS_2_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_channel_reg_limits(%struct.brcms_cm_info* %0, i32 %1, %struct.txpwr_limits* %2) #0 {
  %4 = alloca %struct.brcms_cm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.txpwr_limits*, align 8
  %7 = alloca %struct.brcms_c_info*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.country_info*, align 8
  %14 = alloca %struct.brcms_band*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.locale_mimo_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.txpwr_limits* %2, %struct.txpwr_limits** %6, align 8
  %21 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %22 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %21, i32 0, i32 1
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %22, align 8
  store %struct.brcms_c_info* %23, %struct.brcms_c_info** %7, align 8
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %31, align 8
  store %struct.ieee80211_channel* %32, %struct.ieee80211_channel** %8, align 8
  %33 = load i32, i32* @BRCMS_TXPWR_MAX, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %35 = call i32 @memset(%struct.txpwr_limits* %34, i32 0, i32 112)
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %37 = icmp ne %struct.ieee80211_channel* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %540

43:                                               ; preds = %3
  %44 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %4, align 8
  %45 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store %struct.country_info* %47, %struct.country_info** %13, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @CHSPEC_CHANNEL(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %51 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %50, i32 0, i32 0
  %52 = load %struct.brcms_band**, %struct.brcms_band*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @chspec_bandunit(i32 %53)
  %55 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %52, i64 %54
  %56 = load %struct.brcms_band*, %struct.brcms_band** %55, align 8
  store %struct.brcms_band* %56, %struct.brcms_band** %14, align 8
  %57 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %58 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BRCM_BAND_5G, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %43
  %63 = load %struct.country_info*, %struct.country_info** %13, align 8
  %64 = getelementptr inbounds %struct.country_info, %struct.country_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.locale_mimo_info* @brcms_c_get_mimo_5g(i32 %65)
  br label %72

67:                                               ; preds = %43
  %68 = load %struct.country_info*, %struct.country_info** %13, align 8
  %69 = getelementptr inbounds %struct.country_info, %struct.country_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.locale_mimo_info* @brcms_c_get_mimo_2g(i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi %struct.locale_mimo_info* [ %66, %62 ], [ %71, %67 ]
  store %struct.locale_mimo_info* %73, %struct.locale_mimo_info** %16, align 8
  %74 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %75 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %12, align 4
  %77 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %78 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BRCM_BAND_2G, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @QDB(i32 22)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %82, %72
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @QDB(i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @max(i32 %91, i32 0)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @min(i32 %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %97 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BRCM_BAND_2G, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %84
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @BRCMS_NUM_RATES_CCK, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %111 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %110, i32 0, i32 13
  %112 = load i8**, i8*** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  store i8* %109, i8** %114, align 8
  br label %115

115:                                              ; preds = %106
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %102

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %84
  store i64 0, i64* %9, align 8
  br label %120

120:                                              ; preds = %151, %119
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @BRCMS_NUM_RATES_OFDM, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %129 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %128, i32 0, i32 11
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* %127, i8** %132, align 8
  %133 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %134 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %142 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %141, i32 0, i32 12
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8* %140, i8** %145, align 8
  %146 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %147 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %124
  %152 = load i64, i64* %9, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %9, align 8
  br label %120

154:                                              ; preds = %120
  store i32 0, i32* %12, align 4
  %155 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %156 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @QDB(i32 6)
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %162 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @QDB(i32 6)
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %160, %154
  %167 = load %struct.brcms_band*, %struct.brcms_band** %14, align 8
  %168 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @BRCM_BAND_2G, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i64, i64* %10, align 8
  %174 = sub i64 %173, 1
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %19, align 4
  br label %179

176:                                              ; preds = %166
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @CHANNEL_POWER_IDX_5G(i64 %177)
  store i32 %178, i32* %19, align 4
  br label %179

179:                                              ; preds = %176, %172
  %180 = load %struct.locale_mimo_info*, %struct.locale_mimo_info** %16, align 8
  %181 = getelementptr inbounds %struct.locale_mimo_info, %struct.locale_mimo_info* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %17, align 4
  %187 = load %struct.locale_mimo_info*, %struct.locale_mimo_info** %16, align 8
  %188 = getelementptr inbounds %struct.locale_mimo_info, %struct.locale_mimo_info* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %194, %195
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @max(i32 %197, i32 0)
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %12, align 4
  %201 = sub nsw i32 %199, %200
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @max(i32 %202, i32 0)
  store i32 %203, i32* %18, align 4
  store i64 0, i64* %9, align 8
  br label %204

204:                                              ; preds = %225, %179
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* @BRCMS_NUM_RATES_MCS_1_STREAM, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %228

208:                                              ; preds = %204
  %209 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %210 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %209, i32 0, i32 11
  %211 = load i8**, i8*** %210, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds i8*, i8** %211, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %216 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %215, i32 0, i32 10
  %217 = load i8**, i8*** %216, align 8
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds i8*, i8** %217, i64 %218
  store i8* %214, i8** %219, align 8
  %220 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %221 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %220, i32 0, i32 2
  %222 = load i64*, i64** %221, align 8
  %223 = load i64, i64* %9, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %208
  %226 = load i64, i64* %9, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %9, align 8
  br label %204

228:                                              ; preds = %204
  store i64 0, i64* %9, align 8
  br label %229

229:                                              ; preds = %252, %228
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* @BRCMS_NUM_RATES_MCS_1_STREAM, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %255

233:                                              ; preds = %229
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %239 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %238, i32 0, i32 3
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  store i64 %237, i64* %242, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = ptrtoint i8* %245 to i64
  %247 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %248 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %247, i32 0, i32 4
  %249 = load i64*, i64** %248, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  store i64 %246, i64* %251, align 8
  br label %252

252:                                              ; preds = %233
  %253 = load i64, i64* %9, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %9, align 8
  br label %229

255:                                              ; preds = %229
  %256 = load %struct.locale_mimo_info*, %struct.locale_mimo_info** %16, align 8
  %257 = icmp eq %struct.locale_mimo_info* %256, @locale_bn
  br i1 %257, label %258, label %298

258:                                              ; preds = %255
  %259 = load %struct.locale_mimo_info*, %struct.locale_mimo_info** %16, align 8
  %260 = icmp eq %struct.locale_mimo_info* %259, @locale_bn
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = call i32 @QDB(i32 16)
  store i32 %262, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %263 = load i64, i64* %10, align 8
  %264 = icmp uge i64 %263, 3
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i64, i64* %10, align 8
  %267 = icmp ule i64 %266, 11
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = call i32 @QDB(i32 16)
  store i32 %269, i32* %18, align 4
  br label %270

270:                                              ; preds = %268, %265, %261
  br label %271

271:                                              ; preds = %270, %258
  store i64 0, i64* %9, align 8
  br label %272

272:                                              ; preds = %294, %271
  %273 = load i64, i64* %9, align 8
  %274 = load i64, i64* @BRCMS_NUM_RATES_MCS_1_STREAM, align 8
  %275 = icmp ult i64 %273, %274
  br i1 %275, label %276, label %297

276:                                              ; preds = %272
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = inttoptr i64 %278 to i8*
  %280 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %281 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %280, i32 0, i32 10
  %282 = load i8**, i8*** %281, align 8
  %283 = load i64, i64* %9, align 8
  %284 = getelementptr inbounds i8*, i8** %282, i64 %283
  store i8* %279, i8** %284, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = ptrtoint i8* %287 to i64
  %289 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %290 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %289, i32 0, i32 2
  %291 = load i64*, i64** %290, align 8
  %292 = load i64, i64* %9, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  store i64 %288, i64* %293, align 8
  br label %294

294:                                              ; preds = %276
  %295 = load i64, i64* %9, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %9, align 8
  br label %272

297:                                              ; preds = %272
  br label %298

298:                                              ; preds = %297, %255
  store i64 0, i64* %9, align 8
  br label %299

299:                                              ; preds = %314, %298
  %300 = load i64, i64* %9, align 8
  %301 = load i64, i64* @BRCMS_NUM_RATES_MCS_1_STREAM, align 8
  %302 = icmp ult i64 %300, %301
  br i1 %302, label %303, label %317

303:                                              ; preds = %299
  %304 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %305 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %304, i32 0, i32 5
  %306 = load i64*, i64** %305, align 8
  %307 = load i64, i64* %9, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  store i64 0, i64* %308, align 8
  %309 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %310 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %309, i32 0, i32 6
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* %9, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  store i64 0, i64* %313, align 8
  br label %314

314:                                              ; preds = %303
  %315 = load i64, i64* %9, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %9, align 8
  br label %299

317:                                              ; preds = %299
  store i64 0, i64* %9, align 8
  br label %318

318:                                              ; preds = %339, %317
  %319 = load i64, i64* %9, align 8
  %320 = load i64, i64* @BRCMS_NUM_RATES_MCS_2_STREAM, align 8
  %321 = icmp ult i64 %319, %320
  br i1 %321, label %322, label %342

322:                                              ; preds = %318
  %323 = load i32, i32* %17, align 4
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to i8*
  %326 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %327 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %326, i32 0, i32 9
  %328 = load i8**, i8*** %327, align 8
  %329 = load i64, i64* %9, align 8
  %330 = getelementptr inbounds i8*, i8** %328, i64 %329
  store i8* %325, i8** %330, align 8
  %331 = load i32, i32* %18, align 4
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to i8*
  %334 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %335 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %334, i32 0, i32 8
  %336 = load i8**, i8*** %335, align 8
  %337 = load i64, i64* %9, align 8
  %338 = getelementptr inbounds i8*, i8** %336, i64 %337
  store i8* %333, i8** %338, align 8
  br label %339

339:                                              ; preds = %322
  %340 = load i64, i64* %9, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %9, align 8
  br label %318

342:                                              ; preds = %318
  %343 = load i32, i32* %18, align 4
  %344 = sext i32 %343 to i64
  %345 = inttoptr i64 %344 to i8*
  %346 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %347 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %346, i32 0, i32 7
  store i8* %345, i8** %347, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %20, align 8
  br label %348

348:                                              ; preds = %399, %342
  %349 = load i64, i64* %9, align 8
  %350 = load i64, i64* @BRCMS_NUM_RATES_OFDM, align 8
  %351 = icmp ult i64 %349, %350
  br i1 %351, label %352, label %404

352:                                              ; preds = %348
  %353 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %354 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %353, i32 0, i32 1
  %355 = load i64*, i64** %354, align 8
  %356 = load i64, i64* %9, align 8
  %357 = getelementptr inbounds i64, i64* %355, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %352
  %361 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %362 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %361, i32 0, i32 4
  %363 = load i64*, i64** %362, align 8
  %364 = load i64, i64* %20, align 8
  %365 = getelementptr inbounds i64, i64* %363, i64 %364
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %368 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %367, i32 0, i32 1
  %369 = load i64*, i64** %368, align 8
  %370 = load i64, i64* %9, align 8
  %371 = getelementptr inbounds i64, i64* %369, i64 %370
  store i64 %366, i64* %371, align 8
  br label %372

372:                                              ; preds = %360, %352
  %373 = load i64, i64* %9, align 8
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %398

375:                                              ; preds = %372
  %376 = load i64, i64* %9, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %9, align 8
  %378 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %379 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %378, i32 0, i32 1
  %380 = load i64*, i64** %379, align 8
  %381 = load i64, i64* %9, align 8
  %382 = getelementptr inbounds i64, i64* %380, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %397

385:                                              ; preds = %375
  %386 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %387 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %386, i32 0, i32 4
  %388 = load i64*, i64** %387, align 8
  %389 = load i64, i64* %20, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %393 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %392, i32 0, i32 1
  %394 = load i64*, i64** %393, align 8
  %395 = load i64, i64* %9, align 8
  %396 = getelementptr inbounds i64, i64* %394, i64 %395
  store i64 %391, i64* %396, align 8
  br label %397

397:                                              ; preds = %385, %375
  br label %398

398:                                              ; preds = %397, %372
  br label %399

399:                                              ; preds = %398
  %400 = load i64, i64* %9, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %9, align 8
  %402 = load i64, i64* %20, align 8
  %403 = add i64 %402, 1
  store i64 %403, i64* %20, align 8
  br label %348

404:                                              ; preds = %348
  store i64 0, i64* %9, align 8
  br label %405

405:                                              ; preds = %430, %404
  %406 = load i64, i64* %9, align 8
  %407 = load i64, i64* @BRCMS_NUM_RATES_MCS_1_STREAM, align 8
  %408 = icmp ult i64 %406, %407
  br i1 %408, label %409, label %433

409:                                              ; preds = %405
  %410 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %411 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %410, i32 0, i32 2
  %412 = load i64*, i64** %411, align 8
  %413 = load i64, i64* %9, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %429

417:                                              ; preds = %409
  %418 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %419 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %418, i32 0, i32 4
  %420 = load i64*, i64** %419, align 8
  %421 = load i64, i64* %9, align 8
  %422 = getelementptr inbounds i64, i64* %420, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %425 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %424, i32 0, i32 2
  %426 = load i64*, i64** %425, align 8
  %427 = load i64, i64* %9, align 8
  %428 = getelementptr inbounds i64, i64* %426, i64 %427
  store i64 %423, i64* %428, align 8
  br label %429

429:                                              ; preds = %417, %409
  br label %430

430:                                              ; preds = %429
  %431 = load i64, i64* %9, align 8
  %432 = add i64 %431, 1
  store i64 %432, i64* %9, align 8
  br label %405

433:                                              ; preds = %405
  store i64 0, i64* %9, align 8
  store i64 0, i64* %20, align 8
  br label %434

434:                                              ; preds = %485, %433
  %435 = load i64, i64* %9, align 8
  %436 = load i64, i64* @BRCMS_NUM_RATES_OFDM, align 8
  %437 = icmp ult i64 %435, %436
  br i1 %437, label %438, label %490

438:                                              ; preds = %434
  %439 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %440 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %439, i32 0, i32 0
  %441 = load i64*, i64** %440, align 8
  %442 = load i64, i64* %9, align 8
  %443 = getelementptr inbounds i64, i64* %441, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %458

446:                                              ; preds = %438
  %447 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %448 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %447, i32 0, i32 2
  %449 = load i64*, i64** %448, align 8
  %450 = load i64, i64* %20, align 8
  %451 = getelementptr inbounds i64, i64* %449, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %454 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %453, i32 0, i32 0
  %455 = load i64*, i64** %454, align 8
  %456 = load i64, i64* %9, align 8
  %457 = getelementptr inbounds i64, i64* %455, i64 %456
  store i64 %452, i64* %457, align 8
  br label %458

458:                                              ; preds = %446, %438
  %459 = load i64, i64* %9, align 8
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %484

461:                                              ; preds = %458
  %462 = load i64, i64* %9, align 8
  %463 = add i64 %462, 1
  store i64 %463, i64* %9, align 8
  %464 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %465 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %464, i32 0, i32 0
  %466 = load i64*, i64** %465, align 8
  %467 = load i64, i64* %9, align 8
  %468 = getelementptr inbounds i64, i64* %466, i64 %467
  %469 = load i64, i64* %468, align 8
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %471, label %483

471:                                              ; preds = %461
  %472 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %473 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %472, i32 0, i32 2
  %474 = load i64*, i64** %473, align 8
  %475 = load i64, i64* %20, align 8
  %476 = getelementptr inbounds i64, i64* %474, i64 %475
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %479 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %478, i32 0, i32 0
  %480 = load i64*, i64** %479, align 8
  %481 = load i64, i64* %9, align 8
  %482 = getelementptr inbounds i64, i64* %480, i64 %481
  store i64 %477, i64* %482, align 8
  br label %483

483:                                              ; preds = %471, %461
  br label %484

484:                                              ; preds = %483, %458
  br label %485

485:                                              ; preds = %484
  %486 = load i64, i64* %9, align 8
  %487 = add i64 %486, 1
  store i64 %487, i64* %9, align 8
  %488 = load i64, i64* %20, align 8
  %489 = add i64 %488, 1
  store i64 %489, i64* %20, align 8
  br label %434

490:                                              ; preds = %434
  store i64 0, i64* %9, align 8
  br label %491

491:                                              ; preds = %536, %490
  %492 = load i64, i64* %9, align 8
  %493 = load i64, i64* @BRCMS_NUM_RATES_MCS_1_STREAM, align 8
  %494 = icmp ult i64 %492, %493
  br i1 %494, label %495, label %539

495:                                              ; preds = %491
  %496 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %497 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %496, i32 0, i32 5
  %498 = load i64*, i64** %497, align 8
  %499 = load i64, i64* %9, align 8
  %500 = getelementptr inbounds i64, i64* %498, i64 %499
  %501 = load i64, i64* %500, align 8
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %515

503:                                              ; preds = %495
  %504 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %505 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %504, i32 0, i32 3
  %506 = load i64*, i64** %505, align 8
  %507 = load i64, i64* %9, align 8
  %508 = getelementptr inbounds i64, i64* %506, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %511 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %510, i32 0, i32 5
  %512 = load i64*, i64** %511, align 8
  %513 = load i64, i64* %9, align 8
  %514 = getelementptr inbounds i64, i64* %512, i64 %513
  store i64 %509, i64* %514, align 8
  br label %515

515:                                              ; preds = %503, %495
  %516 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %517 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %516, i32 0, i32 6
  %518 = load i64*, i64** %517, align 8
  %519 = load i64, i64* %9, align 8
  %520 = getelementptr inbounds i64, i64* %518, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %523, label %535

523:                                              ; preds = %515
  %524 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %525 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %524, i32 0, i32 4
  %526 = load i64*, i64** %525, align 8
  %527 = load i64, i64* %9, align 8
  %528 = getelementptr inbounds i64, i64* %526, i64 %527
  %529 = load i64, i64* %528, align 8
  %530 = load %struct.txpwr_limits*, %struct.txpwr_limits** %6, align 8
  %531 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %530, i32 0, i32 6
  %532 = load i64*, i64** %531, align 8
  %533 = load i64, i64* %9, align 8
  %534 = getelementptr inbounds i64, i64* %532, i64 %533
  store i64 %529, i64* %534, align 8
  br label %535

535:                                              ; preds = %523, %515
  br label %536

536:                                              ; preds = %535
  %537 = load i64, i64* %9, align 8
  %538 = add i64 %537, 1
  store i64 %538, i64* %9, align 8
  br label %491

539:                                              ; preds = %491
  br label %540

540:                                              ; preds = %539, %42
  ret void
}

declare dso_local i32 @memset(%struct.txpwr_limits*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @CHSPEC_CHANNEL(i32) #1

declare dso_local i64 @chspec_bandunit(i32) #1

declare dso_local %struct.locale_mimo_info* @brcms_c_get_mimo_5g(i32) #1

declare dso_local %struct.locale_mimo_info* @brcms_c_get_mimo_2g(i32) #1

declare dso_local i32 @QDB(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @CHANNEL_POWER_IDX_5G(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
