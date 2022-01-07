; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_hsw_fdi_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_hsw_fdi_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32 }

@_FDI_RXA_MISC = common dso_local global i32 0, align 4
@FDI_RX_TP1_TO_TP2_48 = common dso_local global i32 0, align 4
@FDI_RX_FDI_DELAY_90 = common dso_local global i32 0, align 4
@FDI_RX_ENHANCE_FRAME_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_PLL_ENABLE = common dso_local global i32 0, align 4
@_FDI_RXA_CTL = common dso_local global i32 0, align 4
@FDI_PCDCLK = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@hsw_ddi_buf_ctl_values = common dso_local global i32* null, align 8
@DP_TP_CTL_FDI_AUTOTRAIN = common dso_local global i32 0, align 4
@DP_TP_CTL_ENHANCED_FRAME_ENABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT1 = common dso_local global i32 0, align 4
@DP_TP_CTL_ENABLE = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@_FDI_RXA_TUSIZE1 = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_AUTO = common dso_local global i32 0, align 4
@FDI_RX_PWRDN_LANE1_MASK = common dso_local global i32 0, align 4
@FDI_RX_PWRDN_LANE0_MASK = common dso_local global i32 0, align 4
@DP_TP_STATUS_AUTOTRAIN_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FDI link training done on step %d\0A\00", align 1
@DP_TP_CTL_LINK_TRAIN_NORMAL = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"FDI link training failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsw_fdi_link_train(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %5, align 8
  %17 = load i32, i32* @_FDI_RXA_MISC, align 4
  %18 = call i32 @FDI_RX_PWRDN_LANE1_VAL(i32 2)
  %19 = call i32 @FDI_RX_PWRDN_LANE0_VAL(i32 2)
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FDI_RX_TP1_TO_TP2_48, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FDI_RX_FDI_DELAY_90, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @I915_WRITE(i32 %17, i32 %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FDI_RX_ENHANCE_FRAME_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FDI_RX_PLL_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 %36, 19
  %38 = or i32 %32, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @_FDI_RXA_CTL, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @I915_WRITE(i32 %39, i32 %40)
  %42 = load i32, i32* @_FDI_RXA_CTL, align 4
  %43 = call i32 @POSTING_READ(i32 %42)
  %44 = call i32 @udelay(i32 220)
  %45 = load i32, i32* @FDI_PCDCLK, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @_FDI_RXA_CTL, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @I915_WRITE(i32 %48, i32 %49)
  %51 = load i32, i32* @PORT_E, align 4
  %52 = call i32 @PORT_CLK_SEL(i32 %51)
  %53 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %54 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @I915_WRITE(i32 %52, i32 %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %207, %1
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** @hsw_ddi_buf_ctl_values, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = mul nsw i32 %60, 2
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %210

63:                                               ; preds = %57
  %64 = load i32, i32* @PORT_E, align 4
  %65 = call i32 @DP_TP_CTL(i32 %64)
  %66 = load i32, i32* @DP_TP_CTL_FDI_AUTOTRAIN, align 4
  %67 = load i32, i32* @DP_TP_CTL_ENHANCED_FRAME_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @I915_WRITE(i32 %65, i32 %72)
  %74 = load i32, i32* @PORT_E, align 4
  %75 = call i32 @DDI_BUF_CTL(i32 %74)
  %76 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %77 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %78 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 %80, 1
  %82 = or i32 %76, %81
  %83 = load i32*, i32** @hsw_ddi_buf_ctl_values, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %82, %88
  %90 = call i32 @I915_WRITE(i32 %75, i32 %89)
  %91 = load i32, i32* @PORT_E, align 4
  %92 = call i32 @DDI_BUF_CTL(i32 %91)
  %93 = call i32 @POSTING_READ(i32 %92)
  %94 = call i32 @udelay(i32 600)
  %95 = load i32, i32* @_FDI_RXA_TUSIZE1, align 4
  %96 = call i32 @TU_SIZE(i32 64)
  %97 = call i32 @I915_WRITE(i32 %95, i32 %96)
  %98 = load i32, i32* @FDI_RX_ENABLE, align 4
  %99 = load i32, i32* @FDI_LINK_TRAIN_AUTO, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* @_FDI_RXA_CTL, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @I915_WRITE(i32 %103, i32 %104)
  %106 = load i32, i32* @_FDI_RXA_CTL, align 4
  %107 = call i32 @POSTING_READ(i32 %106)
  %108 = call i32 @udelay(i32 30)
  %109 = load i32, i32* @_FDI_RXA_MISC, align 4
  %110 = call i32 @I915_READ(i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @FDI_RX_PWRDN_LANE1_MASK, align 4
  %112 = load i32, i32* @FDI_RX_PWRDN_LANE0_MASK, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @_FDI_RXA_MISC, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @I915_WRITE(i32 %117, i32 %118)
  %120 = load i32, i32* @_FDI_RXA_MISC, align 4
  %121 = call i32 @POSTING_READ(i32 %120)
  %122 = call i32 @udelay(i32 5)
  %123 = load i32, i32* @PORT_E, align 4
  %124 = call i32 @DP_TP_STATUS(i32 %123)
  %125 = call i32 @I915_READ(i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @DP_TP_STATUS_AUTOTRAIN_DONE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %63
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @PORT_E, align 4
  %134 = call i32 @DP_TP_CTL(i32 %133)
  %135 = load i32, i32* @DP_TP_CTL_FDI_AUTOTRAIN, align 4
  %136 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_NORMAL, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @DP_TP_CTL_ENHANCED_FRAME_ENABLE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @I915_WRITE(i32 %134, i32 %141)
  br label %212

143:                                              ; preds = %63
  %144 = load i32, i32* @PORT_E, align 4
  %145 = call i32 @DDI_BUF_CTL(i32 %144)
  %146 = call i32 @I915_READ(i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* @PORT_E, align 4
  %152 = call i32 @DDI_BUF_CTL(i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @I915_WRITE(i32 %152, i32 %153)
  %155 = load i32, i32* @PORT_E, align 4
  %156 = call i32 @DDI_BUF_CTL(i32 %155)
  %157 = call i32 @POSTING_READ(i32 %156)
  %158 = load i32, i32* @PORT_E, align 4
  %159 = call i32 @DP_TP_CTL(i32 %158)
  %160 = call i32 @I915_READ(i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %162 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* @PORT_E, align 4
  %171 = call i32 @DP_TP_CTL(i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @I915_WRITE(i32 %171, i32 %172)
  %174 = load i32, i32* @PORT_E, align 4
  %175 = call i32 @DP_TP_CTL(i32 %174)
  %176 = call i32 @POSTING_READ(i32 %175)
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %178 = load i32, i32* @PORT_E, align 4
  %179 = call i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private* %177, i32 %178)
  %180 = load i32, i32* @FDI_RX_ENABLE, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* @_FDI_RXA_CTL, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @I915_WRITE(i32 %184, i32 %185)
  %187 = load i32, i32* @_FDI_RXA_CTL, align 4
  %188 = call i32 @POSTING_READ(i32 %187)
  %189 = load i32, i32* @_FDI_RXA_MISC, align 4
  %190 = call i32 @I915_READ(i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* @FDI_RX_PWRDN_LANE1_MASK, align 4
  %192 = load i32, i32* @FDI_RX_PWRDN_LANE0_MASK, align 4
  %193 = or i32 %191, %192
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %6, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %6, align 4
  %197 = call i32 @FDI_RX_PWRDN_LANE1_VAL(i32 2)
  %198 = call i32 @FDI_RX_PWRDN_LANE0_VAL(i32 2)
  %199 = or i32 %197, %198
  %200 = load i32, i32* %6, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* @_FDI_RXA_MISC, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @I915_WRITE(i32 %202, i32 %203)
  %205 = load i32, i32* @_FDI_RXA_MISC, align 4
  %206 = call i32 @POSTING_READ(i32 %205)
  br label %207

207:                                              ; preds = %143
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %57

210:                                              ; preds = %57
  %211 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %130
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FDI_RX_PWRDN_LANE1_VAL(i32) #1

declare dso_local i32 @FDI_RX_PWRDN_LANE0_VAL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PORT_CLK_SEL(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @TU_SIZE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_STATUS(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
