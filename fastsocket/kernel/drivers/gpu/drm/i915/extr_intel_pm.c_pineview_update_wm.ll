; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_pineview_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_pineview_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cxsr_latency = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unknown FSB/MEM found, disable CxSR\0A\00", align 1
@pineview_display_wm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DSPFW1 = common dso_local global i32 0, align 4
@DSPFW_SR_MASK = common dso_local global i64 0, align 8
@DSPFW_SR_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"DSPFW1 register is %x\0A\00", align 1
@pineview_cursor_wm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_MASK = common dso_local global i64 0, align 8
@DSPFW_CURSOR_SR_SHIFT = common dso_local global i64 0, align 8
@pineview_display_hplloff_wm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DSPFW_HPLL_SR_MASK = common dso_local global i64 0, align 8
@pineview_cursor_hplloff_wm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DSPFW_HPLL_CURSOR_MASK = common dso_local global i64 0, align 8
@DSPFW_HPLL_CURSOR_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"DSPFW3 register is %x\0A\00", align 1
@PINEVIEW_SELF_REFRESH_EN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Self-refresh is enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Self-refresh is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @pineview_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pineview_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.cxsr_latency*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i32 @IS_PINEVIEW_G(%struct.drm_device* %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cxsr_latency* @intel_get_cxsr_latency(i32 %14, i32 %17, i32 %20, i32 %23)
  store %struct.cxsr_latency* %24, %struct.cxsr_latency** %5, align 8
  %25 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %26 = icmp ne %struct.cxsr_latency* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @pineview_disable_cxsr(%struct.drm_device* %29)
  br label %148

31:                                               ; preds = %1
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call %struct.drm_crtc* @single_enabled_crtc(%struct.drm_device* %32)
  store %struct.drm_crtc* %33, %struct.drm_crtc** %4, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %35 = icmp ne %struct.drm_crtc* %34, null
  br i1 %35, label %36, label %144

36:                                               ; preds = %31
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 8
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pineview_display_wm, i32 0, i32 0), align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %51 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @intel_calculate_wm(i32 %47, %struct.TYPE_10__* @pineview_display_wm, i32 %48, i32 %49, i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* @DSPFW1, align 4
  %55 = call i64 @I915_READ(i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* @DSPFW_SR_MASK, align 8
  %57 = xor i64 %56, -1
  %58 = load i64, i64* %6, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @DSPFW_SR_SHIFT, align 8
  %62 = shl i64 %60, %61
  %63 = load i64, i64* %6, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i32, i32* @DSPFW1, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @I915_WRITE(i32 %65, i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pineview_display_wm, i32 0, i32 0), align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %74 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @intel_calculate_wm(i32 %70, %struct.TYPE_10__* @pineview_cursor_wm, i32 %71, i32 %72, i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i32, i32* @DSPFW3, align 4
  %78 = call i64 @I915_READ(i32 %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* @DSPFW_CURSOR_SR_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %6, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = and i64 %83, 63
  %85 = load i64, i64* @DSPFW_CURSOR_SR_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = load i64, i64* %6, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %6, align 8
  %89 = load i32, i32* @DSPFW3, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @I915_WRITE(i32 %89, i64 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pineview_display_hplloff_wm, i32 0, i32 0), align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %96 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @intel_calculate_wm(i32 %92, %struct.TYPE_10__* @pineview_display_hplloff_wm, i32 %93, i32 %94, i32 %97)
  store i64 %98, i64* %7, align 8
  %99 = load i32, i32* @DSPFW3, align 4
  %100 = call i64 @I915_READ(i32 %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* @DSPFW_HPLL_SR_MASK, align 8
  %102 = xor i64 %101, -1
  %103 = load i64, i64* %6, align 8
  %104 = and i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @DSPFW_HPLL_SR_MASK, align 8
  %107 = and i64 %105, %106
  %108 = load i64, i64* %6, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %6, align 8
  %110 = load i32, i32* @DSPFW3, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @I915_WRITE(i32 %110, i64 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pineview_display_hplloff_wm, i32 0, i32 0), align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  %117 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @intel_calculate_wm(i32 %113, %struct.TYPE_10__* @pineview_cursor_hplloff_wm, i32 %114, i32 %115, i32 %118)
  store i64 %119, i64* %7, align 8
  %120 = load i32, i32* @DSPFW3, align 4
  %121 = call i64 @I915_READ(i32 %120)
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* @DSPFW_HPLL_CURSOR_MASK, align 8
  %123 = xor i64 %122, -1
  %124 = load i64, i64* %6, align 8
  %125 = and i64 %124, %123
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %7, align 8
  %127 = and i64 %126, 63
  %128 = load i64, i64* @DSPFW_HPLL_CURSOR_SHIFT, align 8
  %129 = shl i64 %127, %128
  %130 = load i64, i64* %6, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %6, align 8
  %132 = load i32, i32* @DSPFW3, align 4
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @I915_WRITE(i32 %132, i64 %133)
  %135 = load i64, i64* %6, align 8
  %136 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* @DSPFW3, align 4
  %138 = load i32, i32* @DSPFW3, align 4
  %139 = call i64 @I915_READ(i32 %138)
  %140 = load i64, i64* @PINEVIEW_SELF_REFRESH_EN, align 8
  %141 = or i64 %139, %140
  %142 = call i32 @I915_WRITE(i32 %137, i64 %141)
  %143 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %148

144:                                              ; preds = %31
  %145 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %146 = call i32 @pineview_disable_cxsr(%struct.drm_device* %145)
  %147 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %148

148:                                              ; preds = %27, %144, %36
  ret void
}

declare dso_local %struct.cxsr_latency* @intel_get_cxsr_latency(i32, i32, i32, i32) #1

declare dso_local i32 @IS_PINEVIEW_G(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @pineview_disable_cxsr(%struct.drm_device*) #1

declare dso_local %struct.drm_crtc* @single_enabled_crtc(%struct.drm_device*) #1

declare dso_local i64 @intel_calculate_wm(i32, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
