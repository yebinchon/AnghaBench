; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_do_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_do_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_framebuffer = type { i32, i32* }
%struct.radeon_crtc = type { i32, i32, i32 }
%struct.radeon_framebuffer = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"trying to scanout microtiled buffer\0A\00", align 1
@RADEON_CRTC_GUI_TRIG_OFFSET_LEFT_EN = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@R300_CRTC_X_Y_MODE_EN = common dso_local global i32 0, align 4
@R300_CRTC_MICRO_TILE_BUFFER_DIS = common dso_local global i32 0, align 4
@R300_CRTC_MACRO_TILE_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_TILE_EN = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_VSTAT_MODE_MASK = common dso_local global i32 0, align 4
@RADEON_DISPLAY_BASE_ADDR = common dso_local global i32 0, align 4
@R300_CRTC2_TILE_X0_Y0 = common dso_local global i32 0, align 4
@R300_CRTC_TILE_X0_Y0 = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET = common dso_local global i32 0, align 4
@RADEON_CRTC_PITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_crtc_do_set_base(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.radeon_device*, align 8
  %14 = alloca %struct.radeon_crtc*, align 8
  %15 = alloca %struct.radeon_framebuffer*, align 8
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca %struct.radeon_bo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 1
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  store %struct.drm_device* %35, %struct.drm_device** %12, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.radeon_device*, %struct.radeon_device** %37, align 8
  store %struct.radeon_device* %38, %struct.radeon_device** %13, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %40 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %39)
  store %struct.radeon_crtc* %40, %struct.radeon_crtc** %14, align 8
  store i32 0, i32* %22, align 4
  %41 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %5
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 0
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %46, align 8
  %48 = icmp ne %struct.drm_framebuffer* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %386

51:                                               ; preds = %44, %5
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %56 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %55)
  store %struct.radeon_framebuffer* %56, %struct.radeon_framebuffer** %15, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_framebuffer* %57, %struct.drm_framebuffer** %16, align 8
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %60 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %59, i32 0, i32 0
  %61 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %60, align 8
  %62 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %61)
  store %struct.radeon_framebuffer* %62, %struct.radeon_framebuffer** %15, align 8
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %64, align 8
  store %struct.drm_framebuffer* %65, %struct.drm_framebuffer** %16, align 8
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %68 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %75 [
    i32 8, label %70
    i32 15, label %71
    i32 16, label %72
    i32 24, label %73
    i32 32, label %74
  ]

70:                                               ; preds = %66
  store i32 2, i32* %26, align 4
  br label %76

71:                                               ; preds = %66
  store i32 3, i32* %26, align 4
  br label %76

72:                                               ; preds = %66
  store i32 4, i32* %26, align 4
  br label %76

73:                                               ; preds = %66
  store i32 5, i32* %26, align 4
  br label %76

74:                                               ; preds = %66
  store i32 6, i32* %26, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %386

76:                                               ; preds = %74, %73, %72, %71, %70
  %77 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %15, align 8
  %78 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %77, i32 0, i32 0
  %79 = load %struct.drm_gem_object*, %struct.drm_gem_object** %78, align 8
  store %struct.drm_gem_object* %79, %struct.drm_gem_object** %17, align 8
  %80 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %81 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %80)
  store %struct.radeon_bo* %81, %struct.radeon_bo** %18, align 8
  %82 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %83 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %82, i32 0)
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %29, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* %29, align 4
  store i32 %90, i32* %6, align 4
  br label %386

91:                                               ; preds = %76
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %93 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %94 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %92, i32 %93, i32 134217728, i32* %19)
  store i32 %94, i32* %29, align 4
  %95 = load i32, i32* %29, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %102 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %386

105:                                              ; preds = %91
  %106 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %107 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %106, i32* %25, i32* null)
  %108 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %109 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %108)
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %105
  %117 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %122 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %124 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %128 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %129 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %134 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 8
  %137 = sdiv i32 %132, %136
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %24, align 4
  %139 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %140 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %138, %141
  %143 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %144 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 8
  %147 = sub nsw i32 %146, 1
  %148 = add nsw i32 %142, %147
  %149 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %150 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %151, 8
  %153 = sdiv i32 %148, %152
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %23, align 4
  %155 = shl i32 %154, 16
  %156 = load i32, i32* %23, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* @RADEON_CRTC_GUI_TRIG_OFFSET_LEFT_EN, align 4
  %159 = load i32, i32* %21, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %21, align 4
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %116
  %166 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %167 = call i64 @ASIC_IS_R300(%struct.radeon_device* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load i32, i32* @R300_CRTC_X_Y_MODE_EN, align 4
  %171 = load i32, i32* @R300_CRTC_MICRO_TILE_BUFFER_DIS, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @R300_CRTC_MACRO_TILE_EN, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %21, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %21, align 4
  br label %181

177:                                              ; preds = %165
  %178 = load i32, i32* @RADEON_CRTC_TILE_EN, align 4
  %179 = load i32, i32* %21, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %21, align 4
  br label %181

181:                                              ; preds = %177, %169
  br label %201

182:                                              ; preds = %116
  %183 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %184 = call i64 @ASIC_IS_R300(%struct.radeon_device* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load i32, i32* @R300_CRTC_X_Y_MODE_EN, align 4
  %188 = load i32, i32* @R300_CRTC_MICRO_TILE_BUFFER_DIS, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @R300_CRTC_MACRO_TILE_EN, align 4
  %191 = or i32 %189, %190
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %21, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %21, align 4
  br label %200

195:                                              ; preds = %182
  %196 = load i32, i32* @RADEON_CRTC_TILE_EN, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %21, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %21, align 4
  br label %200

200:                                              ; preds = %195, %186
  br label %201

201:                                              ; preds = %200, %181
  %202 = load i32, i32* %25, align 4
  %203 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %249

206:                                              ; preds = %201
  %207 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %208 = call i64 @ASIC_IS_R300(%struct.radeon_device* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = shl i32 %212, 16
  %214 = or i32 %211, %213
  store i32 %214, i32* %22, align 4
  %215 = load i32, i32* %19, align 4
  %216 = and i32 %215, -2048
  store i32 %216, i32* %19, align 4
  br label %248

217:                                              ; preds = %206
  %218 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %219 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = ashr i32 %220, 4
  store i32 %221, i32* %30, align 4
  %222 = load i32, i32* %10, align 4
  %223 = ashr i32 %222, 3
  %224 = load i32, i32* %24, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %30, align 4
  %229 = sub nsw i32 8, %228
  %230 = ashr i32 %227, %229
  %231 = shl i32 %230, 11
  store i32 %231, i32* %31, align 4
  %232 = load i32, i32* %31, align 4
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %30, align 4
  %235 = shl i32 %233, %234
  %236 = srem i32 %235, 256
  %237 = add nsw i32 %232, %236
  %238 = load i32, i32* %10, align 4
  %239 = srem i32 %238, 8
  %240 = shl i32 %239, 8
  %241 = add nsw i32 %237, %240
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %19, align 4
  %244 = load i32, i32* %10, align 4
  %245 = srem i32 %244, 16
  %246 = load i32, i32* %21, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %21, align 4
  br label %248

248:                                              ; preds = %217, %210
  br label %275

249:                                              ; preds = %201
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %24, align 4
  %252 = mul nsw i32 %250, %251
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %252, %253
  store i32 %254, i32* %32, align 4
  %255 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %256 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  switch i32 %257, label %270 [
    i32 8, label %258
    i32 15, label %261
    i32 16, label %261
    i32 24, label %264
    i32 32, label %267
  ]

258:                                              ; preds = %249
  %259 = load i32, i32* %32, align 4
  %260 = mul nsw i32 %259, 1
  store i32 %260, i32* %32, align 4
  br label %271

261:                                              ; preds = %249, %249
  %262 = load i32, i32* %32, align 4
  %263 = mul nsw i32 %262, 2
  store i32 %263, i32* %32, align 4
  br label %271

264:                                              ; preds = %249
  %265 = load i32, i32* %32, align 4
  %266 = mul nsw i32 %265, 3
  store i32 %266, i32* %32, align 4
  br label %271

267:                                              ; preds = %249
  %268 = load i32, i32* %32, align 4
  %269 = mul nsw i32 %268, 4
  store i32 %269, i32* %32, align 4
  br label %271

270:                                              ; preds = %249
  store i32 0, i32* %6, align 4
  br label %386

271:                                              ; preds = %267, %264, %261, %258
  %272 = load i32, i32* %32, align 4
  %273 = load i32, i32* %19, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %19, align 4
  br label %275

275:                                              ; preds = %271, %248
  %276 = load i32, i32* %19, align 4
  %277 = and i32 %276, -8
  store i32 %277, i32* %19, align 4
  %278 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %279 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  store i32 %283, i32* %27, align 4
  br label %286

284:                                              ; preds = %275
  %285 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  store i32 %285, i32* %27, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = load i32, i32* %27, align 4
  %288 = call i32 @RREG32(i32 %287)
  store i32 %288, i32* %28, align 4
  %289 = load i32, i32* %28, align 4
  %290 = and i32 %289, -3841
  store i32 %290, i32* %28, align 4
  %291 = load i32, i32* %26, align 4
  %292 = shl i32 %291, 8
  %293 = load i32, i32* %28, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %28, align 4
  %295 = load i32, i32* @RADEON_CRTC_VSTAT_MODE_MASK, align 4
  %296 = xor i32 %295, -1
  %297 = load i32, i32* %28, align 4
  %298 = and i32 %297, %296
  store i32 %298, i32* %28, align 4
  %299 = load i32, i32* %27, align 4
  %300 = load i32, i32* %28, align 4
  %301 = call i32 @WREG32(i32 %299, i32 %300)
  %302 = load i32, i32* %19, align 4
  store i32 %302, i32* %20, align 4
  %303 = load i32, i32* @RADEON_DISPLAY_BASE_ADDR, align 4
  %304 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %305 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %303, %306
  %308 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %309 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @WREG32(i32 %307, i32 %310)
  %312 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %313 = call i64 @ASIC_IS_R300(%struct.radeon_device* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %286
  %316 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %317 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %315
  %321 = load i32, i32* @R300_CRTC2_TILE_X0_Y0, align 4
  %322 = load i32, i32* %22, align 4
  %323 = call i32 @WREG32(i32 %321, i32 %322)
  br label %328

324:                                              ; preds = %315
  %325 = load i32, i32* @R300_CRTC_TILE_X0_Y0, align 4
  %326 = load i32, i32* %22, align 4
  %327 = call i32 @WREG32(i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %324, %320
  br label %329

329:                                              ; preds = %328, %286
  %330 = load i32, i32* @RADEON_CRTC_OFFSET_CNTL, align 4
  %331 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %332 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %330, %333
  %335 = load i32, i32* %21, align 4
  %336 = call i32 @WREG32(i32 %334, i32 %335)
  %337 = load i32, i32* @RADEON_CRTC_OFFSET, align 4
  %338 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %339 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %337, %340
  %342 = load i32, i32* %20, align 4
  %343 = call i32 @WREG32(i32 %341, i32 %342)
  %344 = load i32, i32* @RADEON_CRTC_PITCH, align 4
  %345 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  %346 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %344, %347
  %349 = load i32, i32* %23, align 4
  %350 = call i32 @WREG32(i32 %348, i32 %349)
  %351 = load i32, i32* %11, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %383, label %353

353:                                              ; preds = %329
  %354 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %355 = icmp ne %struct.drm_framebuffer* %354, null
  br i1 %355, label %356, label %383

356:                                              ; preds = %353
  %357 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %358 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %359 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %358, i32 0, i32 0
  %360 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %359, align 8
  %361 = icmp ne %struct.drm_framebuffer* %357, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %356
  %363 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %364 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %363)
  store %struct.radeon_framebuffer* %364, %struct.radeon_framebuffer** %15, align 8
  %365 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %15, align 8
  %366 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %365, i32 0, i32 0
  %367 = load %struct.drm_gem_object*, %struct.drm_gem_object** %366, align 8
  %368 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %367)
  store %struct.radeon_bo* %368, %struct.radeon_bo** %18, align 8
  %369 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %370 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %369, i32 0)
  store i32 %370, i32* %29, align 4
  %371 = load i32, i32* %29, align 4
  %372 = icmp ne i32 %371, 0
  %373 = zext i1 %372 to i32
  %374 = call i64 @unlikely(i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %362
  %377 = load i32, i32* %29, align 4
  store i32 %377, i32* %6, align 4
  br label %386

378:                                              ; preds = %362
  %379 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %380 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %379)
  %381 = load %struct.radeon_bo*, %struct.radeon_bo** %18, align 8
  %382 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %381)
  br label %383

383:                                              ; preds = %378, %356, %353, %329
  %384 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  %385 = call i32 @radeon_bandwidth_update(%struct.radeon_device* %384)
  store i32 0, i32* %6, align 4
  br label %386

386:                                              ; preds = %383, %376, %270, %100, %89, %75, %49
  %387 = load i32, i32* %6, align 4
  ret i32 %387
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bandwidth_update(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
