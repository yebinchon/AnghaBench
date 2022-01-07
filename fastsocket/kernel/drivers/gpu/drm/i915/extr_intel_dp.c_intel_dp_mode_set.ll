; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.intel_dp = type { i32, i32, i32*, i32, i64, i32 }
%struct.intel_crtc = type { i32 }

@DP_DETECTED = common dso_local global i32 0, align 4
@DP_VOLTAGE_0_4 = common dso_local global i32 0, align 4
@DP_PRE_EMPHASIS_0 = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_1 = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_2 = common dso_local global i32 0, align 4
@DP_PORT_WIDTH_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Enabling DP audio on pipe %c\0A\00", align 1
@DP_AUDIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DP_SYNC_HS_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DP_SYNC_VS_HIGH = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF_CPT = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@DP_PLL_FREQ_160MHZ = common dso_local global i32 0, align 4
@DP_PLL_FREQ_270MHZ = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF = common dso_local global i32 0, align 4
@DP_PIPEB_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_dp_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %18)
  store %struct.intel_dp* %19, %struct.intel_dp** %9, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %21, align 8
  store %struct.drm_crtc* %22, %struct.drm_crtc** %10, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %24 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %11, align 8
  %25 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @I915_READ(i32 %27)
  %29 = load i32, i32* @DP_DETECTED, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @DP_VOLTAGE_0_4, align 4
  %34 = load i32, i32* @DP_PRE_EMPHASIS_0, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %37 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %41 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %61 [
    i32 1, label %43
    i32 2, label %49
    i32 4, label %55
  ]

43:                                               ; preds = %3
  %44 = load i32, i32* @DP_PORT_WIDTH_1, align 4
  %45 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %61

49:                                               ; preds = %3
  %50 = load i32, i32* @DP_PORT_WIDTH_2, align 4
  %51 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %52 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %61

55:                                               ; preds = %3
  %56 = load i32, i32* @DP_PORT_WIDTH_4, align 4
  %57 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %3, %55, %49, %43
  %62 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %63 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %68 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pipe_name(i32 %69)
  %71 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @DP_AUDIO_OUTPUT_ENABLE, align 4
  %73 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %74 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %79 = call i32 @intel_write_eld(%struct.drm_encoder* %77, %struct.drm_display_mode* %78)
  br label %80

80:                                               ; preds = %66, %61
  %81 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %82 = call i32 @intel_dp_init_link_config(%struct.intel_dp* %81)
  %83 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %84 = call i64 @is_cpu_edp(%struct.intel_dp* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %166

86:                                               ; preds = %80
  %87 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %88 = call i64 @IS_GEN7(%struct.drm_device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %166

90:                                               ; preds = %86
  %91 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %92 = call i32 @IS_VALLEYVIEW(%struct.drm_device* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %166, label %94

94:                                               ; preds = %90
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i32, i32* @DP_SYNC_HS_HIGH, align 4
  %103 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %104 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* @DP_SYNC_VS_HIGH, align 4
  %116 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %117 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %107
  %121 = load i32, i32* @DP_LINK_TRAIN_OFF_CPT, align 4
  %122 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %123 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %127 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %120
  %135 = load i32, i32* @DP_ENHANCED_FRAMING, align 4
  %136 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %137 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %120
  %141 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %142 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 29
  %145 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %146 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 200000
  br i1 %152, label %153, label %159

153:                                              ; preds = %140
  %154 = load i32, i32* @DP_PLL_FREQ_160MHZ, align 4
  %155 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %156 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %165

159:                                              ; preds = %140
  %160 = load i32, i32* @DP_PLL_FREQ_270MHZ, align 4
  %161 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %162 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %153
  br label %273

166:                                              ; preds = %90, %86, %80
  %167 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %168 = call i32 @HAS_PCH_CPT(%struct.drm_device* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %172 = call i64 @is_cpu_edp(%struct.intel_dp* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %266

174:                                              ; preds = %170, %166
  %175 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %176 = call i32 @HAS_PCH_SPLIT(%struct.drm_device* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %180 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %183 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %178, %174
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @DP_SYNC_HS_HIGH, align 4
  %195 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %196 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %186
  %200 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %201 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load i32, i32* @DP_SYNC_VS_HIGH, align 4
  %208 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %209 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %199
  %213 = load i32, i32* @DP_LINK_TRAIN_OFF, align 4
  %214 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %215 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %219 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %212
  %227 = load i32, i32* @DP_ENHANCED_FRAMING, align 4
  %228 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %229 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %212
  %233 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %234 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load i32, i32* @DP_PIPEB_SELECT, align 4
  %239 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %240 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %237, %232
  %244 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %245 = call i64 @is_cpu_edp(%struct.intel_dp* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %243
  %248 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %249 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %250, 200000
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load i32, i32* @DP_PLL_FREQ_160MHZ, align 4
  %254 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %255 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  br label %264

258:                                              ; preds = %247
  %259 = load i32, i32* @DP_PLL_FREQ_270MHZ, align 4
  %260 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %261 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %252
  br label %265

265:                                              ; preds = %264, %243
  br label %272

266:                                              ; preds = %170
  %267 = load i32, i32* @DP_LINK_TRAIN_OFF_CPT, align 4
  %268 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %269 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %266, %265
  br label %273

273:                                              ; preds = %272, %165
  %274 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %275 = call i64 @is_cpu_edp(%struct.intel_dp* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %273
  %278 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %279 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %280 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @ironlake_set_pll_edp(%struct.drm_crtc* %278, i32 %281)
  br label %283

283:                                              ; preds = %277, %273
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @intel_write_eld(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_dp_init_link_config(%struct.intel_dp*) #1

declare dso_local i64 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @ironlake_set_pll_edp(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
