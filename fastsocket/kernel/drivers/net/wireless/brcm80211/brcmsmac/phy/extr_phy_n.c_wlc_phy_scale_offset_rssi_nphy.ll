; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_scale_offset_rssi_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_scale_offset_rssi_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@NPHY_RSSICAL_MAXREAD = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i64 0, align 8
@RADIO_MIMO_CORESEL_ALLRX = common dso_local global i64 0, align 8
@NPHY_RAIL_I = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_NB = common dso_local global i64 0, align 8
@NPHY_RAIL_Q = common dso_local global i64 0, align 8
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_W1 = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_W2 = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_TBD = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_IQ = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_TSSI_2G = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_TSSI_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i64, i64, i64)* @wlc_phy_scale_offset_rssi_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  br label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  %25 = sub nsw i32 0, %24
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  %30 = sub nsw i32 0, %29
  %31 = sub nsw i32 %30, 1
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 63
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 63
  %41 = or i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45, %34
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @NPHY_RAIL_I, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @write_phy_reg(%struct.brcms_phy* %58, i32 422, i32 %59)
  br label %61

61:                                               ; preds = %57, %53, %49, %45
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65, %61
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @NPHY_RAIL_Q, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @write_phy_reg(%struct.brcms_phy* %78, i32 428, i32 %79)
  br label %81

81:                                               ; preds = %77, %73, %69, %65
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85, %81
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @NPHY_RAIL_I, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @write_phy_reg(%struct.brcms_phy* %98, i32 434, i32 %99)
  br label %101

101:                                              ; preds = %97, %93, %89, %85
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105, %101
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @NPHY_RAIL_Q, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @write_phy_reg(%struct.brcms_phy* %118, i32 440, i32 %119)
  br label %121

121:                                              ; preds = %117, %113, %109, %105
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %125, %121
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @NPHY_RAIL_I, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @write_phy_reg(%struct.brcms_phy* %138, i32 420, i32 %139)
  br label %141

141:                                              ; preds = %137, %133, %129, %125
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145, %141
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @NPHY_RAIL_Q, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @write_phy_reg(%struct.brcms_phy* %158, i32 426, i32 %159)
  br label %161

161:                                              ; preds = %157, %153, %149, %145
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %165, %161
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @NPHY_RAIL_I, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @write_phy_reg(%struct.brcms_phy* %178, i32 432, i32 %179)
  br label %181

181:                                              ; preds = %177, %173, %169, %165
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %185, %181
  %190 = load i64, i64* %11, align 8
  %191 = load i64, i64* @NPHY_RAIL_Q, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %189
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* @NPHY_RSSI_SEL_W1, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @write_phy_reg(%struct.brcms_phy* %198, i32 438, i32 %199)
  br label %201

201:                                              ; preds = %197, %193, %189, %185
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %221

209:                                              ; preds = %205, %201
  %210 = load i64, i64* %11, align 8
  %211 = load i64, i64* @NPHY_RAIL_I, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = load i64, i64* %12, align 8
  %215 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @write_phy_reg(%struct.brcms_phy* %218, i32 421, i32 %219)
  br label %221

221:                                              ; preds = %217, %213, %209, %205
  %222 = load i64, i64* %10, align 8
  %223 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load i64, i64* %10, align 8
  %227 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225, %221
  %230 = load i64, i64* %11, align 8
  %231 = load i64, i64* @NPHY_RAIL_Q, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @write_phy_reg(%struct.brcms_phy* %238, i32 427, i32 %239)
  br label %241

241:                                              ; preds = %237, %233, %229, %225
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %245, %241
  %250 = load i64, i64* %11, align 8
  %251 = load i64, i64* @NPHY_RAIL_I, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = load i64, i64* %12, align 8
  %255 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @write_phy_reg(%struct.brcms_phy* %258, i32 433, i32 %259)
  br label %261

261:                                              ; preds = %257, %253, %249, %245
  %262 = load i64, i64* %10, align 8
  %263 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = load i64, i64* %10, align 8
  %267 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %265, %261
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @NPHY_RAIL_Q, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %269
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* @NPHY_RSSI_SEL_W2, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @write_phy_reg(%struct.brcms_phy* %278, i32 439, i32 %279)
  br label %281

281:                                              ; preds = %277, %273, %269, %265
  %282 = load i64, i64* %10, align 8
  %283 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %10, align 8
  %287 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %301

289:                                              ; preds = %285, %281
  %290 = load i64, i64* %11, align 8
  %291 = load i64, i64* @NPHY_RAIL_I, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %301

293:                                              ; preds = %289
  %294 = load i64, i64* %12, align 8
  %295 = load i64, i64* @NPHY_RSSI_SEL_TBD, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %299 = load i32, i32* %13, align 4
  %300 = call i32 @write_phy_reg(%struct.brcms_phy* %298, i32 423, i32 %299)
  br label %301

301:                                              ; preds = %297, %293, %289, %285
  %302 = load i64, i64* %10, align 8
  %303 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %309, label %305

305:                                              ; preds = %301
  %306 = load i64, i64* %10, align 8
  %307 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %305, %301
  %310 = load i64, i64* %11, align 8
  %311 = load i64, i64* @NPHY_RAIL_Q, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %321

313:                                              ; preds = %309
  %314 = load i64, i64* %12, align 8
  %315 = load i64, i64* @NPHY_RSSI_SEL_TBD, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %319 = load i32, i32* %13, align 4
  %320 = call i32 @write_phy_reg(%struct.brcms_phy* %318, i32 429, i32 %319)
  br label %321

321:                                              ; preds = %317, %313, %309, %305
  %322 = load i64, i64* %10, align 8
  %323 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = load i64, i64* %10, align 8
  %327 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %341

329:                                              ; preds = %325, %321
  %330 = load i64, i64* %11, align 8
  %331 = load i64, i64* @NPHY_RAIL_I, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %341

333:                                              ; preds = %329
  %334 = load i64, i64* %12, align 8
  %335 = load i64, i64* @NPHY_RSSI_SEL_TBD, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %333
  %338 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @write_phy_reg(%struct.brcms_phy* %338, i32 435, i32 %339)
  br label %341

341:                                              ; preds = %337, %333, %329, %325
  %342 = load i64, i64* %10, align 8
  %343 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %349, label %345

345:                                              ; preds = %341
  %346 = load i64, i64* %10, align 8
  %347 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %361

349:                                              ; preds = %345, %341
  %350 = load i64, i64* %11, align 8
  %351 = load i64, i64* @NPHY_RAIL_Q, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %349
  %354 = load i64, i64* %12, align 8
  %355 = load i64, i64* @NPHY_RSSI_SEL_TBD, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %359 = load i32, i32* %13, align 4
  %360 = call i32 @write_phy_reg(%struct.brcms_phy* %358, i32 441, i32 %359)
  br label %361

361:                                              ; preds = %357, %353, %349, %345
  %362 = load i64, i64* %10, align 8
  %363 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %369, label %365

365:                                              ; preds = %361
  %366 = load i64, i64* %10, align 8
  %367 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %381

369:                                              ; preds = %365, %361
  %370 = load i64, i64* %11, align 8
  %371 = load i64, i64* @NPHY_RAIL_I, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %381

373:                                              ; preds = %369
  %374 = load i64, i64* %12, align 8
  %375 = load i64, i64* @NPHY_RSSI_SEL_IQ, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %379 = load i32, i32* %13, align 4
  %380 = call i32 @write_phy_reg(%struct.brcms_phy* %378, i32 424, i32 %379)
  br label %381

381:                                              ; preds = %377, %373, %369, %365
  %382 = load i64, i64* %10, align 8
  %383 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %389, label %385

385:                                              ; preds = %381
  %386 = load i64, i64* %10, align 8
  %387 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %401

389:                                              ; preds = %385, %381
  %390 = load i64, i64* %11, align 8
  %391 = load i64, i64* @NPHY_RAIL_Q, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %401

393:                                              ; preds = %389
  %394 = load i64, i64* %12, align 8
  %395 = load i64, i64* @NPHY_RSSI_SEL_IQ, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %399 = load i32, i32* %13, align 4
  %400 = call i32 @write_phy_reg(%struct.brcms_phy* %398, i32 430, i32 %399)
  br label %401

401:                                              ; preds = %397, %393, %389, %385
  %402 = load i64, i64* %10, align 8
  %403 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %409, label %405

405:                                              ; preds = %401
  %406 = load i64, i64* %10, align 8
  %407 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %421

409:                                              ; preds = %405, %401
  %410 = load i64, i64* %11, align 8
  %411 = load i64, i64* @NPHY_RAIL_I, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %421

413:                                              ; preds = %409
  %414 = load i64, i64* %12, align 8
  %415 = load i64, i64* @NPHY_RSSI_SEL_IQ, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %421

417:                                              ; preds = %413
  %418 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %419 = load i32, i32* %13, align 4
  %420 = call i32 @write_phy_reg(%struct.brcms_phy* %418, i32 436, i32 %419)
  br label %421

421:                                              ; preds = %417, %413, %409, %405
  %422 = load i64, i64* %10, align 8
  %423 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %429, label %425

425:                                              ; preds = %421
  %426 = load i64, i64* %10, align 8
  %427 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %441

429:                                              ; preds = %425, %421
  %430 = load i64, i64* %11, align 8
  %431 = load i64, i64* @NPHY_RAIL_Q, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %441

433:                                              ; preds = %429
  %434 = load i64, i64* %12, align 8
  %435 = load i64, i64* @NPHY_RSSI_SEL_IQ, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %439 = load i32, i32* %13, align 4
  %440 = call i32 @write_phy_reg(%struct.brcms_phy* %438, i32 442, i32 %439)
  br label %441

441:                                              ; preds = %437, %433, %429, %425
  %442 = load i64, i64* %10, align 8
  %443 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %449, label %445

445:                                              ; preds = %441
  %446 = load i64, i64* %10, align 8
  %447 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %457

449:                                              ; preds = %445, %441
  %450 = load i64, i64* %12, align 8
  %451 = load i64, i64* @NPHY_RSSI_SEL_TSSI_2G, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %449
  %454 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %455 = load i32, i32* %13, align 4
  %456 = call i32 @write_phy_reg(%struct.brcms_phy* %454, i32 425, i32 %455)
  br label %457

457:                                              ; preds = %453, %449, %445
  %458 = load i64, i64* %10, align 8
  %459 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %465, label %461

461:                                              ; preds = %457
  %462 = load i64, i64* %10, align 8
  %463 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %473

465:                                              ; preds = %461, %457
  %466 = load i64, i64* %12, align 8
  %467 = load i64, i64* @NPHY_RSSI_SEL_TSSI_2G, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %473

469:                                              ; preds = %465
  %470 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %471 = load i32, i32* %13, align 4
  %472 = call i32 @write_phy_reg(%struct.brcms_phy* %470, i32 437, i32 %471)
  br label %473

473:                                              ; preds = %469, %465, %461
  %474 = load i64, i64* %10, align 8
  %475 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %481, label %477

477:                                              ; preds = %473
  %478 = load i64, i64* %10, align 8
  %479 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %489

481:                                              ; preds = %477, %473
  %482 = load i64, i64* %12, align 8
  %483 = load i64, i64* @NPHY_RSSI_SEL_TSSI_5G, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %489

485:                                              ; preds = %481
  %486 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %487 = load i32, i32* %13, align 4
  %488 = call i32 @write_phy_reg(%struct.brcms_phy* %486, i32 431, i32 %487)
  br label %489

489:                                              ; preds = %485, %481, %477
  %490 = load i64, i64* %10, align 8
  %491 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %497, label %493

493:                                              ; preds = %489
  %494 = load i64, i64* %10, align 8
  %495 = load i64, i64* @RADIO_MIMO_CORESEL_ALLRX, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %505

497:                                              ; preds = %493, %489
  %498 = load i64, i64* %12, align 8
  %499 = load i64, i64* @NPHY_RSSI_SEL_TSSI_5G, align 8
  %500 = icmp eq i64 %498, %499
  br i1 %500, label %501, label %505

501:                                              ; preds = %497
  %502 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %503 = load i32, i32* %13, align 4
  %504 = call i32 @write_phy_reg(%struct.brcms_phy* %502, i32 443, i32 %503)
  br label %505

505:                                              ; preds = %501, %497, %493
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
