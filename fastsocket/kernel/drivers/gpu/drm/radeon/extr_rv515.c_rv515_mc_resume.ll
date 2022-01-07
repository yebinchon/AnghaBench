; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv515.c_rv515_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rv515_mc_save = type { i32, i32, i64* }

@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R_006110_D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@R_006118_D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@R_000310_VGA_MEMORY_BASE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1MODE_MASTER_UPDATE_MODE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1MODE_MASTER_UPDATE_LOCK = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@R700_MC_CITF_CNTL = common dso_local global i64 0, align 8
@R600_CITF_CNTL = common dso_local global i64 0, align 8
@R600_BLACKOUT_MASK = common dso_local global i32 0, align 4
@R600_BIF_FB_EN = common dso_local global i64 0, align 8
@R600_FB_READ_EN = common dso_local global i32 0, align 4
@R600_FB_WRITE_EN = common dso_local global i32 0, align 4
@AVIVO_D1CRTC_CONTROL = common dso_local global i64 0, align 8
@AVIVO_CRTC_DISP_READ_REQUEST_DISABLE = common dso_local global i32 0, align 4
@R_000328_VGA_HDP_CONTROL = common dso_local global i64 0, align 8
@R_000300_VGA_RENDER_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_mc_resume(%struct.radeon_device* %0, %struct.rv515_mc_save* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv515_mc_save*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.rv515_mc_save* %1, %struct.rv515_mc_save** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %82, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %85

15:                                               ; preds = %9
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_RV770, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i64, i64* @R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @upper_32_bits(i64 %29)
  %31 = call i32 @WREG32(i64 %25, i32 %30)
  %32 = load i64, i64* @R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @upper_32_bits(i64 %36)
  %38 = call i32 @WREG32(i64 %32, i32 %37)
  br label %54

39:                                               ; preds = %21
  %40 = load i64, i64* @R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @upper_32_bits(i64 %44)
  %46 = call i32 @WREG32(i64 %40, i32 %45)
  %47 = load i64, i64* @R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @upper_32_bits(i64 %51)
  %53 = call i32 @WREG32(i64 %47, i32 %52)
  br label %54

54:                                               ; preds = %39, %24
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i64, i64* @R_006110_D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %57 = load i64*, i64** @crtc_offsets, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @WREG32(i64 %62, i32 %67)
  %69 = load i64, i64* @R_006118_D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %70 = load i64*, i64** @crtc_offsets, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %69, %74
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @WREG32(i64 %75, i32 %80)
  br label %82

82:                                               ; preds = %55
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %9

85:                                               ; preds = %9
  %86 = load i64, i64* @R_000310_VGA_MEMORY_BASE_ADDRESS, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @WREG32(i64 %86, i32 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %211, %85
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %214

99:                                               ; preds = %93
  %100 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %101 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %210

108:                                              ; preds = %99
  %109 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_MODE, align 8
  %110 = load i64*, i64** @crtc_offsets, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = call i32 @RREG32(i64 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 3
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, -4
  store i32 %122, i32* %5, align 4
  %123 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_MODE, align 8
  %124 = load i64*, i64** @crtc_offsets, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %123, %128
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @WREG32(i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %120, %108
  %133 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %134 = load i64*, i64** @crtc_offsets, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %133, %138
  %140 = call i32 @RREG32(i64 %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %132
  %146 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %5, align 4
  %150 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %151 = load i64*, i64** @crtc_offsets, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %150, %155
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @WREG32(i64 %156, i32 %157)
  br label %159

159:                                              ; preds = %145, %132
  %160 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_LOCK, align 8
  %161 = load i64*, i64** @crtc_offsets, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %160, %165
  %167 = call i32 @RREG32(i64 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %159
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, -2
  store i32 %173, i32* %5, align 4
  %174 = load i64, i64* @AVIVO_D1MODE_MASTER_UPDATE_LOCK, align 8
  %175 = load i64*, i64** @crtc_offsets, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %174, %179
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @WREG32(i64 %180, i32 %181)
  br label %183

183:                                              ; preds = %171, %159
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %206, %183
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %184
  %191 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %192 = load i64*, i64** @crtc_offsets, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %191, %196
  %198 = call i32 @RREG32(i64 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %190
  br label %209

204:                                              ; preds = %190
  %205 = call i32 @udelay(i32 1)
  br label %206

206:                                              ; preds = %204
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %184

209:                                              ; preds = %203, %184
  br label %210

210:                                              ; preds = %209, %99
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %93

214:                                              ; preds = %93
  %215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @CHIP_R600, align 8
  %219 = icmp sge i64 %217, %218
  br i1 %219, label %220, label %256

220:                                              ; preds = %214
  %221 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %222 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @CHIP_RV770, align 8
  %225 = icmp sge i64 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i64, i64* @R700_MC_CITF_CNTL, align 8
  %228 = call i32 @RREG32(i64 %227)
  store i32 %228, i32* %5, align 4
  br label %232

229:                                              ; preds = %220
  %230 = load i64, i64* @R600_CITF_CNTL, align 8
  %231 = call i32 @RREG32(i64 %230)
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* @R600_BLACKOUT_MASK, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %5, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %5, align 4
  %237 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CHIP_RV770, align 8
  %241 = icmp sge i64 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %232
  %243 = load i64, i64* @R700_MC_CITF_CNTL, align 8
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @WREG32(i64 %243, i32 %244)
  br label %250

246:                                              ; preds = %232
  %247 = load i64, i64* @R600_CITF_CNTL, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @WREG32(i64 %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %242
  %251 = load i64, i64* @R600_BIF_FB_EN, align 8
  %252 = load i32, i32* @R600_FB_READ_EN, align 4
  %253 = load i32, i32* @R600_FB_WRITE_EN, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @WREG32(i64 %251, i32 %254)
  br label %256

256:                                              ; preds = %250, %214
  store i32 0, i32* %7, align 4
  br label %257

257:                                              ; preds = %317, %256
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %320

263:                                              ; preds = %257
  %264 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %265 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %264, i32 0, i32 2
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %316

272:                                              ; preds = %263
  %273 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %274 = load i64*, i64** @crtc_offsets, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %273, %278
  %280 = call i32 @RREG32(i64 %279)
  store i32 %280, i32* %5, align 4
  %281 = load i32, i32* @AVIVO_CRTC_DISP_READ_REQUEST_DISABLE, align 4
  %282 = xor i32 %281, -1
  %283 = load i32, i32* %5, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* %5, align 4
  %285 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %286 = load i64*, i64** @crtc_offsets, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %285, %290
  %292 = load i32, i32* %5, align 4
  %293 = call i32 @WREG32(i64 %291, i32 %292)
  %294 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %295 = load i32, i32* %7, align 4
  %296 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %294, i32 %295)
  store i32 %296, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %297

297:                                              ; preds = %312, %272
  %298 = load i32, i32* %8, align 4
  %299 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %300 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %315

303:                                              ; preds = %297
  %304 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @radeon_get_vblank_counter(%struct.radeon_device* %304, i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  br label %315

310:                                              ; preds = %303
  %311 = call i32 @udelay(i32 1)
  br label %312

312:                                              ; preds = %310
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %8, align 4
  br label %297

315:                                              ; preds = %309, %297
  br label %316

316:                                              ; preds = %315, %263
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %7, align 4
  br label %257

320:                                              ; preds = %257
  %321 = load i64, i64* @R_000328_VGA_HDP_CONTROL, align 8
  %322 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %323 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @WREG32(i64 %321, i32 %324)
  %326 = call i32 @mdelay(i32 1)
  %327 = load i64, i64* @R_000300_VGA_RENDER_CONTROL, align 8
  %328 = load %struct.rv515_mc_save*, %struct.rv515_mc_save** %4, align 8
  %329 = getelementptr inbounds %struct.rv515_mc_save, %struct.rv515_mc_save* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @WREG32(i64 %327, i32 %330)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
