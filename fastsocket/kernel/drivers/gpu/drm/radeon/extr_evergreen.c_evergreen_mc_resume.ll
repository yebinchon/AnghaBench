; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.evergreen_mc_save = type { i32, i32, i64* }

@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_VGA_MEMORY_BASE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_VGA_MEMORY_BASE_ADDRESS = common dso_local global i64 0, align 8
@EVERGREEN_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@EVERGREEN_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@MC_SHARED_BLACKOUT_CNTL = common dso_local global i64 0, align 8
@BLACKOUT_MODE_MASK = common dso_local global i32 0, align 4
@BIF_FB_EN = common dso_local global i64 0, align 8
@FB_READ_EN = common dso_local global i32 0, align 4
@FB_WRITE_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_BLANK_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_BLANK_DATA_EN = common dso_local global i32 0, align 4
@EVERGREEN_CRTC_UPDATE_LOCK = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@VGA_RENDER_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_mc_resume(%struct.radeon_device* %0, %struct.evergreen_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.evergreen_mc_save* %1, %struct.evergreen_mc_save** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %9
  %16 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %17 = load i64*, i64** @crtc_offsets, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @upper_32_bits(i64 %26)
  %28 = call i32 @WREG32(i64 %22, i32 %27)
  %29 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %30 = load i64*, i64** @crtc_offsets, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @upper_32_bits(i64 %39)
  %41 = call i32 @WREG32(i64 %35, i32 %40)
  %42 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %43 = load i64*, i64** @crtc_offsets, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @WREG32(i64 %48, i32 %53)
  %55 = load i64, i64* @EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %56 = load i64*, i64** @crtc_offsets, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @WREG32(i64 %61, i32 %66)
  br label %68

68:                                               ; preds = %15
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %9

71:                                               ; preds = %9
  %72 = load i64, i64* @EVERGREEN_VGA_MEMORY_BASE_ADDRESS_HIGH, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @upper_32_bits(i64 %76)
  %78 = call i32 @WREG32(i64 %72, i32 %77)
  %79 = load i64, i64* @EVERGREEN_VGA_MEMORY_BASE_ADDRESS, align 8
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @WREG32(i64 %79, i32 %84)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %204, %71
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %207

92:                                               ; preds = %86
  %93 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %94 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %203

101:                                              ; preds = %92
  %102 = load i64, i64* @EVERGREEN_MASTER_UPDATE_MODE, align 8
  %103 = load i64*, i64** @crtc_offsets, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %102, %107
  %109 = call i32 @RREG32(i64 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, 3
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %101
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, -4
  store i32 %115, i32* %5, align 4
  %116 = load i64, i64* @EVERGREEN_MASTER_UPDATE_MODE, align 8
  %117 = load i64*, i64** @crtc_offsets, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @WREG32(i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %113, %101
  %126 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %127 = load i64*, i64** @crtc_offsets, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %126, %131
  %133 = call i32 @RREG32(i64 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %125
  %139 = load i32, i32* @EVERGREEN_GRPH_UPDATE_LOCK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %5, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %144 = load i64*, i64** @crtc_offsets, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %143, %148
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @WREG32(i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %138, %125
  %153 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %154 = load i64*, i64** @crtc_offsets, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %153, %158
  %160 = call i32 @RREG32(i64 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %152
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, -2
  store i32 %166, i32* %5, align 4
  %167 = load i64, i64* @EVERGREEN_MASTER_UPDATE_LOCK, align 8
  %168 = load i64*, i64** @crtc_offsets, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %167, %172
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @WREG32(i64 %173, i32 %174)
  br label %176

176:                                              ; preds = %164, %152
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %177
  %184 = load i64, i64* @EVERGREEN_GRPH_UPDATE, align 8
  %185 = load i64*, i64** @crtc_offsets, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %184, %189
  %191 = call i32 @RREG32(i64 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @EVERGREEN_GRPH_SURFACE_UPDATE_PENDING, align 4
  %194 = and i32 %192, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  br label %202

197:                                              ; preds = %183
  %198 = call i32 @udelay(i32 1)
  br label %199

199:                                              ; preds = %197
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %177

202:                                              ; preds = %196, %177
  br label %203

203:                                              ; preds = %202, %92
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %86

207:                                              ; preds = %86
  %208 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %209 = call i32 @RREG32(i64 %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* @BLACKOUT_MODE_MASK, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %5, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %5, align 4
  %214 = load i64, i64* @MC_SHARED_BLACKOUT_CNTL, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @WREG32(i64 %214, i32 %215)
  %217 = load i64, i64* @BIF_FB_EN, align 8
  %218 = load i32, i32* @FB_READ_EN, align 4
  %219 = load i32, i32* @FB_WRITE_EN, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @WREG32(i64 %217, i32 %220)
  store i32 0, i32* %7, align 4
  br label %222

222:                                              ; preds = %340, %207
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %343

228:                                              ; preds = %222
  %229 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %230 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %339

237:                                              ; preds = %228
  %238 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %239 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %278

241:                                              ; preds = %237
  %242 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %243 = load i64*, i64** @crtc_offsets, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %242, %247
  %249 = call i32 @RREG32(i64 %248)
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* @EVERGREEN_CRTC_BLANK_DATA_EN, align 4
  %251 = load i32, i32* %5, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %5, align 4
  %253 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %254 = load i64*, i64** @crtc_offsets, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %253, %258
  %260 = call i32 @WREG32(i64 %259, i32 1)
  %261 = load i64, i64* @EVERGREEN_CRTC_BLANK_CONTROL, align 8
  %262 = load i64*, i64** @crtc_offsets, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %261, %266
  %268 = load i32, i32* %5, align 4
  %269 = call i32 @WREG32(i64 %267, i32 %268)
  %270 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %271 = load i64*, i64** @crtc_offsets, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %270, %275
  %277 = call i32 @WREG32(i64 %276, i32 0)
  br label %316

278:                                              ; preds = %237
  %279 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %280 = load i64*, i64** @crtc_offsets, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %280, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %279, %284
  %286 = call i32 @RREG32(i64 %285)
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* @EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %5, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %5, align 4
  %291 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %292 = load i64*, i64** @crtc_offsets, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %292, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %291, %296
  %298 = call i32 @WREG32(i64 %297, i32 1)
  %299 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %300 = load i64*, i64** @crtc_offsets, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %299, %304
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @WREG32(i64 %305, i32 %306)
  %308 = load i64, i64* @EVERGREEN_CRTC_UPDATE_LOCK, align 8
  %309 = load i64*, i64** @crtc_offsets, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %308, %313
  %315 = call i32 @WREG32(i64 %314, i32 0)
  br label %316

316:                                              ; preds = %278, %241
  %317 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %317, i32 %318)
  store i32 %319, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %320

320:                                              ; preds = %335, %316
  %321 = load i32, i32* %8, align 4
  %322 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %323 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %338

326:                                              ; preds = %320
  %327 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %328 = load i32, i32* %7, align 4
  %329 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %327, i32 %328)
  %330 = load i32, i32* %6, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  br label %338

333:                                              ; preds = %326
  %334 = call i32 @udelay(i32 1)
  br label %335

335:                                              ; preds = %333
  %336 = load i32, i32* %8, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %8, align 4
  br label %320

338:                                              ; preds = %332, %320
  br label %339

339:                                              ; preds = %338, %228
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %7, align 4
  br label %222

343:                                              ; preds = %222
  %344 = load i64, i64* @VGA_HDP_CONTROL, align 8
  %345 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %346 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @WREG32(i64 %344, i32 %347)
  %349 = call i32 @mdelay(i32 1)
  %350 = load i64, i64* @VGA_RENDER_CONTROL, align 8
  %351 = load %struct.evergreen_mc_save*, %struct.evergreen_mc_save** %4, align 8
  %352 = getelementptr inbounds %struct.evergreen_mc_save, %struct.evergreen_mc_save* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @WREG32(i64 %350, i32 %353)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
