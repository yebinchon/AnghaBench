; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_a1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_a1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcnphy_spb_tone = type { i32, i32 }
%struct.brcms_phy = type { i32 }
%struct.lcnphy_unsign16_struct = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RADIO_2064_REG026 = common dso_local global i32 0, align 4
@lcnphy_spb_tone_3750 = common dso_local global %struct.lcnphy_spb_tone* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32)* @wlc_lcnphy_a1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_a1(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lcnphy_spb_tone*, align 8
  %10 = alloca %struct.lcnphy_spb_tone, align 4
  %11 = alloca %struct.lcnphy_unsign16_struct, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
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
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32*, align 8
  %45 = alloca %struct.lcnphy_unsign16_struct, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %21, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32* @kmalloc(i32 524, i32 %46)
  store i32* %47, i32** %28, align 8
  %48 = load i32*, i32** %28, align 8
  %49 = icmp eq i32* null, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %4
  br label %426

51:                                               ; preds = %4
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32* @kmalloc(i32 80, i32 %52)
  store i32* %53, i32** %44, align 8
  %54 = load i32*, i32** %44, align 8
  %55 = icmp eq i32* null, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %28, align 8
  %58 = call i32 @kfree(i32* %57)
  br label %426

59:                                               ; preds = %51
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %61 = call i32 @read_phy_reg(%struct.brcms_phy* %60, i32 1754)
  store i32 %61, i32* %38, align 4
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %63 = call i32 @read_phy_reg(%struct.brcms_phy* %62, i32 1755)
  store i32 %63, i32* %39, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %65 = load i32, i32* @RADIO_2064_REG026, align 4
  %66 = call i32 @read_radio_reg(%struct.brcms_phy* %64, i32 %65)
  store i32 %66, i32* %43, align 4
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %68 = call i32 @write_phy_reg(%struct.brcms_phy* %67, i32 2365, i32 192)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %70 = call i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %69, i32 3750, i32 88, i32 0)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %72 = call i32 @write_phy_reg(%struct.brcms_phy* %71, i32 1754, i32 65535)
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %74 = call i32 @or_phy_reg(%struct.brcms_phy* %73, i32 1755, i32 3)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %76 = load i32*, i32** %44, align 8
  %77 = call i32 @wlc_lcnphy_tx_iqlo_loopback(%struct.brcms_phy* %75, i32* %76)
  %78 = call i32 @udelay(i32 500)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %80 = call i32 @read_phy_reg(%struct.brcms_phy* %79, i32 2360)
  store i32 %80, i32* %40, align 4
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %82 = call i32 @read_phy_reg(%struct.brcms_phy* %81, i32 1239)
  store i32 %82, i32* %41, align 4
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %84 = call i32 @read_phy_reg(%struct.brcms_phy* %83, i32 1240)
  store i32 %84, i32* %42, align 4
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %86 = call i32 @or_phy_reg(%struct.brcms_phy* %85, i32 2360, i32 4)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %88 = call i32 @or_phy_reg(%struct.brcms_phy* %87, i32 1239, i32 4)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %90 = call i32 @or_phy_reg(%struct.brcms_phy* %89, i32 1239, i32 8)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %92 = call i32 @mod_phy_reg(%struct.brcms_phy* %91, i32 1239, i32 28672, i32 8192)
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %94 = call i32 @or_phy_reg(%struct.brcms_phy* %93, i32 1240, i32 1)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %96 = call i32 @or_phy_reg(%struct.brcms_phy* %95, i32 1240, i32 2)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %98 = call i32 @mod_phy_reg(%struct.brcms_phy* %97, i32 1240, i32 4092, i32 2280)
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %100 = call i32 @mod_phy_reg(%struct.brcms_phy* %99, i32 1240, i32 28672, i32 28672)
  %101 = load %struct.lcnphy_spb_tone*, %struct.lcnphy_spb_tone** @lcnphy_spb_tone_3750, align 8
  %102 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %101, i64 0
  store %struct.lcnphy_spb_tone* %102, %struct.lcnphy_spb_tone** %9, align 8
  store i32 32, i32* %12, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %59
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 4, i32* %7, align 4
  br label %110

109:                                              ; preds = %105
  store i32 9, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %108
  br label %111

111:                                              ; preds = %110, %59
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 3, i32* %8, align 4
  br label %119

118:                                              ; preds = %114
  store i32 8, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i32, i32* %8, align 4
  %122 = shl i32 1, %121
  store i32 %122, i32* %18, align 4
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @wlc_lcnphy_get_cc(%struct.brcms_phy* %123, i32 %124)
  %126 = bitcast %struct.lcnphy_unsign16_struct* %45 to i64*
  store i64 %125, i64* %126, align 4
  %127 = bitcast %struct.lcnphy_unsign16_struct* %11 to i8*
  %128 = bitcast %struct.lcnphy_unsign16_struct* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 8, i1 false)
  %129 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %11, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %26, align 4
  %131 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %11, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %27, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %152

135:                                              ; preds = %120
  %136 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %11, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 127
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 256
  store i32 %142, i32* %26, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %11, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 127
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %11, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 256
  store i32 %150, i32* %27, align 4
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %120
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %27, align 4
  %157 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %153, i32 %154, i32 %155, i32 %156)
  %158 = call i32 @udelay(i32 20)
  store i32 0, i32* %19, align 4
  br label %159

159:                                              ; preds = %393, %152
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %163, %164
  br label %166

166:                                              ; preds = %162, %159
  %167 = phi i1 [ false, %159 ], [ %165, %162 ]
  br i1 %167, label %168, label %396

168:                                              ; preds = %166
  store i32 1, i32* %35, align 4
  store i32 0, i32* %34, align 4
  %169 = load i32, i32* %6, align 4
  switch i32 %169, label %174 [
    i32 0, label %170
    i32 2, label %171
    i32 3, label %172
    i32 4, label %173
  ]

170:                                              ; preds = %168
  store i32 511, i32* %21, align 4
  br label %174

171:                                              ; preds = %168
  store i32 127, i32* %21, align 4
  br label %174

172:                                              ; preds = %168
  store i32 15, i32* %21, align 4
  br label %174

173:                                              ; preds = %168
  store i32 15, i32* %21, align 4
  br label %174

174:                                              ; preds = %168, %173, %172, %171, %170
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %176 = call i32 @read_phy_reg(%struct.brcms_phy* %175, i32 2365)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = mul nsw i32 2, %177
  store i32 %178, i32* %20, align 4
  store i32 0, i32* %36, align 4
  store i32 7, i32* %13, align 4
  store i32 1, i32* %37, align 4
  br label %179

179:                                              ; preds = %174, %229
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %181 = load i32, i32* @RADIO_2064_REG026, align 4
  %182 = load i32, i32* %13, align 4
  %183 = and i32 %182, 7
  %184 = load i32, i32* %13, align 4
  %185 = and i32 %184, 7
  %186 = shl i32 %185, 4
  %187 = or i32 %183, %186
  %188 = call i32 @write_radio_reg(%struct.brcms_phy* %180, i32 %181, i32 %187)
  %189 = call i32 @udelay(i32 50)
  store i32 0, i32* %34, align 4
  %190 = load i32*, i32** %28, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 130
  store i32 0, i32* %191, align 4
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32*, i32** %28, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = call i32 @wlc_lcnphy_samp_cap(%struct.brcms_phy* %192, i32 1, i32 %193, i32* %195, i32 2)
  %197 = load i32*, i32** %28, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 130
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %179
  store i32 1, i32* %34, align 4
  br label %202

202:                                              ; preds = %201, %179
  %203 = load i32, i32* %34, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %13, align 4
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i32, i32* %34, align 4
  %210 = load i32, i32* %36, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load i32, i32* %37, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  br label %231

216:                                              ; preds = %212, %208
  %217 = load i32, i32* %34, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %13, align 4
  %224 = icmp sle i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %13, align 4
  %227 = icmp sge i32 %226, 7
  br i1 %227, label %228, label %229

228:                                              ; preds = %225, %222
  br label %231

229:                                              ; preds = %225
  %230 = load i32, i32* %34, align 4
  store i32 %230, i32* %36, align 4
  store i32 0, i32* %37, align 4
  br label %179

231:                                              ; preds = %228, %215
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 0, i32* %13, align 4
  br label %240

235:                                              ; preds = %231
  %236 = load i32, i32* %13, align 4
  %237 = icmp sgt i32 %236, 7
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 7, i32* %13, align 4
  br label %239

239:                                              ; preds = %238, %235
  br label %240

240:                                              ; preds = %239, %234
  %241 = load i32, i32* %18, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %14, align 4
  br label %243

243:                                              ; preds = %378, %240
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %18, align 4
  %246 = icmp sle i32 %244, %245
  br i1 %246, label %247, label %382

247:                                              ; preds = %243
  %248 = load i32, i32* %18, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %373, %247
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %18, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %377

254:                                              ; preds = %250
  %255 = load i32, i32* %26, align 4
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %255, %256
  store i32 %257, i32* %22, align 4
  %258 = load i32, i32* %27, align 4
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %23, align 4
  %261 = load i32, i32* %22, align 4
  %262 = load i32, i32* %21, align 4
  %263 = sub nsw i32 0, %262
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %254
  %266 = load i32, i32* %21, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %22, align 4
  br label %275

268:                                              ; preds = %254
  %269 = load i32, i32* %22, align 4
  %270 = load i32, i32* %21, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32, i32* %21, align 4
  store i32 %273, i32* %22, align 4
  br label %274

274:                                              ; preds = %272, %268
  br label %275

275:                                              ; preds = %274, %265
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* %21, align 4
  %278 = sub nsw i32 0, %277
  %279 = icmp slt i32 %276, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i32, i32* %21, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %23, align 4
  br label %290

283:                                              ; preds = %275
  %284 = load i32, i32* %23, align 4
  %285 = load i32, i32* %21, align 4
  %286 = icmp sgt i32 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = load i32, i32* %21, align 4
  store i32 %288, i32* %23, align 4
  br label %289

289:                                              ; preds = %287, %283
  br label %290

290:                                              ; preds = %289, %280
  %291 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* %22, align 4
  %294 = load i32, i32* %23, align 4
  %295 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %291, i32 %292, i32 %293, i32 %294)
  %296 = call i32 @udelay(i32 20)
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %298 = load i32*, i32** %28, align 8
  %299 = call i32 @wlc_lcnphy_samp_cap(%struct.brcms_phy* %297, i32 0, i32 0, i32* %298, i32 2)
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %16, align 4
  br label %300

300:                                              ; preds = %347, %290
  %301 = load i32, i32* %16, align 4
  %302 = icmp slt i32 %301, 128
  br i1 %302, label %303, label %350

303:                                              ; preds = %300
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %12, align 4
  %309 = srem i32 %307, %308
  store i32 %309, i32* %17, align 4
  br label %315

310:                                              ; preds = %303
  %311 = load i32, i32* %16, align 4
  %312 = mul nsw i32 2, %311
  %313 = load i32, i32* %12, align 4
  %314 = srem i32 %312, %313
  store i32 %314, i32* %17, align 4
  br label %315

315:                                              ; preds = %310, %306
  %316 = load %struct.lcnphy_spb_tone*, %struct.lcnphy_spb_tone** %9, align 8
  %317 = load i32, i32* %17, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %316, i64 %318
  %320 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %10, i32 0, i32 0
  store i32 %321, i32* %322, align 4
  %323 = load %struct.lcnphy_spb_tone*, %struct.lcnphy_spb_tone** %9, align 8
  %324 = load i32, i32* %17, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %323, i64 %325
  %327 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %10, i32 0, i32 1
  store i32 %328, i32* %329, align 4
  %330 = load i32*, i32** %28, align 8
  %331 = load i32, i32* %16, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %29, align 4
  %335 = load i32, i32* %30, align 4
  %336 = load i32, i32* %29, align 4
  %337 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %10, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = mul nsw i32 %336, %338
  %340 = add nsw i32 %335, %339
  store i32 %340, i32* %30, align 4
  %341 = load i32, i32* %31, align 4
  %342 = load i32, i32* %29, align 4
  %343 = getelementptr inbounds %struct.lcnphy_spb_tone, %struct.lcnphy_spb_tone* %10, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = mul nsw i32 %342, %344
  %346 = add nsw i32 %341, %345
  store i32 %346, i32* %31, align 4
  br label %347

347:                                              ; preds = %315
  %348 = load i32, i32* %16, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %16, align 4
  br label %300

350:                                              ; preds = %300
  %351 = load i32, i32* %30, align 4
  %352 = ashr i32 %351, 10
  store i32 %352, i32* %30, align 4
  %353 = load i32, i32* %31, align 4
  %354 = ashr i32 %353, 10
  store i32 %354, i32* %31, align 4
  %355 = load i32, i32* %30, align 4
  %356 = load i32, i32* %30, align 4
  %357 = mul nsw i32 %355, %356
  %358 = load i32, i32* %31, align 4
  %359 = load i32, i32* %31, align 4
  %360 = mul nsw i32 %358, %359
  %361 = add nsw i32 %357, %360
  store i32 %361, i32* %32, align 4
  %362 = load i32, i32* %35, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %350
  %365 = load i32, i32* %32, align 4
  %366 = load i32, i32* %33, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364, %350
  %369 = load i32, i32* %32, align 4
  store i32 %369, i32* %33, align 4
  %370 = load i32, i32* %22, align 4
  store i32 %370, i32* %24, align 4
  %371 = load i32, i32* %23, align 4
  store i32 %371, i32* %25, align 4
  br label %372

372:                                              ; preds = %368, %364
  store i32 0, i32* %35, align 4
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* %15, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %15, align 4
  br label %250

377:                                              ; preds = %250
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %18, align 4
  %380 = load i32, i32* %14, align 4
  %381 = add nsw i32 %380, %379
  store i32 %381, i32* %14, align 4
  br label %243

382:                                              ; preds = %243
  store i32 1, i32* %35, align 4
  %383 = load i32, i32* %24, align 4
  store i32 %383, i32* %26, align 4
  %384 = load i32, i32* %25, align 4
  store i32 %384, i32* %27, align 4
  %385 = load i32, i32* %18, align 4
  %386 = ashr i32 %385, 1
  store i32 %386, i32* %18, align 4
  %387 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %388 = load i32, i32* %6, align 4
  %389 = load i32, i32* %26, align 4
  %390 = load i32, i32* %27, align 4
  %391 = call i32 @wlc_lcnphy_set_cc(%struct.brcms_phy* %387, i32 %388, i32 %389, i32 %390)
  %392 = call i32 @udelay(i32 20)
  br label %393

393:                                              ; preds = %382
  %394 = load i32, i32* %19, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %19, align 4
  br label %159

396:                                              ; preds = %166
  br label %397

397:                                              ; preds = %396
  %398 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %399 = load i32*, i32** %44, align 8
  %400 = call i32 @wlc_lcnphy_tx_iqlo_loopback_cleanup(%struct.brcms_phy* %398, i32* %399)
  %401 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %402 = call i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy* %401)
  %403 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %404 = load i32, i32* %38, align 4
  %405 = call i32 @write_phy_reg(%struct.brcms_phy* %403, i32 1754, i32 %404)
  %406 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %407 = load i32, i32* %39, align 4
  %408 = call i32 @write_phy_reg(%struct.brcms_phy* %406, i32 1755, i32 %407)
  %409 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %410 = load i32, i32* %40, align 4
  %411 = call i32 @write_phy_reg(%struct.brcms_phy* %409, i32 2360, i32 %410)
  %412 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %413 = load i32, i32* %41, align 4
  %414 = call i32 @write_phy_reg(%struct.brcms_phy* %412, i32 1239, i32 %413)
  %415 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %416 = load i32, i32* %42, align 4
  %417 = call i32 @write_phy_reg(%struct.brcms_phy* %415, i32 1240, i32 %416)
  %418 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %419 = load i32, i32* @RADIO_2064_REG026, align 4
  %420 = load i32, i32* %43, align 4
  %421 = call i32 @write_radio_reg(%struct.brcms_phy* %418, i32 %419, i32 %420)
  %422 = load i32*, i32** %44, align 8
  %423 = call i32 @kfree(i32* %422)
  %424 = load i32*, i32** %28, align 8
  %425 = call i32 @kfree(i32* %424)
  br label %426

426:                                              ; preds = %397, %56, %50
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_iqlo_loopback(%struct.brcms_phy*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @wlc_lcnphy_get_cc(%struct.brcms_phy*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wlc_lcnphy_set_cc(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_samp_cap(%struct.brcms_phy*, i32, i32, i32*, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_iqlo_loopback_cleanup(%struct.brcms_phy*, i32*) #1

declare dso_local i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
