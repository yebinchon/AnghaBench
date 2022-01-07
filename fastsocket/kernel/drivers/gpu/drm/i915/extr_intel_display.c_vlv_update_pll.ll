; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_vlv_update_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_vlv_update_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { i32 }

@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@DPLL_EXT_BUFFER_ENABLE_VLV = common dso_local global i32 0, align 4
@DPLL_REFA_CLK_ENABLE_VLV = common dso_local global i32 0, align 4
@DPLL_INTEGRATED_CLOCK_VLV = common dso_local global i32 0, align 4
@DPIO_M1DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_M2DIV_MASK = common dso_local global i32 0, align 4
@DPIO_P1_SHIFT = common dso_local global i32 0, align 4
@DPIO_P2_SHIFT = common dso_local global i32 0, align 4
@DPIO_N_SHIFT = common dso_local global i32 0, align 4
@DPIO_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_K_SHIFT = common dso_local global i32 0, align 4
@DPIO_ENABLE_CALIBRATION = common dso_local global i32 0, align 4
@DPIO_REFSEL_OVERRIDE = common dso_local global i32 0, align 4
@DPIO_PLL_MODESEL_SHIFT = common dso_local global i32 0, align 4
@DPIO_BIAS_CURRENT_CTL_SHIFT = common dso_local global i32 0, align 4
@DPIO_PLL_REFCLK_SEL_SHIFT = common dso_local global i32 0, align 4
@DPIO_DRIVER_CTL_SHIFT = common dso_local global i32 0, align 4
@DPIO_CLK_BIAS_CTL_SHIFT = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPLL_LOCK_VLV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DPLL %d failed to lock\0A\00", align 1
@DPIO_FASTCLK_DISABLE = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@DPLL_MD_UDI_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@DPIO_DATA_CHANNEL1 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@DPIO_DATA_CHANNEL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @vlv_update_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_update_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4, i32 %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.drm_i915_private*, align 8
  %15 = alloca %struct.intel_crtc*, align 8
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
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 0
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %13, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %31, align 8
  store %struct.drm_i915_private* %32, %struct.drm_i915_private** %14, align 8
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %34 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %33)
  store %struct.intel_crtc* %34, %struct.intel_crtc** %15, align 8
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %15, align 8
  %36 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %42 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %43 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %6
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %47 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %48 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %6
  %51 = phi i1 [ true, %6 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @DPLL_EXT_BUFFER_ENABLE_VLV, align 4
  %55 = load i32, i32* %17, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* @DPLL_REFA_CLK_ENABLE_VLV, align 4
  %58 = load i32, i32* %17, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* @DPLL_INTEGRATED_CLOCK_VLV, align 4
  %61 = load i32, i32* %17, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @DPLL(i32 %63)
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @I915_WRITE(i32 %64, i32 %65)
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @DPLL(i32 %67)
  %69 = call i32 @POSTING_READ(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %20, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %21, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %22, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %23, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* @DPIO_M1DIV_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* @DPIO_M2DIV_MASK, align 4
  %90 = and i32 %88, %89
  %91 = or i32 %87, %90
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* @DPIO_P1_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* @DPIO_P2_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  %99 = load i32, i32* %18, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @DPIO_N_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %18, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* @DPIO_POST_DIV_SHIFT, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %18, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* @DPIO_K_SHIFT, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %18, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* @DPIO_ENABLE_CALIBRATION, align 4
  %115 = load i32, i32* %18, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %18, align 4
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @DPIO_DIV(i32 %118)
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @intel_dpio_write(%struct.drm_i915_private* %117, i32 %119, i32 %120)
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @DPIO_CORE_CLK(i32 %123)
  %125 = call i32 @intel_dpio_write(%struct.drm_i915_private* %122, i32 %124, i32 16777216)
  %126 = load i32, i32* @DPIO_REFSEL_OVERRIDE, align 4
  %127 = shl i32 1, %126
  %128 = load i32, i32* @DPIO_PLL_MODESEL_SHIFT, align 4
  %129 = shl i32 5, %128
  %130 = or i32 %127, %129
  %131 = load i32, i32* @DPIO_BIAS_CURRENT_CTL_SHIFT, align 4
  %132 = shl i32 3, %131
  %133 = or i32 %130, %132
  %134 = or i32 %133, 1048576
  %135 = load i32, i32* @DPIO_PLL_REFCLK_SEL_SHIFT, align 4
  %136 = shl i32 7, %135
  %137 = or i32 %134, %136
  %138 = load i32, i32* @DPIO_DRIVER_CTL_SHIFT, align 4
  %139 = shl i32 8, %138
  %140 = or i32 %137, %139
  %141 = load i32, i32* @DPIO_CLK_BIAS_CTL_SHIFT, align 4
  %142 = shl i32 5, %141
  %143 = or i32 %140, %142
  store i32 %143, i32* %19, align 4
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @DPIO_REFSFR(i32 %145)
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @intel_dpio_write(%struct.drm_i915_private* %144, i32 %146, i32 %147)
  %149 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @DPIO_LFP_COEFF(i32 %150)
  %152 = call i32 @intel_dpio_write(%struct.drm_i915_private* %149, i32 %151, i32 6225979)
  %153 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %154 = load i32, i32* %17, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @DPLL(i32 %156)
  %158 = load i32, i32* %17, align 4
  %159 = call i32 @I915_WRITE(i32 %157, i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @DPLL(i32 %160)
  %162 = call i32 @POSTING_READ(i32 %161)
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @DPLL(i32 %163)
  %165 = call i32 @I915_READ(i32 %164)
  %166 = load i32, i32* @DPLL_LOCK_VLV, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @DPLL_LOCK_VLV, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i64 @wait_for(i32 %170, i32 1)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %50
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %50
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %178 = load i32, i32* @DPIO_FASTCLK_DISABLE, align 4
  %179 = call i32 @intel_dpio_write(%struct.drm_i915_private* %177, i32 %178, i32 1568)
  %180 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %181 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %182 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %188 = call i32 @intel_dp_set_m_n(%struct.drm_crtc* %185, %struct.drm_display_mode* %186, %struct.drm_display_mode* %187)
  br label %189

189:                                              ; preds = %184, %176
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @DPLL(i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @I915_WRITE(i32 %191, i32 %192)
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @DPLL(i32 %194)
  %196 = call i32 @POSTING_READ(i32 %195)
  %197 = call i32 @udelay(i32 150)
  store i32 0, i32* %26, align 4
  %198 = load i32, i32* %25, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %189
  %201 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %202 = call i32 @intel_mode_get_pixel_multiplier(%struct.drm_display_mode* %201)
  store i32 %202, i32* %26, align 4
  %203 = load i32, i32* %26, align 4
  %204 = icmp sgt i32 %203, 1
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load i32, i32* %26, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* @DPLL_MD_UDI_MULTIPLIER_SHIFT, align 4
  %209 = shl i32 %207, %208
  store i32 %209, i32* %26, align 4
  br label %211

210:                                              ; preds = %200
  store i32 0, i32* %26, align 4
  br label %211

211:                                              ; preds = %210, %205
  br label %212

212:                                              ; preds = %211, %189
  %213 = load i32, i32* %16, align 4
  %214 = call i32 @DPLL_MD(i32 %213)
  %215 = load i32, i32* %26, align 4
  %216 = call i32 @I915_WRITE(i32 %214, i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @DPLL_MD(i32 %217)
  %219 = call i32 @POSTING_READ(i32 %218)
  %220 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %221 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %222 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %212
  %225 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %226 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %227 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224, %212
  store i32 1048772, i32* %26, align 4
  %230 = load i32, i32* %16, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %26, align 4
  %234 = or i32 %233, 2097152
  store i32 %234, i32* %26, align 4
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %237 = load i32, i32* @DPIO_DATA_CHANNEL1, align 4
  %238 = load i32, i32* %26, align 4
  %239 = call i32 @intel_dpio_write(%struct.drm_i915_private* %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %224
  %241 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %242 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %243 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %240
  store i32 1048772, i32* %26, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* %26, align 4
  %250 = or i32 %249, 2097152
  store i32 %250, i32* %26, align 4
  br label %251

251:                                              ; preds = %248, %245
  %252 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %253 = load i32, i32* @DPIO_DATA_CHANNEL2, align 4
  %254 = load i32, i32* %26, align 4
  %255 = call i32 @intel_dpio_write(%struct.drm_i915_private* %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %251, %240
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 0
  %259 = call i32 @mutex_unlock(i32* %258)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_dpio_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DPIO_DIV(i32) #1

declare dso_local i32 @DPIO_CORE_CLK(i32) #1

declare dso_local i32 @DPIO_REFSFR(i32) #1

declare dso_local i32 @DPIO_LFP_COEFF(i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_dp_set_m_n(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @intel_mode_get_pixel_multiplier(%struct.drm_display_mode*) #1

declare dso_local i32 @DPLL_MD(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
