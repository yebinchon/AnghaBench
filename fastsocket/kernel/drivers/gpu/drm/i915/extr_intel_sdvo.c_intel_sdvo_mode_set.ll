; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_sdvo = type { i32, i32, i32, i64, i64, i64, i64, i64, %struct.drm_display_mode*, i32 }
%struct.intel_sdvo_in_out_map = type { i64, i32 }
%struct.intel_sdvo_dtd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SDVO_CMD_SET_IN_OUT_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting output timings on %s failed\0A\00", align 1
@SDVO_ENCODE_HDMI = common dso_local global i32 0, align 4
@SDVO_COLORIMETRY_RGB256 = common dso_local global i32 0, align 4
@SDVO_ENCODE_DVI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Setting input timings on %s failed\0A\00", align 1
@SDVO_CLOCK_RATE_MULT_1X = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_2X = common dso_local global i32 0, align 4
@SDVO_CLOCK_RATE_MULT_4X = common dso_local global i32 0, align 4
@SDVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@SDVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@SDVO_BORDER_ENABLE = common dso_local global i32 0, align 4
@SDVOB_PRESERVE_MASK = common dso_local global i32 0, align 4
@SDVOC_PRESERVE_MASK = common dso_local global i32 0, align 4
@PCH_CPT = common dso_local global i64 0, align 8
@SDVO_AUDIO_ENABLE = common dso_local global i32 0, align 4
@SDVO_PORT_MULTIPLY_SHIFT = common dso_local global i32 0, align 4
@SDVO_NEED_TO_STALL = common dso_local global i32 0, align 4
@SDVO_STALL_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_sdvo_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_sdvo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_sdvo_in_out_map, align 8
  %14 = alloca %struct.intel_sdvo_dtd, align 4
  %15 = alloca %struct.intel_sdvo_dtd, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %7, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %22, align 8
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %8, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %25, align 8
  store %struct.drm_crtc* %26, %struct.drm_crtc** %9, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %28 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %27)
  store %struct.intel_crtc* %28, %struct.intel_crtc** %10, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %30 = call %struct.intel_sdvo* @to_intel_sdvo(%struct.drm_encoder* %29)
  store %struct.intel_sdvo* %30, %struct.intel_sdvo** %11, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = call i32 @intel_mode_get_pixel_multiplier(%struct.drm_display_mode* %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = icmp ne %struct.drm_display_mode* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %281

36:                                               ; preds = %3
  %37 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %38 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.intel_sdvo_in_out_map, %struct.intel_sdvo_in_out_map* %13, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.intel_sdvo_in_out_map, %struct.intel_sdvo_in_out_map* %13, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %43 = load i32, i32* @SDVO_CMD_SET_IN_OUT_MAP, align 4
  %44 = call i32 @intel_sdvo_set_value(%struct.intel_sdvo* %42, i32 %43, %struct.intel_sdvo_in_out_map* %13, i32 16)
  %45 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %46 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %47 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @intel_sdvo_set_target_output(%struct.intel_sdvo* %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %36
  br label %281

52:                                               ; preds = %36
  %53 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %54 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %59 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %58, i32 0, i32 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %59, align 8
  %61 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %15, %struct.drm_display_mode* %60)
  br label %65

62:                                               ; preds = %52
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %64 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %15, %struct.drm_display_mode* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %67 = call i32 @intel_sdvo_set_output_timing(%struct.intel_sdvo* %66, %struct.intel_sdvo_dtd* %15)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %71 = call i32 @SDVO_NAME(%struct.intel_sdvo* %70)
  %72 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %75 = call i32 @intel_sdvo_set_target_input(%struct.intel_sdvo* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %281

78:                                               ; preds = %73
  %79 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %80 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %85 = load i32, i32* @SDVO_ENCODE_HDMI, align 4
  %86 = call i32 @intel_sdvo_set_encode(%struct.intel_sdvo* %84, i32 %85)
  %87 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %88 = load i32, i32* @SDVO_COLORIMETRY_RGB256, align 4
  %89 = call i32 @intel_sdvo_set_colorimetry(%struct.intel_sdvo* %87, i32 %88)
  %90 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %92 = call i32 @intel_sdvo_set_avi_infoframe(%struct.intel_sdvo* %90, %struct.drm_display_mode* %91)
  br label %97

93:                                               ; preds = %78
  %94 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %95 = load i32, i32* @SDVO_ENCODE_DVI, align 4
  %96 = call i32 @intel_sdvo_set_encode(%struct.intel_sdvo* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %83
  %98 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %99 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %104 = call i32 @intel_sdvo_set_tv_format(%struct.intel_sdvo* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %281

107:                                              ; preds = %102, %97
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %109 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %14, %struct.drm_display_mode* %108)
  %110 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %111 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %116 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114, %107
  %120 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %121 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %14, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %127 = call i32 @intel_sdvo_set_input_timing(%struct.intel_sdvo* %126, %struct.intel_sdvo_dtd* %14)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %131 = call i32 @SDVO_NAME(%struct.intel_sdvo* %130)
  %132 = call i32 @DRM_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %16, align 4
  switch i32 %134, label %135 [
    i32 1, label %136
    i32 2, label %138
    i32 4, label %140
  ]

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %133, %135
  %137 = load i32, i32* @SDVO_CLOCK_RATE_MULT_1X, align 4
  store i32 %137, i32* %17, align 4
  br label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @SDVO_CLOCK_RATE_MULT_2X, align 4
  store i32 %139, i32* %17, align 4
  br label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @SDVO_CLOCK_RATE_MULT_4X, align 4
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %140, %138, %136
  %143 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @intel_sdvo_set_clock_rate_mult(%struct.intel_sdvo* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  br label %281

148:                                              ; preds = %142
  %149 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %150 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %149)
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %152, 4
  br i1 %153, label %154, label %183

154:                                              ; preds = %148
  %155 = load i32, i32* @SDVO_VSYNC_ACTIVE_HIGH, align 4
  %156 = load i32, i32* @SDVO_HSYNC_ACTIVE_HIGH, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %12, align 4
  %158 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %159 = call i32 @HAS_PCH_SPLIT(%struct.drm_device* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %154
  %162 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %163 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %168 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %12, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %166, %161, %154
  %173 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %174 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %176, 5
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* @SDVO_BORDER_ENABLE, align 4
  %180 = load i32, i32* %12, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %178, %172
  br label %204

183:                                              ; preds = %148
  %184 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %185 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @I915_READ(i32 %186)
  store i32 %187, i32* %12, align 4
  %188 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %189 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  switch i32 %190, label %199 [
    i32 129, label %191
    i32 128, label %195
  ]

191:                                              ; preds = %183
  %192 = load i32, i32* @SDVOB_PRESERVE_MASK, align 4
  %193 = load i32, i32* %12, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %12, align 4
  br label %199

195:                                              ; preds = %183
  %196 = load i32, i32* @SDVOC_PRESERVE_MASK, align 4
  %197 = load i32, i32* %12, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %183, %195, %191
  %200 = load i32, i32* @SDVO_BORDER_ENABLE, align 4
  %201 = or i32 4718592, %200
  %202 = load i32, i32* %12, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %199, %182
  %205 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %206 = call i64 @INTEL_PCH_TYPE(%struct.drm_device* %205)
  %207 = load i64, i64* @PCH_CPT, align 8
  %208 = icmp sge i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %211 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @TRANSCODER_CPT(i32 %212)
  %214 = load i32, i32* %12, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %12, align 4
  br label %223

216:                                              ; preds = %204
  %217 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %218 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @TRANSCODER(i32 %219)
  %221 = load i32, i32* %12, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %216, %209
  %224 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %225 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i32, i32* @SDVO_AUDIO_ENABLE, align 4
  %230 = load i32, i32* %12, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %12, align 4
  br label %232

232:                                              ; preds = %228, %223
  %233 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %234 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %233)
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp sge i32 %236, 4
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %260

239:                                              ; preds = %232
  %240 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %241 = call i64 @IS_I945G(%struct.drm_device* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %239
  %244 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %245 = call i64 @IS_I945GM(%struct.drm_device* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %249 = call i64 @IS_G33(%struct.drm_device* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %243, %239
  br label %259

252:                                              ; preds = %247
  %253 = load i32, i32* %16, align 4
  %254 = sub nsw i32 %253, 1
  %255 = load i32, i32* @SDVO_PORT_MULTIPLY_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %12, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %252, %251
  br label %260

260:                                              ; preds = %259, %238
  %261 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %14, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @SDVO_NEED_TO_STALL, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %260
  %268 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %269 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %268)
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %271, 5
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load i32, i32* @SDVO_STALL_SELECT, align 4
  %275 = load i32, i32* %12, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %12, align 4
  br label %277

277:                                              ; preds = %273, %267, %260
  %278 = load %struct.intel_sdvo*, %struct.intel_sdvo** %11, align 8
  %279 = load i32, i32* %12, align 4
  %280 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %278, i32 %279)
  br label %281

281:                                              ; preds = %277, %147, %106, %77, %51, %35
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_sdvo* @to_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i32 @intel_mode_get_pixel_multiplier(%struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_set_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_in_out_map*, i32) #1

declare dso_local i32 @intel_sdvo_set_target_output(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_set_output_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_target_input(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_encode(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_set_colorimetry(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_set_avi_infoframe(%struct.intel_sdvo*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_set_tv_format(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_input_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @intel_sdvo_set_clock_rate_mult(%struct.intel_sdvo*, i32) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_device*) #1

declare dso_local i32 @TRANSCODER_CPT(i32) #1

declare dso_local i32 @TRANSCODER(i32) #1

declare dso_local i64 @IS_I945G(%struct.drm_device*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i64 @IS_G33(%struct.drm_device*) #1

declare dso_local i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
