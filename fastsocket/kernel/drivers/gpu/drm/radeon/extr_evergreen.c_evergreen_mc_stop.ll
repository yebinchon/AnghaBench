; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.evergreen_mc_save = type { i32, i32, i32* }

@VGA_RENDER_CONTROL = common dso_local global i64 0, align 8
@VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@EVERGREEN_CRTC_MASTER_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_BLANK_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_BLANK_DATA_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_UPDATE_LOCK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i64 0, align 8
@BLACKOUT_MODE_MASK = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@EVERGREEN_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_mc_stop(%struct.radeon_device* %0, %struct.evergreen_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.evergreen_mc_save* %1, %struct.evergreen_mc_save** %4, align 8
  %11 = load i64, i64* @VGA_RENDER_CONTROL, align 8
  %12 = call i32 @RREG32(i64 %11)
  %13 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %14 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @VGA_HDP_CONTROL, align 8
  %16 = call i32 @RREG32(i64 %15)
  %17 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %18 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* @VGA_RENDER_CONTROL, align 8
  %20 = call i32 @WREG32(i64 %19, i32 0)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %208, %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %211

27:                                               ; preds = %21
  %28 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %29 = load i64*, i64** @crtc_offsets, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @RREG32(i64 %34)
  %36 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %200

40:                                               ; preds = %27
  %41 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %42 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 1, i32* %46, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %40
  %51 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %52 = load i64*, i64** @crtc_offsets, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %51, %56
  %58 = call i32 @RREG32(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @EVERGREEN_CRTC_BLANK_DATA_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %50
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %64, i32 %65)
  %67 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %68 = load i64*, i64** @crtc_offsets, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = call i32 @WREG32(i64 %73, i32 1)
  %75 = load i32, i32* @EVERGREEN_CRTC_BLANK_DATA_EN, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %79 = load i64*, i64** @crtc_offsets, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @WREG32(i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %63, %50
  br label %134

88:                                               ; preds = %40
  %89 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %90 = load i64*, i64** @crtc_offsets, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %89, %94
  %96 = call i32 @RREG32(i64 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %88
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @radeon_wait_for_vblank(%struct.radeon_device* %102, i32 %103)
  %105 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %106 = load i64*, i64** @crtc_offsets, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %105, %110
  %112 = call i32 @WREG32(i64 %111, i32 1)
  %113 = load i32, i32* @EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %117 = load i64*, i64** @crtc_offsets, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @WREG32(i64 %122, i32 %123)
  %125 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %126 = load i64*, i64** @crtc_offsets, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %125, %130
  %132 = call i32 @WREG32(i64 %131, i32 0)
  br label %133

133:                                              ; preds = %101, %88
  br label %134

134:                                              ; preds = %133, %87
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %135, i32 %136)
  store i32 %137, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %153, %134
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %138
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %145, i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %156

151:                                              ; preds = %144
  %152 = call i32 @udelay(i32 1)
  br label %153

153:                                              ; preds = %151
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %138

156:                                              ; preds = %150, %138
  %157 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %158 = load i64*, i64** @crtc_offsets, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %157, %162
  %164 = call i32 @WREG32(i64 %163, i32 1)
  %165 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %166 = load i64*, i64** @crtc_offsets, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %165, %170
  %172 = call i32 @RREG32(i64 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %6, align 4
  %177 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %178 = load i64*, i64** @crtc_offsets, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %177, %182
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @WREG32(i64 %183, i32 %184)
  %186 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %187 = load i64*, i64** @crtc_offsets, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %186, %191
  %193 = call i32 @WREG32(i64 %192, i32 0)
  %194 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %195 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 0, i32* %199, align 4
  br label %207

200:                                              ; preds = %27
  %201 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %202 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %200, %156
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %21

211:                                              ; preds = %21
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = call i32 @radeon_mc_wait_for_idle(%struct.radeon_device* %212)
  %214 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %215 = call i32 @RREG32(i64 %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @BLACKOUT_MODE_MASK, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 1
  br i1 %219, label %220, label %231

220:                                              ; preds = %211
  %221 = load i64, i64* @BIF_FB_EN, align 8
  %222 = call i32 @WREG32(i64 %221, i32 0)
  %223 = load i32, i32* @BLACKOUT_MODE_MASK, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %8, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %8, align 4
  %227 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %228 = load i32, i32* %8, align 4
  %229 = or i32 %228, 1
  %230 = call i32 @WREG32(i64 %227, i32 %229)
  br label %231

231:                                              ; preds = %220, %211
  %232 = call i32 @udelay(i32 100)
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %300, %231
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %236 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %303

239:                                              ; preds = %233
  %240 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %241 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %299

248:                                              ; preds = %239
  %249 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %250 = load i64*, i64** @crtc_offsets, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %250, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = call i32 @RREG32(i64 %255)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %274, label %261

261:                                              ; preds = %248
  %262 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %263 = load i32, i32* %6, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %6, align 4
  %265 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %266 = load i64*, i64** @crtc_offsets, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %265, %270
  %272 = load i32, i32* %6, align 4
  %273 = call i32 @WREG32(i64 %271, i32 %272)
  br label %274

274:                                              ; preds = %261, %248
  %275 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %276 = load i64*, i64** @crtc_offsets, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %275, %280
  %282 = call i32 @RREG32(i64 %281)
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %6, align 4
  %284 = and i32 %283, 1
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %274
  %287 = load i32, i32* %6, align 4
  %288 = or i32 %287, 1
  store i32 %288, i32* %6, align 4
  %289 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %290 = load i64*, i64** @crtc_offsets, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %289, %294
  %296 = load i32, i32* %6, align 4
  %297 = call i32 @WREG32(i64 %295, i32 %296)
  br label %298

298:                                              ; preds = %286, %274
  br label %299

299:                                              ; preds = %298, %239
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %9, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %9, align 4
  br label %233

303:                                              ; preds = %233
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

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
