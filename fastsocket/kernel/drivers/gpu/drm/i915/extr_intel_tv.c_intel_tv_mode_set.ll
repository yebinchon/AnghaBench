; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_levels = type { i32, i32, i32 }
%struct.color_conversion = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32, i32 }
%struct.intel_tv = type { i32, i64* }
%struct.tv_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, i64, %struct.color_conversion*, %struct.video_levels*, %struct.color_conversion*, %struct.video_levels* }
%struct.TYPE_2__ = type { i32 }

@TV_CTL = common dso_local global i32 0, align 4
@TV_CTL_SAVE = common dso_local global i32 0, align 4
@TV_ENC_OUTPUT_COMPOSITE = common dso_local global i32 0, align 4
@TV_ENC_OUTPUT_COMPONENT = common dso_local global i32 0, align 4
@component_levels = common dso_local global %struct.video_levels zeroinitializer, align 4
@sdtv_csc_yprpb = common dso_local global %struct.color_conversion zeroinitializer, align 4
@hdtv_csc_yprpb = common dso_local global %struct.color_conversion zeroinitializer, align 4
@TV_ENC_OUTPUT_SVIDEO = common dso_local global i32 0, align 4
@TV_HSYNC_END_SHIFT = common dso_local global i32 0, align 4
@TV_HTOTAL_SHIFT = common dso_local global i32 0, align 4
@TV_HBURST_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_BURST_ENA = common dso_local global i32 0, align 4
@TV_HBLANK_START_SHIFT = common dso_local global i32 0, align 4
@TV_HBLANK_END_SHIFT = common dso_local global i32 0, align 4
@TV_NBR_END_SHIFT = common dso_local global i32 0, align 4
@TV_VI_END_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VI_END_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VEQ_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_VEQ_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VEQ_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_EQUAL_ENA = common dso_local global i32 0, align 4
@TV_VBURST_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_START_F3_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F3_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_START_F4_SHIFT = common dso_local global i32 0, align 4
@TV_VBURST_END_F4_SHIFT = common dso_local global i32 0, align 4
@TV_ENC_PIPEB_SELECT = common dso_local global i32 0, align 4
@TV_PROGRESSIVE = common dso_local global i32 0, align 4
@TV_TRILEVEL_SYNC = common dso_local global i32 0, align 4
@TV_PAL_BURST = common dso_local global i32 0, align 4
@TV_SC_DDA1_EN = common dso_local global i32 0, align 4
@TV_SC_DDA2_EN = common dso_local global i32 0, align 4
@TV_SC_DDA3_EN = common dso_local global i32 0, align 4
@TV_BURST_LEVEL_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA1_INC_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA2_SIZE_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA2_INC_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA3_SIZE_SHIFT = common dso_local global i32 0, align 4
@TV_SCDDA3_INC_SHIFT = common dso_local global i32 0, align 4
@TV_ENC_C0_FIX = common dso_local global i32 0, align 4
@TV_ENC_SDP_FIX = common dso_local global i32 0, align 4
@TV_H_CTL_1 = common dso_local global i32 0, align 4
@TV_H_CTL_2 = common dso_local global i32 0, align 4
@TV_H_CTL_3 = common dso_local global i32 0, align 4
@TV_V_CTL_1 = common dso_local global i32 0, align 4
@TV_V_CTL_2 = common dso_local global i32 0, align 4
@TV_V_CTL_3 = common dso_local global i32 0, align 4
@TV_V_CTL_4 = common dso_local global i32 0, align 4
@TV_V_CTL_5 = common dso_local global i32 0, align 4
@TV_V_CTL_6 = common dso_local global i32 0, align 4
@TV_V_CTL_7 = common dso_local global i32 0, align 4
@TV_SC_CTL_1 = common dso_local global i32 0, align 4
@TV_SC_CTL_2 = common dso_local global i32 0, align 4
@TV_SC_CTL_3 = common dso_local global i32 0, align 4
@TV_CSC_Y = common dso_local global i32 0, align 4
@TV_CSC_Y2 = common dso_local global i32 0, align 4
@TV_CSC_U = common dso_local global i32 0, align 4
@TV_CSC_U2 = common dso_local global i32 0, align 4
@TV_CSC_V = common dso_local global i32 0, align 4
@TV_CSC_V2 = common dso_local global i32 0, align 4
@TV_CLR_KNOBS = common dso_local global i32 0, align 4
@TV_CLR_LEVEL = common dso_local global i32 0, align 4
@TV_BLACK_LEVEL_SHIFT = common dso_local global i32 0, align 4
@TV_BLANK_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@TV_FILTER_CTL_1 = common dso_local global i32 0, align 4
@TV_AUTO_SCALE = common dso_local global i32 0, align 4
@TV_MARGIN_LEFT = common dso_local global i64 0, align 8
@TV_MARGIN_TOP = common dso_local global i64 0, align 8
@TV_MARGIN_RIGHT = common dso_local global i64 0, align 8
@TV_MARGIN_BOTTOM = common dso_local global i64 0, align 8
@TV_WIN_POS = common dso_local global i32 0, align 4
@TV_WIN_SIZE = common dso_local global i32 0, align 4
@TV_H_LUMA_0 = common dso_local global i32 0, align 4
@TV_H_CHROMA_0 = common dso_local global i32 0, align 4
@TV_V_LUMA_0 = common dso_local global i32 0, align 4
@TV_V_CHROMA_0 = common dso_local global i32 0, align 4
@TV_DAC = common dso_local global i32 0, align 4
@TV_DAC_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_tv_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tv_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_tv*, align 8
  %12 = alloca %struct.tv_mode*, align 8
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
  %28 = alloca i32, align 4
  %29 = alloca %struct.video_levels*, align 8
  %30 = alloca %struct.color_conversion*, align 8
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
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %41, i32 0, i32 1
  %43 = load %struct.drm_device*, %struct.drm_device** %42, align 8
  store %struct.drm_device* %43, %struct.drm_device** %7, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 1
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %45, align 8
  store %struct.drm_i915_private* %46, %struct.drm_i915_private** %8, align 8
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %48 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %47, i32 0, i32 0
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %48, align 8
  store %struct.drm_crtc* %49, %struct.drm_crtc** %9, align 8
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %51 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %50)
  store %struct.intel_crtc* %51, %struct.intel_crtc** %10, align 8
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %53 = call %struct.intel_tv* @enc_to_intel_tv(%struct.drm_encoder* %52)
  store %struct.intel_tv* %53, %struct.intel_tv** %11, align 8
  %54 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %55 = call %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv* %54)
  store %struct.tv_mode* %55, %struct.tv_mode** %12, align 8
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %57 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %32, align 4
  %59 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %60 = icmp ne %struct.tv_mode* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %3
  br label %747

62:                                               ; preds = %3
  %63 = load i32, i32* @TV_CTL, align 4
  %64 = call i32 @I915_READ(i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* @TV_CTL_SAVE, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %69 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %71 [
    i32 128, label %72
    i32 130, label %72
    i32 131, label %85
    i32 129, label %96
  ]

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %62, %62, %71
  %73 = load i32, i32* @TV_ENC_OUTPUT_COMPOSITE, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %77 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %76, i32 0, i32 39
  %78 = load %struct.video_levels*, %struct.video_levels** %77, align 8
  store %struct.video_levels* %78, %struct.video_levels** %29, align 8
  %79 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %80 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %79, i32 0, i32 38
  %81 = load %struct.color_conversion*, %struct.color_conversion** %80, align 8
  store %struct.color_conversion* %81, %struct.color_conversion** %30, align 8
  %82 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %83 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %31, align 4
  br label %109

85:                                               ; preds = %62
  %86 = load i32, i32* @TV_ENC_OUTPUT_COMPONENT, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  store %struct.video_levels* @component_levels, %struct.video_levels** %29, align 8
  %89 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %90 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store %struct.color_conversion* @sdtv_csc_yprpb, %struct.color_conversion** %30, align 8
  br label %95

94:                                               ; preds = %85
  store %struct.color_conversion* @hdtv_csc_yprpb, %struct.color_conversion** %30, align 8
  br label %95

95:                                               ; preds = %94, %93
  store i32 0, i32* %31, align 4
  br label %109

96:                                               ; preds = %62
  %97 = load i32, i32* @TV_ENC_OUTPUT_SVIDEO, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %101 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %100, i32 0, i32 37
  %102 = load %struct.video_levels*, %struct.video_levels** %101, align 8
  store %struct.video_levels* %102, %struct.video_levels** %29, align 8
  %103 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %104 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %103, i32 0, i32 36
  %105 = load %struct.color_conversion*, %struct.color_conversion** %104, align 8
  store %struct.color_conversion* %105, %struct.color_conversion** %30, align 8
  %106 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %107 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %31, align 4
  br label %109

109:                                              ; preds = %96, %95, %72
  %110 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %111 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TV_HSYNC_END_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %116 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TV_HTOTAL_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %114, %119
  store i32 %120, i32* %14, align 4
  %121 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %122 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 16
  %125 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %126 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TV_HBURST_LEN_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %124, %129
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %31, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %109
  %134 = load i32, i32* @TV_BURST_ENA, align 4
  %135 = load i32, i32* %15, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %133, %109
  %138 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %139 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TV_HBLANK_START_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %144 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TV_HBLANK_END_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %142, %147
  store i32 %148, i32* %16, align 4
  %149 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %150 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TV_NBR_END_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %155 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @TV_VI_END_F1_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %153, %158
  %160 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %161 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TV_VI_END_F2_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = or i32 %159, %164
  store i32 %165, i32* %17, align 4
  %166 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %167 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @TV_VSYNC_LEN_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %172 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TV_VSYNC_START_F1_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = or i32 %170, %175
  %177 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %178 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @TV_VSYNC_START_F2_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = or i32 %176, %181
  store i32 %182, i32* %18, align 4
  %183 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %184 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @TV_VEQ_LEN_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %189 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %188, i32 0, i32 14
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @TV_VEQ_START_F1_SHIFT, align 4
  %192 = shl i32 %190, %191
  %193 = or i32 %187, %192
  %194 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %195 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %194, i32 0, i32 15
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @TV_VEQ_START_F2_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = or i32 %193, %198
  store i32 %199, i32* %19, align 4
  %200 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %201 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %200, i32 0, i32 35
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %137
  %205 = load i32, i32* @TV_EQUAL_ENA, align 4
  %206 = load i32, i32* %19, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %204, %137
  %209 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %210 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %209, i32 0, i32 16
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @TV_VBURST_START_F1_SHIFT, align 4
  %213 = shl i32 %211, %212
  %214 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %215 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %214, i32 0, i32 17
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TV_VBURST_END_F1_SHIFT, align 4
  %218 = shl i32 %216, %217
  %219 = or i32 %213, %218
  store i32 %219, i32* %20, align 4
  %220 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %221 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %220, i32 0, i32 18
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @TV_VBURST_START_F2_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %226 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %225, i32 0, i32 19
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @TV_VBURST_END_F2_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = or i32 %224, %229
  store i32 %230, i32* %21, align 4
  %231 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %232 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %231, i32 0, i32 20
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @TV_VBURST_START_F3_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %237 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %236, i32 0, i32 21
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @TV_VBURST_END_F3_SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = or i32 %235, %240
  store i32 %241, i32* %22, align 4
  %242 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %243 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %242, i32 0, i32 22
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @TV_VBURST_START_F4_SHIFT, align 4
  %246 = shl i32 %244, %245
  %247 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %248 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %247, i32 0, i32 23
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @TV_VBURST_END_F4_SHIFT, align 4
  %251 = shl i32 %249, %250
  %252 = or i32 %246, %251
  store i32 %252, i32* %23, align 4
  %253 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %254 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %261

257:                                              ; preds = %208
  %258 = load i32, i32* @TV_ENC_PIPEB_SELECT, align 4
  %259 = load i32, i32* %13, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %13, align 4
  br label %261

261:                                              ; preds = %257, %208
  %262 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %263 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %262, i32 0, i32 24
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %13, align 4
  %267 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %268 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %267, i32 0, i32 32
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %261
  %272 = load i32, i32* @TV_PROGRESSIVE, align 4
  %273 = load i32, i32* %13, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %13, align 4
  br label %275

275:                                              ; preds = %271, %261
  %276 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %277 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %276, i32 0, i32 34
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load i32, i32* @TV_TRILEVEL_SYNC, align 4
  %282 = load i32, i32* %13, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %13, align 4
  br label %284

284:                                              ; preds = %280, %275
  %285 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %286 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %285, i32 0, i32 33
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load i32, i32* @TV_PAL_BURST, align 4
  %291 = load i32, i32* %13, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %13, align 4
  br label %293

293:                                              ; preds = %289, %284
  store i32 0, i32* %24, align 4
  %294 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %295 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %294, i32 0, i32 25
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load i32, i32* @TV_SC_DDA1_EN, align 4
  %300 = load i32, i32* %24, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %24, align 4
  br label %302

302:                                              ; preds = %298, %293
  %303 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %304 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %303, i32 0, i32 26
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load i32, i32* @TV_SC_DDA2_EN, align 4
  %309 = load i32, i32* %24, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %24, align 4
  br label %311

311:                                              ; preds = %307, %302
  %312 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %313 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %312, i32 0, i32 27
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load i32, i32* @TV_SC_DDA3_EN, align 4
  %318 = load i32, i32* %24, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %24, align 4
  br label %320

320:                                              ; preds = %316, %311
  %321 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %322 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %321, i32 0, i32 28
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %24, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %24, align 4
  %326 = load %struct.video_levels*, %struct.video_levels** %29, align 8
  %327 = icmp ne %struct.video_levels* %326, null
  br i1 %327, label %328, label %336

328:                                              ; preds = %320
  %329 = load %struct.video_levels*, %struct.video_levels** %29, align 8
  %330 = getelementptr inbounds %struct.video_levels, %struct.video_levels* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @TV_BURST_LEVEL_SHIFT, align 4
  %333 = shl i32 %331, %332
  %334 = load i32, i32* %24, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %24, align 4
  br label %336

336:                                              ; preds = %328, %320
  %337 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %338 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %337, i32 0, i32 25
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @TV_SCDDA1_INC_SHIFT, align 4
  %341 = shl i32 %339, %340
  %342 = load i32, i32* %24, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %24, align 4
  %344 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %345 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %344, i32 0, i32 29
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @TV_SCDDA2_SIZE_SHIFT, align 4
  %348 = shl i32 %346, %347
  %349 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %350 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %349, i32 0, i32 26
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @TV_SCDDA2_INC_SHIFT, align 4
  %353 = shl i32 %351, %352
  %354 = or i32 %348, %353
  store i32 %354, i32* %25, align 4
  %355 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %356 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %355, i32 0, i32 30
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @TV_SCDDA3_SIZE_SHIFT, align 4
  %359 = shl i32 %357, %358
  %360 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %361 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %360, i32 0, i32 27
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @TV_SCDDA3_INC_SHIFT, align 4
  %364 = shl i32 %362, %363
  %365 = or i32 %359, %364
  store i32 %365, i32* %26, align 4
  %366 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %367 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %368, 10098
  br i1 %369, label %370, label %376

370:                                              ; preds = %336
  %371 = load i32, i32* @TV_ENC_C0_FIX, align 4
  %372 = load i32, i32* @TV_ENC_SDP_FIX, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* %13, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %13, align 4
  br label %376

376:                                              ; preds = %370, %336
  %377 = load i32, i32* @TV_H_CTL_1, align 4
  %378 = load i32, i32* %14, align 4
  %379 = call i32 @I915_WRITE(i32 %377, i32 %378)
  %380 = load i32, i32* @TV_H_CTL_2, align 4
  %381 = load i32, i32* %15, align 4
  %382 = call i32 @I915_WRITE(i32 %380, i32 %381)
  %383 = load i32, i32* @TV_H_CTL_3, align 4
  %384 = load i32, i32* %16, align 4
  %385 = call i32 @I915_WRITE(i32 %383, i32 %384)
  %386 = load i32, i32* @TV_V_CTL_1, align 4
  %387 = load i32, i32* %17, align 4
  %388 = call i32 @I915_WRITE(i32 %386, i32 %387)
  %389 = load i32, i32* @TV_V_CTL_2, align 4
  %390 = load i32, i32* %18, align 4
  %391 = call i32 @I915_WRITE(i32 %389, i32 %390)
  %392 = load i32, i32* @TV_V_CTL_3, align 4
  %393 = load i32, i32* %19, align 4
  %394 = call i32 @I915_WRITE(i32 %392, i32 %393)
  %395 = load i32, i32* @TV_V_CTL_4, align 4
  %396 = load i32, i32* %20, align 4
  %397 = call i32 @I915_WRITE(i32 %395, i32 %396)
  %398 = load i32, i32* @TV_V_CTL_5, align 4
  %399 = load i32, i32* %21, align 4
  %400 = call i32 @I915_WRITE(i32 %398, i32 %399)
  %401 = load i32, i32* @TV_V_CTL_6, align 4
  %402 = load i32, i32* %22, align 4
  %403 = call i32 @I915_WRITE(i32 %401, i32 %402)
  %404 = load i32, i32* @TV_V_CTL_7, align 4
  %405 = load i32, i32* %23, align 4
  %406 = call i32 @I915_WRITE(i32 %404, i32 %405)
  %407 = load i32, i32* @TV_SC_CTL_1, align 4
  %408 = load i32, i32* %24, align 4
  %409 = call i32 @I915_WRITE(i32 %407, i32 %408)
  %410 = load i32, i32* @TV_SC_CTL_2, align 4
  %411 = load i32, i32* %25, align 4
  %412 = call i32 @I915_WRITE(i32 %410, i32 %411)
  %413 = load i32, i32* @TV_SC_CTL_3, align 4
  %414 = load i32, i32* %26, align 4
  %415 = call i32 @I915_WRITE(i32 %413, i32 %414)
  %416 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %417 = icmp ne %struct.color_conversion* %416, null
  br i1 %417, label %418, label %479

418:                                              ; preds = %376
  %419 = load i32, i32* @TV_CSC_Y, align 4
  %420 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %421 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = shl i32 %422, 16
  %424 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %425 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %423, %426
  %428 = call i32 @I915_WRITE(i32 %419, i32 %427)
  %429 = load i32, i32* @TV_CSC_Y2, align 4
  %430 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %431 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = shl i32 %432, 16
  %434 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %435 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %433, %436
  %438 = call i32 @I915_WRITE(i32 %429, i32 %437)
  %439 = load i32, i32* @TV_CSC_U, align 4
  %440 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %441 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 4
  %443 = shl i32 %442, 16
  %444 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %445 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %443, %446
  %448 = call i32 @I915_WRITE(i32 %439, i32 %447)
  %449 = load i32, i32* @TV_CSC_U2, align 4
  %450 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %451 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %450, i32 0, i32 6
  %452 = load i32, i32* %451, align 4
  %453 = shl i32 %452, 16
  %454 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %455 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %454, i32 0, i32 7
  %456 = load i32, i32* %455, align 4
  %457 = or i32 %453, %456
  %458 = call i32 @I915_WRITE(i32 %449, i32 %457)
  %459 = load i32, i32* @TV_CSC_V, align 4
  %460 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %461 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %460, i32 0, i32 8
  %462 = load i32, i32* %461, align 4
  %463 = shl i32 %462, 16
  %464 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %465 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %464, i32 0, i32 9
  %466 = load i32, i32* %465, align 4
  %467 = or i32 %463, %466
  %468 = call i32 @I915_WRITE(i32 %459, i32 %467)
  %469 = load i32, i32* @TV_CSC_V2, align 4
  %470 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %471 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %470, i32 0, i32 10
  %472 = load i32, i32* %471, align 4
  %473 = shl i32 %472, 16
  %474 = load %struct.color_conversion*, %struct.color_conversion** %30, align 8
  %475 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %474, i32 0, i32 11
  %476 = load i32, i32* %475, align 4
  %477 = or i32 %473, %476
  %478 = call i32 @I915_WRITE(i32 %469, i32 %477)
  br label %479

479:                                              ; preds = %418, %376
  %480 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %481 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %480)
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = icmp sge i32 %483, 4
  br i1 %484, label %485, label %488

485:                                              ; preds = %479
  %486 = load i32, i32* @TV_CLR_KNOBS, align 4
  %487 = call i32 @I915_WRITE(i32 %486, i32 4210688)
  br label %491

488:                                              ; preds = %479
  %489 = load i32, i32* @TV_CLR_KNOBS, align 4
  %490 = call i32 @I915_WRITE(i32 %489, i32 6316032)
  br label %491

491:                                              ; preds = %488, %485
  %492 = load %struct.video_levels*, %struct.video_levels** %29, align 8
  %493 = icmp ne %struct.video_levels* %492, null
  br i1 %493, label %494, label %508

494:                                              ; preds = %491
  %495 = load i32, i32* @TV_CLR_LEVEL, align 4
  %496 = load %struct.video_levels*, %struct.video_levels** %29, align 8
  %497 = getelementptr inbounds %struct.video_levels, %struct.video_levels* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @TV_BLACK_LEVEL_SHIFT, align 4
  %500 = shl i32 %498, %499
  %501 = load %struct.video_levels*, %struct.video_levels** %29, align 8
  %502 = getelementptr inbounds %struct.video_levels, %struct.video_levels* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @TV_BLANK_LEVEL_SHIFT, align 4
  %505 = shl i32 %503, %504
  %506 = or i32 %500, %505
  %507 = call i32 @I915_WRITE(i32 %495, i32 %506)
  br label %508

508:                                              ; preds = %494, %491
  %509 = load i32, i32* %32, align 4
  %510 = call i32 @PIPECONF(i32 %509)
  store i32 %510, i32* %33, align 4
  %511 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %512 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @DSPCNTR(i32 %513)
  store i32 %514, i32* %34, align 4
  %515 = load i32, i32* %33, align 4
  %516 = call i32 @I915_READ(i32 %515)
  store i32 %516, i32* %35, align 4
  %517 = load i32, i32* %34, align 4
  %518 = call i32 @I915_READ(i32 %517)
  store i32 %518, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %519 = load i32, i32* %34, align 4
  %520 = load i32, i32* %36, align 4
  %521 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %522 = xor i32 %521, -1
  %523 = and i32 %520, %522
  %524 = call i32 @I915_WRITE(i32 %519, i32 %523)
  %525 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %526 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %527 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @intel_flush_display_plane(%struct.drm_i915_private* %525, i32 %528)
  %530 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %531 = call i64 @IS_GEN2(%struct.drm_device* %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %539

533:                                              ; preds = %508
  %534 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %535 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %536 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @intel_wait_for_vblank(%struct.drm_device* %534, i32 %537)
  br label %539

539:                                              ; preds = %533, %508
  %540 = load i32, i32* %33, align 4
  %541 = load i32, i32* %35, align 4
  %542 = load i32, i32* @PIPECONF_ENABLE, align 4
  %543 = xor i32 %542, -1
  %544 = and i32 %541, %543
  %545 = call i32 @I915_WRITE(i32 %540, i32 %544)
  %546 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %547 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %548 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @intel_wait_for_pipe_off(%struct.drm_device* %546, i32 %549)
  %551 = load i32, i32* @TV_FILTER_CTL_1, align 4
  %552 = load i32, i32* @TV_AUTO_SCALE, align 4
  %553 = call i32 @I915_WRITE(i32 %551, i32 %552)
  %554 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %555 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %554, i32 0, i32 5
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %558 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %557, i32 0, i32 6
  %559 = load i32, i32* %558, align 8
  %560 = sub nsw i32 %556, %559
  store i32 %560, i32* %39, align 4
  %561 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %562 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %561, i32 0, i32 32
  %563 = load i64, i64* %562, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %539
  %566 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %567 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %566, i32 0, i32 7
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %40, align 4
  br label %576

570:                                              ; preds = %539
  %571 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %572 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %571, i32 0, i32 7
  %573 = load i32, i32* %572, align 4
  %574 = mul nsw i32 2, %573
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %40, align 4
  br label %576

576:                                              ; preds = %570, %565
  %577 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %578 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %577, i32 0, i32 1
  %579 = load i64*, i64** %578, align 8
  %580 = load i64, i64* @TV_MARGIN_LEFT, align 8
  %581 = getelementptr inbounds i64, i64* %579, i64 %580
  %582 = load i64, i64* %581, align 8
  %583 = load i32, i32* %37, align 4
  %584 = sext i32 %583 to i64
  %585 = add nsw i64 %584, %582
  %586 = trunc i64 %585 to i32
  store i32 %586, i32* %37, align 4
  %587 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %588 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %587, i32 0, i32 1
  %589 = load i64*, i64** %588, align 8
  %590 = load i64, i64* @TV_MARGIN_TOP, align 8
  %591 = getelementptr inbounds i64, i64* %589, i64 %590
  %592 = load i64, i64* %591, align 8
  %593 = load i32, i32* %38, align 4
  %594 = sext i32 %593 to i64
  %595 = add nsw i64 %594, %592
  %596 = trunc i64 %595 to i32
  store i32 %596, i32* %38, align 4
  %597 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %598 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %597, i32 0, i32 1
  %599 = load i64*, i64** %598, align 8
  %600 = load i64, i64* @TV_MARGIN_LEFT, align 8
  %601 = getelementptr inbounds i64, i64* %599, i64 %600
  %602 = load i64, i64* %601, align 8
  %603 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %604 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %603, i32 0, i32 1
  %605 = load i64*, i64** %604, align 8
  %606 = load i64, i64* @TV_MARGIN_RIGHT, align 8
  %607 = getelementptr inbounds i64, i64* %605, i64 %606
  %608 = load i64, i64* %607, align 8
  %609 = add nsw i64 %602, %608
  %610 = load i32, i32* %39, align 4
  %611 = zext i32 %610 to i64
  %612 = sub nsw i64 %611, %609
  %613 = trunc i64 %612 to i32
  store i32 %613, i32* %39, align 4
  %614 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %615 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %614, i32 0, i32 1
  %616 = load i64*, i64** %615, align 8
  %617 = load i64, i64* @TV_MARGIN_TOP, align 8
  %618 = getelementptr inbounds i64, i64* %616, i64 %617
  %619 = load i64, i64* %618, align 8
  %620 = load %struct.intel_tv*, %struct.intel_tv** %11, align 8
  %621 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %620, i32 0, i32 1
  %622 = load i64*, i64** %621, align 8
  %623 = load i64, i64* @TV_MARGIN_BOTTOM, align 8
  %624 = getelementptr inbounds i64, i64* %622, i64 %623
  %625 = load i64, i64* %624, align 8
  %626 = add nsw i64 %619, %625
  %627 = load i32, i32* %40, align 4
  %628 = zext i32 %627 to i64
  %629 = sub nsw i64 %628, %626
  %630 = trunc i64 %629 to i32
  store i32 %630, i32* %40, align 4
  %631 = load i32, i32* @TV_WIN_POS, align 4
  %632 = load i32, i32* %37, align 4
  %633 = shl i32 %632, 16
  %634 = load i32, i32* %38, align 4
  %635 = or i32 %633, %634
  %636 = call i32 @I915_WRITE(i32 %631, i32 %635)
  %637 = load i32, i32* @TV_WIN_SIZE, align 4
  %638 = load i32, i32* %39, align 4
  %639 = shl i32 %638, 16
  %640 = load i32, i32* %40, align 4
  %641 = or i32 %639, %640
  %642 = call i32 @I915_WRITE(i32 %637, i32 %641)
  %643 = load i32, i32* %33, align 4
  %644 = load i32, i32* %35, align 4
  %645 = call i32 @I915_WRITE(i32 %643, i32 %644)
  %646 = load i32, i32* %34, align 4
  %647 = load i32, i32* %36, align 4
  %648 = call i32 @I915_WRITE(i32 %646, i32 %647)
  %649 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %650 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %651 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @intel_flush_display_plane(%struct.drm_i915_private* %649, i32 %652)
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %654

654:                                              ; preds = %671, %576
  %655 = load i32, i32* %27, align 4
  %656 = icmp slt i32 %655, 60
  br i1 %656, label %657, label %674

657:                                              ; preds = %654
  %658 = load i32, i32* @TV_H_LUMA_0, align 4
  %659 = load i32, i32* %27, align 4
  %660 = shl i32 %659, 2
  %661 = add nsw i32 %658, %660
  %662 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %663 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %662, i32 0, i32 31
  %664 = load i32*, i32** %663, align 8
  %665 = load i32, i32* %28, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %28, align 4
  %667 = sext i32 %665 to i64
  %668 = getelementptr inbounds i32, i32* %664, i64 %667
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @I915_WRITE(i32 %661, i32 %669)
  br label %671

671:                                              ; preds = %657
  %672 = load i32, i32* %27, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %27, align 4
  br label %654

674:                                              ; preds = %654
  store i32 0, i32* %27, align 4
  br label %675

675:                                              ; preds = %692, %674
  %676 = load i32, i32* %27, align 4
  %677 = icmp slt i32 %676, 60
  br i1 %677, label %678, label %695

678:                                              ; preds = %675
  %679 = load i32, i32* @TV_H_CHROMA_0, align 4
  %680 = load i32, i32* %27, align 4
  %681 = shl i32 %680, 2
  %682 = add nsw i32 %679, %681
  %683 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %684 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %683, i32 0, i32 31
  %685 = load i32*, i32** %684, align 8
  %686 = load i32, i32* %28, align 4
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %28, align 4
  %688 = sext i32 %686 to i64
  %689 = getelementptr inbounds i32, i32* %685, i64 %688
  %690 = load i32, i32* %689, align 4
  %691 = call i32 @I915_WRITE(i32 %682, i32 %690)
  br label %692

692:                                              ; preds = %678
  %693 = load i32, i32* %27, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %27, align 4
  br label %675

695:                                              ; preds = %675
  store i32 0, i32* %27, align 4
  br label %696

696:                                              ; preds = %713, %695
  %697 = load i32, i32* %27, align 4
  %698 = icmp slt i32 %697, 43
  br i1 %698, label %699, label %716

699:                                              ; preds = %696
  %700 = load i32, i32* @TV_V_LUMA_0, align 4
  %701 = load i32, i32* %27, align 4
  %702 = shl i32 %701, 2
  %703 = add nsw i32 %700, %702
  %704 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %705 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %704, i32 0, i32 31
  %706 = load i32*, i32** %705, align 8
  %707 = load i32, i32* %28, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %28, align 4
  %709 = sext i32 %707 to i64
  %710 = getelementptr inbounds i32, i32* %706, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = call i32 @I915_WRITE(i32 %703, i32 %711)
  br label %713

713:                                              ; preds = %699
  %714 = load i32, i32* %27, align 4
  %715 = add nsw i32 %714, 1
  store i32 %715, i32* %27, align 4
  br label %696

716:                                              ; preds = %696
  store i32 0, i32* %27, align 4
  br label %717

717:                                              ; preds = %734, %716
  %718 = load i32, i32* %27, align 4
  %719 = icmp slt i32 %718, 43
  br i1 %719, label %720, label %737

720:                                              ; preds = %717
  %721 = load i32, i32* @TV_V_CHROMA_0, align 4
  %722 = load i32, i32* %27, align 4
  %723 = shl i32 %722, 2
  %724 = add nsw i32 %721, %723
  %725 = load %struct.tv_mode*, %struct.tv_mode** %12, align 8
  %726 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %725, i32 0, i32 31
  %727 = load i32*, i32** %726, align 8
  %728 = load i32, i32* %28, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %28, align 4
  %730 = sext i32 %728 to i64
  %731 = getelementptr inbounds i32, i32* %727, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = call i32 @I915_WRITE(i32 %724, i32 %732)
  br label %734

734:                                              ; preds = %720
  %735 = load i32, i32* %27, align 4
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* %27, align 4
  br label %717

737:                                              ; preds = %717
  %738 = load i32, i32* @TV_DAC, align 4
  %739 = load i32, i32* @TV_DAC, align 4
  %740 = call i32 @I915_READ(i32 %739)
  %741 = load i32, i32* @TV_DAC_SAVE, align 4
  %742 = and i32 %740, %741
  %743 = call i32 @I915_WRITE(i32 %738, i32 %742)
  %744 = load i32, i32* @TV_CTL, align 4
  %745 = load i32, i32* %13, align 4
  %746 = call i32 @I915_WRITE(i32 %744, i32 %745)
  br label %747

747:                                              ; preds = %737, %61
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_tv* @enc_to_intel_tv(%struct.drm_encoder*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @intel_flush_display_plane(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_wait_for_pipe_off(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
