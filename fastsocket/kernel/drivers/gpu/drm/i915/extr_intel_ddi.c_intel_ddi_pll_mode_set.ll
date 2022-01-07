; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_pll_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_pll_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_ddi_plls }
%struct.intel_ddi_plls = type { i64, i64, i64 }
%struct.intel_crtc = type { i32, i32 }
%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.intel_dp = type { i32 }

@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@PORT_CLK_SEL_LCPLL_810 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_LCPLL_1350 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_LCPLL_2700 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Link bandwidth %d unsupported\0A\00", align 1
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Using WRPLL 1 on pipe %c\0A\00", align 1
@WRPLL_CTL1 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_WRPLL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Using WRPLL 2 on pipe %c\0A\00", align 1
@WRPLL_CTL2 = common dso_local global i32 0, align 4
@PORT_CLK_SEL_WRPLL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"No WRPLLs available!\0A\00", align 1
@WRPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"WRPLL already enabled\0A\00", align 1
@WRPLL_PLL_SELECT_LCPLL_2700 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Using SPLL on pipe %c\0A\00", align 1
@SPLL_CTL = common dso_local global i32 0, align 4
@PORT_CLK_SEL_SPLL = common dso_local global i32 0, align 4
@SPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"SPLL already enabled\0A\00", align 1
@SPLL_PLL_FREQ_1350MHz = common dso_local global i32 0, align 4
@SPLL_PLL_SSC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Invalid DDI encoder type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddi_pll_mode_set(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_ddi_plls*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.intel_dp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %6, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %22 = call %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc* %21)
  store %struct.intel_encoder* %22, %struct.intel_encoder** %7, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 1
  store %struct.drm_encoder* %24, %struct.drm_encoder** %8, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %28, align 8
  store %struct.drm_i915_private* %29, %struct.drm_i915_private** %9, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  store %struct.intel_ddi_plls* %31, %struct.intel_ddi_plls** %10, align 8
  %32 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %33 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %36 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %39 = call i32 @intel_ddi_put_crtc_pll(%struct.drm_crtc* %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43, %2
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %49 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %48)
  store %struct.intel_dp* %49, %struct.intel_dp** %15, align 8
  %50 = load %struct.intel_dp*, %struct.intel_dp** %15, align 8
  %51 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %65 [
    i32 130, label %53
    i32 129, label %57
    i32 128, label %61
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* @PORT_CLK_SEL_LCPLL_810, align 4
  %55 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %56 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %70

57:                                               ; preds = %47
  %58 = load i32, i32* @PORT_CLK_SEL_LCPLL_1350, align 4
  %59 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %60 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %70

61:                                               ; preds = %47
  %62 = load i32, i32* @PORT_CLK_SEL_LCPLL_2700, align 4
  %63 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %64 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %70

65:                                               ; preds = %47
  %66 = load %struct.intel_dp*, %struct.intel_dp** %15, align 8
  %67 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %3, align 4
  br label %174

70:                                               ; preds = %61, %57, %53
  store i32 1, i32* %3, align 4
  br label %174

71:                                               ; preds = %43
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %132

75:                                               ; preds = %71
  %76 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %10, align 8
  %77 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @pipe_name(i32 %81)
  %83 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %10, align 8
  %85 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load i32, i32* @WRPLL_CTL1, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* @PORT_CLK_SEL_WRPLL1, align 4
  %90 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %91 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %112

92:                                               ; preds = %75
  %93 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %10, align 8
  %94 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @pipe_name(i32 %98)
  %100 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %10, align 8
  %102 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* @WRPLL_CTL2, align 4
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @PORT_CLK_SEL_WRPLL2, align 4
  %107 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %108 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %111

109:                                              ; preds = %92
  %110 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %174

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %80
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @I915_READ(i32 %113)
  %115 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %116 = and i32 %114, %115
  %117 = call i32 (i32, i8*, ...) @WARN(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @intel_ddi_calculate_wrpll(i32 %118, i32* %16, i32* %17, i32* %18)
  %120 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %121 = load i32, i32* @WRPLL_PLL_SELECT_LCPLL_2700, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @WRPLL_DIVIDER_REFERENCE(i32 %123)
  %125 = or i32 %122, %124
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @WRPLL_DIVIDER_FEEDBACK(i32 %126)
  %128 = or i32 %125, %127
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @WRPLL_DIVIDER_POST(i32 %129)
  %131 = or i32 %128, %130
  store i32 %131, i32* %14, align 4
  br label %168

132:                                              ; preds = %71
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %10, align 8
  %138 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @pipe_name(i32 %142)
  %144 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %10, align 8
  %146 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load i32, i32* @SPLL_CTL, align 4
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* @PORT_CLK_SEL_SPLL, align 4
  %151 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %152 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %141, %136
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @I915_READ(i32 %154)
  %156 = load i32, i32* @SPLL_PLL_ENABLE, align 4
  %157 = and i32 %155, %156
  %158 = call i32 (i32, i8*, ...) @WARN(i32 %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* @SPLL_PLL_ENABLE, align 4
  %160 = load i32, i32* @SPLL_PLL_FREQ_1350MHz, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @SPLL_PLL_SSC, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %14, align 4
  br label %167

164:                                              ; preds = %132
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  store i32 0, i32* %3, align 4
  br label %174

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %112
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @I915_WRITE(i32 %170, i32 %171)
  %173 = call i32 @udelay(i32 20)
  store i32 1, i32* %3, align 4
  br label %174

174:                                              ; preds = %169, %164, %109, %70, %65
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc*) #1

declare dso_local i32 @intel_ddi_put_crtc_pll(%struct.drm_crtc*) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_ddi_calculate_wrpll(i32, i32*, i32*, i32*) #1

declare dso_local i32 @WRPLL_DIVIDER_REFERENCE(i32) #1

declare dso_local i32 @WRPLL_DIVIDER_FEEDBACK(i32) #1

declare dso_local i32 @WRPLL_DIVIDER_POST(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
