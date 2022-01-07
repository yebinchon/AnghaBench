; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_clock_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@DISPLAY_RATE_SELECT_FPA1 = common dso_local global i32 0, align 4
@FP_M1_DIV_MASK = common dso_local global i32 0, align 4
@FP_M1_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_N_PINEVIEW_DIV_MASK = common dso_local global i32 0, align 4
@FP_N_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_M2_PINEVIEW_DIV_MASK = common dso_local global i32 0, align 4
@FP_M2_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_N_DIV_MASK = common dso_local global i32 0, align 4
@FP_M2_DIV_MASK = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_MODE_MASK = common dso_local global i32 0, align 4
@DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 = common dso_local global i32 0, align 4
@DPLLB_LVDS_P2_CLOCK_DIV_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unknown DPLL mode %08x in programmed mode\0A\00", align 1
@LVDS = common dso_local global i32 0, align 4
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS = common dso_local global i32 0, align 4
@PLL_REF_INPUT_MASK = common dso_local global i32 0, align 4
@PLLB_REF_INPUT_SPREADSPECTRUMIN = common dso_local global i32 0, align 4
@PLL_P1_DIVIDE_BY_TWO = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_I830 = common dso_local global i32 0, align 4
@PLL_P2_DIVIDE_BY_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*)* @intel_crtc_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crtc_clock_get(%struct.drm_device* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %7, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @DPLL(i32 %21)
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @DISPLAY_RATE_SELECT_FPA1, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @FP0(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %10, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @FP1(i32 %33)
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FP_M1_DIV_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @FP_M1_DIV_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = call i64 @IS_PINEVIEW(%struct.drm_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @FP_N_PINEVIEW_DIV_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @FP_N_DIV_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = call i8* @ffs(i32 %51)
  %53 = getelementptr i8, i8* %52, i64 -1
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @FP_M2_PINEVIEW_DIV_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @FP_M2_DIV_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  br label %75

62:                                               ; preds = %36
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @FP_N_DIV_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @FP_N_DIV_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @FP_M2_DIV_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @FP_M2_DIV_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %62, %46
  %76 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %77 = call i32 @IS_GEN2(%struct.drm_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %129, label %79

79:                                               ; preds = %75
  %80 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %81 = call i64 @IS_PINEVIEW(%struct.drm_device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW, align 4
  %88 = ashr i32 %86, %87
  %89 = call i8* @ffs(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  br label %101

92:                                               ; preds = %79
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = call i8* @ffs(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %92, %83
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @DPLL_MODE_MASK, align 4
  %104 = and i32 %102, %103
  switch i32 %104, label %121 [
    i32 129, label %105
    i32 128, label %113
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @DPLL_DAC_SERIAL_P2_CLOCK_DIV_5, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 5, i32 10
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 %111, i32* %112, align 4
  br label %126

113:                                              ; preds = %101
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @DPLLB_LVDS_P2_CLOCK_DIV_7, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 7, i32 14
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 %119, i32* %120, align 4
  br label %126

121:                                              ; preds = %101
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @DPLL_MODE_MASK, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %124)
  store i32 0, i32* %3, align 4
  br label %196

126:                                              ; preds = %113, %105
  %127 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %128 = call i32 @intel_clock(%struct.drm_device* %127, i32 96000, %struct.TYPE_3__* %11)
  br label %193

129:                                              ; preds = %75
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32, i32* @LVDS, align 4
  %134 = call i32 @I915_READ(i32 %133)
  %135 = load i32, i32* @LVDS_PORT_EN, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br label %138

138:                                              ; preds = %132, %129
  %139 = phi i1 [ false, %129 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %138
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %148 = ashr i32 %146, %147
  %149 = call i8* @ffs(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 %150, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 14, i32* %152, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @PLL_REF_INPUT_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @PLLB_REF_INPUT_SPREADSPECTRUMIN, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %143
  %159 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %160 = call i32 @intel_clock(%struct.drm_device* %159, i32 66000, %struct.TYPE_3__* %11)
  br label %164

161:                                              ; preds = %143
  %162 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %163 = call i32 @intel_clock(%struct.drm_device* %162, i32 48000, %struct.TYPE_3__* %11)
  br label %164

164:                                              ; preds = %161, %158
  br label %192

165:                                              ; preds = %138
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @PLL_P1_DIVIDE_BY_TWO, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 2, i32* %171, align 4
  br label %180

172:                                              ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_I830, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %177 = ashr i32 %175, %176
  %178 = add nsw i32 %177, 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %172, %170
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @PLL_P2_DIVIDE_BY_4, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 4, i32* %186, align 4
  br label %189

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 2, i32* %188, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %191 = call i32 @intel_clock(%struct.drm_device* %190, i32 48000, %struct.TYPE_3__* %11)
  br label %192

192:                                              ; preds = %189, %164
  br label %193

193:                                              ; preds = %192, %126
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %193, %121
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @FP0(i32) #1

declare dso_local i32 @FP1(i32) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_device*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @intel_clock(%struct.drm_device*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
