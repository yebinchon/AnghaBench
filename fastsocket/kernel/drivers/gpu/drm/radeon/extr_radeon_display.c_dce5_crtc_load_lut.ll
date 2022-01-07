; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_dce5_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_dce5_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32*, i32*, i32*, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@NI_INPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@NI_INPUT_CSC_BYPASS = common dso_local global i32 0, align 4
@NI_PRESCALE_GRPH_CONTROL = common dso_local global i64 0, align 8
@NI_GRPH_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@NI_PRESCALE_OVL_CONTROL = common dso_local global i64 0, align 8
@NI_OVL_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@NI_INPUT_GAMMA_CONTROL = common dso_local global i64 0, align 8
@NI_INPUT_GAMMA_USE_LUT = common dso_local global i32 0, align 4
@EVERGREEN_DC_LUT_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_RW_MODE = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_RW_INDEX = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_30_COLOR = common dso_local global i64 0, align 8
@NI_DEGAMMA_CONTROL = common dso_local global i64 0, align 8
@NI_DEGAMMA_BYPASS = common dso_local global i32 0, align 4
@NI_GAMUT_REMAP_CONTROL = common dso_local global i64 0, align 8
@NI_GAMUT_REMAP_BYPASS = common dso_local global i32 0, align 4
@NI_REGAMMA_CONTROL = common dso_local global i64 0, align 8
@NI_REGAMMA_BYPASS = common dso_local global i32 0, align 4
@NI_OUTPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@NI_OUTPUT_CSC_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce5_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce5_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %7)
  store %struct.radeon_crtc* %8, %struct.radeon_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %5, align 8
  %15 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* @NI_INPUT_CSC_CONTROL, align 8
  %20 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* @NI_INPUT_CSC_BYPASS, align 4
  %25 = call i32 @NI_INPUT_CSC_GRPH_MODE(i32 %24)
  %26 = load i32, i32* @NI_INPUT_CSC_BYPASS, align 4
  %27 = call i32 @NI_INPUT_CSC_OVL_MODE(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @WREG32(i64 %23, i32 %28)
  %30 = load i64, i64* @NI_PRESCALE_GRPH_CONTROL, align 8
  %31 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* @NI_GRPH_PRESCALE_BYPASS, align 4
  %36 = call i32 @WREG32(i64 %34, i32 %35)
  %37 = load i64, i64* @NI_PRESCALE_OVL_CONTROL, align 8
  %38 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* @NI_OVL_PRESCALE_BYPASS, align 4
  %43 = call i32 @WREG32(i64 %41, i32 %42)
  %44 = load i64, i64* @NI_INPUT_GAMMA_CONTROL, align 8
  %45 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* @NI_INPUT_GAMMA_USE_LUT, align 4
  %50 = call i32 @NI_GRPH_INPUT_GAMMA_MODE(i32 %49)
  %51 = load i32, i32* @NI_INPUT_GAMMA_USE_LUT, align 4
  %52 = call i32 @NI_OVL_INPUT_GAMMA_MODE(i32 %51)
  %53 = or i32 %50, %52
  %54 = call i32 @WREG32(i64 %48, i32 %53)
  %55 = load i64, i64* @EVERGREEN_DC_LUT_CONTROL, align 8
  %56 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @WREG32(i64 %59, i32 0)
  %61 = load i64, i64* @EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE, align 8
  %62 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @WREG32(i64 %65, i32 0)
  %67 = load i64, i64* @EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN, align 8
  %68 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @WREG32(i64 %71, i32 0)
  %73 = load i64, i64* @EVERGREEN_DC_LUT_BLACK_OFFSET_RED, align 8
  %74 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = call i32 @WREG32(i64 %77, i32 0)
  %79 = load i64, i64* @EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE, align 8
  %80 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = call i32 @WREG32(i64 %83, i32 65535)
  %85 = load i64, i64* @EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN, align 8
  %86 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @WREG32(i64 %89, i32 65535)
  %91 = load i64, i64* @EVERGREEN_DC_LUT_WHITE_OFFSET_RED, align 8
  %92 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = call i32 @WREG32(i64 %95, i32 65535)
  %97 = load i64, i64* @EVERGREEN_DC_LUT_RW_MODE, align 8
  %98 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = call i32 @WREG32(i64 %101, i32 0)
  %103 = load i64, i64* @EVERGREEN_DC_LUT_WRITE_EN_MASK, align 8
  %104 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = call i32 @WREG32(i64 %107, i32 7)
  %109 = load i64, i64* @EVERGREEN_DC_LUT_RW_INDEX, align 8
  %110 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = call i32 @WREG32(i64 %113, i32 0)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %151, %1
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 256
  br i1 %117, label %118, label %154

118:                                              ; preds = %115
  %119 = load i64, i64* @EVERGREEN_DC_LUT_30_COLOR, align 8
  %120 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %121 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 20
  %132 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %133 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 10
  %140 = or i32 %131, %139
  %141 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 0
  %149 = or i32 %140, %148
  %150 = call i32 @WREG32(i64 %123, i32 %149)
  br label %151

151:                                              ; preds = %118
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %115

154:                                              ; preds = %115
  %155 = load i64, i64* @NI_DEGAMMA_CONTROL, align 8
  %156 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %157 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %161 = call i32 @NI_GRPH_DEGAMMA_MODE(i32 %160)
  %162 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %163 = call i32 @NI_OVL_DEGAMMA_MODE(i32 %162)
  %164 = or i32 %161, %163
  %165 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %166 = call i32 @NI_ICON_DEGAMMA_MODE(i32 %165)
  %167 = or i32 %164, %166
  %168 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %169 = call i32 @NI_CURSOR_DEGAMMA_MODE(i32 %168)
  %170 = or i32 %167, %169
  %171 = call i32 @WREG32(i64 %159, i32 %170)
  %172 = load i64, i64* @NI_GAMUT_REMAP_CONTROL, align 8
  %173 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = load i32, i32* @NI_GAMUT_REMAP_BYPASS, align 4
  %178 = call i32 @NI_GRPH_GAMUT_REMAP_MODE(i32 %177)
  %179 = load i32, i32* @NI_GAMUT_REMAP_BYPASS, align 4
  %180 = call i32 @NI_OVL_GAMUT_REMAP_MODE(i32 %179)
  %181 = or i32 %178, %180
  %182 = call i32 @WREG32(i64 %176, i32 %181)
  %183 = load i64, i64* @NI_REGAMMA_CONTROL, align 8
  %184 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %183, %186
  %188 = load i32, i32* @NI_REGAMMA_BYPASS, align 4
  %189 = call i32 @NI_GRPH_REGAMMA_MODE(i32 %188)
  %190 = load i32, i32* @NI_REGAMMA_BYPASS, align 4
  %191 = call i32 @NI_OVL_REGAMMA_MODE(i32 %190)
  %192 = or i32 %189, %191
  %193 = call i32 @WREG32(i64 %187, i32 %192)
  %194 = load i64, i64* @NI_OUTPUT_CSC_CONTROL, align 8
  %195 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %196 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = load i32, i32* @NI_OUTPUT_CSC_BYPASS, align 4
  %200 = call i32 @NI_OUTPUT_CSC_GRPH_MODE(i32 %199)
  %201 = load i32, i32* @NI_OUTPUT_CSC_BYPASS, align 4
  %202 = call i32 @NI_OUTPUT_CSC_OVL_MODE(i32 %201)
  %203 = or i32 %200, %202
  %204 = call i32 @WREG32(i64 %198, i32 %203)
  %205 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %206 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 26944, %207
  %209 = call i32 @WREG32(i64 %208, i32 0)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @NI_INPUT_CSC_GRPH_MODE(i32) #1

declare dso_local i32 @NI_INPUT_CSC_OVL_MODE(i32) #1

declare dso_local i32 @NI_GRPH_INPUT_GAMMA_MODE(i32) #1

declare dso_local i32 @NI_OVL_INPUT_GAMMA_MODE(i32) #1

declare dso_local i32 @NI_GRPH_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_OVL_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_ICON_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_CURSOR_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_GRPH_GAMUT_REMAP_MODE(i32) #1

declare dso_local i32 @NI_OVL_GAMUT_REMAP_MODE(i32) #1

declare dso_local i32 @NI_GRPH_REGAMMA_MODE(i32) #1

declare dso_local i32 @NI_OVL_REGAMMA_MODE(i32) #1

declare dso_local i32 @NI_OUTPUT_CSC_GRPH_MODE(i32) #1

declare dso_local i32 @NI_OUTPUT_CSC_OVL_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
