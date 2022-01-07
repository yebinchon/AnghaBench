; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i64 }
%struct.rv515_mc_save = type { i32, i32, i32* }

@R_000300_VGA_RENDER_CONTROL = common dso_local global i64 0, align 8
@R_000328_VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1CRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@AVIVO_CRTC_EN = common dso_local global i32 0, align 4
@AVIVO_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@AVIVO_D1CRTC_UPDATE_LOCK = common dso_local global i64 0, align 8
@CHIP_R600 = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_MC_CITF_CNTL = common dso_local global i64 0, align 8
@R600_CITF_CNTL = common dso_local global i64 0, align 8
@R600_BLACKOUT_MASK = common dso_local global i32 0, align 4
@R600_BIF_FB_EN = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1MODE_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_mc_stop(%struct.radeon_device* %0, %struct.rv515_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv515_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.rv515_mc_save* %1, %struct.rv515_mc_save** %4, align 8
  %11 = load i64, i64* @R_000300_VGA_RENDER_CONTROL, align 8
  %12 = call i32 @RREG32(i64 %11)
  %13 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %14 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @R_000328_VGA_HDP_CONTROL, align 8
  %16 = call i32 @RREG32(i64 %15)
  %17 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %18 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* @R_000300_VGA_RENDER_CONTROL, align 8
  %20 = call i32 @WREG32(i64 %19, i32 0)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %165, %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %168

27:                                               ; preds = %21
  %28 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %29 = load i64*, i64** @crtc_offsets, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @RREG32(i64 %34)
  %36 = load i32, i32* @AVIVO_CRTC_EN, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %157

40:                                               ; preds = %27
  %41 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %42 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 1, i32* %46, align 4
  %47 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %48 = load i64*, i64** @crtc_offsets, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = call i32 @RREG32(i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @AVIVO_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %40
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %60, i32 %61)
  %63 = load i64, i64* @AVIVO_D1CRTC_UPDATE_LOCK, align 8
  %64 = load i64*, i64** @crtc_offsets, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %63, %68
  %70 = call i32 @WREG32(i64 %69, i32 1)
  %71 = load i32, i32* @AVIVO_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %75 = load i64*, i64** @crtc_offsets, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %74, %79
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @WREG32(i64 %80, i32 %81)
  %83 = load i64, i64* @AVIVO_D1CRTC_UPDATE_LOCK, align 8
  %84 = load i64*, i64** @crtc_offsets, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %83, %88
  %90 = call i32 @WREG32(i64 %89, i32 0)
  br label %91

91:                                               ; preds = %59, %40
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %110, %91
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %113

108:                                              ; preds = %101
  %109 = call i32 @udelay(i32 1)
  br label %110

110:                                              ; preds = %108
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %95

113:                                              ; preds = %107, %95
  %114 = load i64, i64* @AVIVO_D1CRTC_UPDATE_LOCK, align 8
  %115 = load i64*, i64** @crtc_offsets, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = call i32 @WREG32(i64 %120, i32 1)
  %122 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %123 = load i64*, i64** @crtc_offsets, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %122, %127
  %129 = call i32 @RREG32(i64 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* @AVIVO_CRTC_EN, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %135 = load i64*, i64** @crtc_offsets, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %134, %139
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @WREG32(i64 %140, i32 %141)
  %143 = load i64, i64* @AVIVO_D1CRTC_UPDATE_LOCK, align 8
  %144 = load i64*, i64** @crtc_offsets, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %143, %148
  %150 = call i32 @WREG32(i64 %149, i32 0)
  %151 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %152 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 0, i32* %156, align 4
  br label %164

157:                                              ; preds = %27
  %158 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %159 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %157, %113
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %21

168:                                              ; preds = %21
  %169 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %170 = call i32 @radeon_mc_wait_for_idle(%struct.radeon_device* %169)
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @CHIP_R600, align 8
  %175 = icmp sge i64 %173, %174
  br i1 %175, label %176, label %215

176:                                              ; preds = %168
  %177 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %178 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CHIP_RV770, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i64, i64* @R700_MC_CITF_CNTL, align 8
  %184 = call i32 @RREG32(i64 %183)
  store i32 %184, i32* %8, align 4
  br label %188

185:                                              ; preds = %176
  %186 = load i64, i64* @R600_CITF_CNTL, align 8
  %187 = call i32 @RREG32(i64 %186)
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @R600_BLACKOUT_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @R600_BLACKOUT_MASK, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %214

194:                                              ; preds = %188
  %195 = load i64, i64* @R600_BIF_FB_EN, align 8
  %196 = call i32 @WREG32(i64 %195, i32 0)
  %197 = load i32, i32* @R600_BLACKOUT_MASK, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @CHIP_RV770, align 8
  %204 = icmp sge i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %194
  %206 = load i64, i64* @R700_MC_CITF_CNTL, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @WREG32(i64 %206, i32 %207)
  br label %213

209:                                              ; preds = %194
  %210 = load i64, i64* @R600_CITF_CNTL, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @WREG32(i64 %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %205
  br label %214

214:                                              ; preds = %213, %188
  br label %215

215:                                              ; preds = %214, %168
  %216 = call i32 @udelay(i32 100)
  store i32 0, i32* %9, align 4
  br label %217

217:                                              ; preds = %284, %215
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %287

223:                                              ; preds = %217
  %224 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %225 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %283

232:                                              ; preds = %223
  %233 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %234 = load i64*, i64** @crtc_offsets, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %233, %238
  %240 = call i32 @RREG32(i64 %239)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %258, label %245

245:                                              ; preds = %232
  %246 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %247 = load i32, i32* %6, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %6, align 4
  %249 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %250 = load i64*, i64** @crtc_offsets, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @WREG32(i64 %255, i32 %256)
  br label %258

258:                                              ; preds = %245, %232
  %259 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_LOCK, align 8
  %260 = load i64*, i64** @crtc_offsets, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %259, %264
  %266 = call i32 @RREG32(i64 %265)
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = and i32 %267, 1
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %258
  %271 = load i32, i32* %6, align 4
  %272 = or i32 %271, 1
  store i32 %272, i32* %6, align 4
  %273 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_LOCK, align 8
  %274 = load i64*, i64** @crtc_offsets, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %273, %278
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @WREG32(i64 %279, i32 %280)
  br label %282

282:                                              ; preds = %270, %258
  br label %283

283:                                              ; preds = %282, %223
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %217

287:                                              ; preds = %217
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @radeon_wait_for_vblank(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @radeon_mc_wait_for_idle(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
