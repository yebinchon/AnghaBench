; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_pch_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_pch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__, %struct.drm_device* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.drm_crtc.0*)* }
%struct.drm_crtc.0 = type opaque
%struct.intel_crtc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@TU_SIZE_MASK = common dso_local global i32 0, align 4
@PCH_DPLL_SEL = common dso_local global i32 0, align 4
@TRANSA_DPLL_ENABLE = common dso_local global i32 0, align 4
@TRANSA_DPLLB_SEL = common dso_local global i32 0, align 4
@TRANSB_DPLL_ENABLE = common dso_local global i32 0, align 4
@TRANSB_DPLLB_SEL = common dso_local global i32 0, align 4
@TRANSC_DPLL_ENABLE = common dso_local global i32 0, align 4
@TRANSC_DPLLB_SEL = common dso_local global i32 0, align 4
@_PCH_DPLL_B = common dso_local global i64 0, align 8
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_MASK = common dso_local global i32 0, align 4
@TRANS_DP_SYNC_MASK = common dso_local global i32 0, align 4
@TRANS_DP_BPC_MASK = common dso_local global i32 0, align 4
@TRANS_DP_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@TRANS_DP_ENH_FRAMING = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@TRANS_DP_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@TRANS_DP_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_B = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_C = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ironlake_pch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_pch_enable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @assert_transcoder_disabled(%struct.drm_i915_private* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @FDI_RX_TUSIZE1(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @PIPE_DATA_M1(i32 %27)
  %29 = call i32 @I915_READ(i32 %28)
  %30 = load i32, i32* @TU_SIZE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @I915_WRITE(i32 %26, i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.drm_crtc.0*)*, i32 (%struct.drm_crtc.0*)** %35, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %38 = bitcast %struct.drm_crtc* %37 to %struct.drm_crtc.0*
  %39 = call i32 %36(%struct.drm_crtc.0* %38)
  %40 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %41 = call i32 @ironlake_enable_pch_pll(%struct.intel_crtc* %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = call i64 @HAS_PCH_CPT(%struct.drm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %1
  %46 = load i32, i32* @PCH_DPLL_SEL, align 4
  %47 = call i32 @I915_READ(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %49 [
    i32 0, label %50
    i32 1, label %55
    i32 2, label %60
  ]

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %45, %49
  %51 = load i32, i32* @TRANSA_DPLL_ENABLE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @TRANSA_DPLLB_SEL, align 4
  store i32 %54, i32* %9, align 4
  br label %65

55:                                               ; preds = %45
  %56 = load i32, i32* @TRANSB_DPLL_ENABLE, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @TRANSB_DPLLB_SEL, align 4
  store i32 %59, i32* %9, align 4
  br label %65

60:                                               ; preds = %45
  %61 = load i32, i32* @TRANSC_DPLL_ENABLE, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @TRANSC_DPLLB_SEL, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %55, %50
  %66 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %67 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @_PCH_DPLL_B, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %82

77:                                               ; preds = %65
  %78 = load i32, i32* %9, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* @PCH_DPLL_SEL, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @I915_WRITE(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %1
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @assert_panel_unlocked(%struct.drm_i915_private* %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @TRANS_HTOTAL(i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @HTOTAL(i32 %92)
  %94 = call i32 @I915_READ(i32 %93)
  %95 = call i32 @I915_WRITE(i32 %91, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @TRANS_HBLANK(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @HBLANK(i32 %98)
  %100 = call i32 @I915_READ(i32 %99)
  %101 = call i32 @I915_WRITE(i32 %97, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @TRANS_HSYNC(i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @HSYNC(i32 %104)
  %106 = call i32 @I915_READ(i32 %105)
  %107 = call i32 @I915_WRITE(i32 %103, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @TRANS_VTOTAL(i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @VTOTAL(i32 %110)
  %112 = call i32 @I915_READ(i32 %111)
  %113 = call i32 @I915_WRITE(i32 %109, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @TRANS_VBLANK(i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @VBLANK(i32 %116)
  %118 = call i32 @I915_READ(i32 %117)
  %119 = call i32 @I915_WRITE(i32 %115, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @TRANS_VSYNC(i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @VSYNC(i32 %122)
  %124 = call i32 @I915_READ(i32 %123)
  %125 = call i32 @I915_WRITE(i32 %121, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @TRANS_VSYNCSHIFT(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @VSYNCSHIFT(i32 %128)
  %130 = call i32 @I915_READ(i32 %129)
  %131 = call i32 @I915_WRITE(i32 %127, i32 %130)
  %132 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %133 = call i32 @intel_fdi_normal_train(%struct.drm_crtc* %132)
  %134 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %135 = call i64 @HAS_PCH_CPT(%struct.drm_device* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %219

137:                                              ; preds = %86
  %138 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %139 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %140 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %144 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %145 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %219

147:                                              ; preds = %142, %137
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @PIPECONF(i32 %148)
  %150 = call i32 @I915_READ(i32 %149)
  %151 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %152 = and i32 %150, %151
  %153 = ashr i32 %152, 5
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @TRANS_DP_CTL(i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @I915_READ(i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* @TRANS_DP_PORT_SEL_MASK, align 4
  %159 = load i32, i32* @TRANS_DP_SYNC_MASK, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @TRANS_DP_BPC_MASK, align 4
  %162 = or i32 %160, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* @TRANS_DP_OUTPUT_ENABLE, align 4
  %167 = load i32, i32* @TRANS_DP_ENH_FRAMING, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %10, align 4
  %172 = shl i32 %171, 9
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %176 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %147
  %183 = load i32, i32* @TRANS_DP_HSYNC_ACTIVE_HIGH, align 4
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %182, %147
  %187 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %188 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load i32, i32* @TRANS_DP_VSYNC_ACTIVE_HIGH, align 4
  %196 = load i32, i32* %8, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %194, %186
  %199 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %200 = call i32 @intel_trans_dp_port_sel(%struct.drm_crtc* %199)
  switch i32 %200, label %213 [
    i32 130, label %201
    i32 129, label %205
    i32 128, label %209
  ]

201:                                              ; preds = %198
  %202 = load i32, i32* @TRANS_DP_PORT_SEL_B, align 4
  %203 = load i32, i32* %8, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %8, align 4
  br label %215

205:                                              ; preds = %198
  %206 = load i32, i32* @TRANS_DP_PORT_SEL_C, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %215

209:                                              ; preds = %198
  %210 = load i32, i32* @TRANS_DP_PORT_SEL_D, align 4
  %211 = load i32, i32* %8, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %8, align 4
  br label %215

213:                                              ; preds = %198
  %214 = call i32 (...) @BUG()
  br label %215

215:                                              ; preds = %213, %209, %205, %201
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @I915_WRITE(i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %142, %86
  %220 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @ironlake_enable_pch_transcoder(%struct.drm_i915_private* %220, i32 %221)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @assert_transcoder_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FDI_RX_TUSIZE1(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPE_DATA_M1(i32) #1

declare dso_local i32 @ironlake_enable_pch_pll(%struct.intel_crtc*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @assert_panel_unlocked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @TRANS_HTOTAL(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @TRANS_HBLANK(i32) #1

declare dso_local i32 @HBLANK(i32) #1

declare dso_local i32 @TRANS_HSYNC(i32) #1

declare dso_local i32 @HSYNC(i32) #1

declare dso_local i32 @TRANS_VTOTAL(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @TRANS_VBLANK(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @TRANS_VSYNC(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i32 @TRANS_VSYNCSHIFT(i32) #1

declare dso_local i32 @VSYNCSHIFT(i32) #1

declare dso_local i32 @intel_fdi_normal_train(%struct.drm_crtc*) #1

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @TRANS_DP_CTL(i32) #1

declare dso_local i32 @intel_trans_dp_port_sel(%struct.drm_crtc*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ironlake_enable_pch_transcoder(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
