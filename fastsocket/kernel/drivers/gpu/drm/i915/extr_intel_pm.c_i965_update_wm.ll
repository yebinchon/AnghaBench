; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i965_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i965_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@i965_update_wm.sr_latency_ns = internal constant i32 12000, align 4
@I915_FIFO_LINE_SIZE = common dso_local global i32 0, align 4
@I965_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"self-refresh entries: %d, wm: %d\0A\00", align 1
@i965_cursor_wm_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"self-refresh watermark: display plane %d cursor %d\0A\00", align 1
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Setting FIFO watermarks - A: 8, B: 8, C: 8, SR %d\0A\00", align 1
@DSPFW1 = common dso_local global i32 0, align 4
@DSPFW_SR_SHIFT = common dso_local global i32 0, align 4
@DSPFW2 = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i965_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 16, i32* %6, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call %struct.drm_crtc* @single_enabled_crtc(%struct.drm_device* %16)
  store %struct.drm_crtc* %17, %struct.drm_crtc** %4, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %19 = icmp ne %struct.drm_crtc* %18, null
  br i1 %19, label %20, label %104

20:                                               ; preds = %1
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = udiv i64 12000, %44
  %46 = add i64 %45, 1000
  %47 = udiv i64 %46, 1000
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %50, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @I915_FIFO_LINE_SIZE, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @I965_FIFO_SIZE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 511
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i64, i64* %11, align 8
  %71 = udiv i64 12000, %70
  %72 = add i64 %71, 1000
  %73 = udiv i64 %72, 1000
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %73, %75
  %77 = mul i64 %76, 64
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i965_cursor_wm_info, i32 0, i32 3), align 4
  %81 = call i32 @DIV_ROUND_UP(i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i965_cursor_wm_info, i32 0, i32 0), align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i965_cursor_wm_info, i32 0, i32 1), align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i965_cursor_wm_info, i32 0, i32 2), align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %64
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i965_cursor_wm_info, i32 0, i32 2), align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %64
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %97 = call i64 @IS_CRESTLINE(%struct.drm_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @FW_BLC_SELF, align 4
  %101 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %102 = call i32 @I915_WRITE(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %92
  br label %117

104:                                              ; preds = %1
  %105 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %106 = call i64 @IS_CRESTLINE(%struct.drm_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i32, i32* @FW_BLC_SELF, align 4
  %110 = load i32, i32* @FW_BLC_SELF, align 4
  %111 = call i32 @I915_READ(i32 %110)
  %112 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = call i32 @I915_WRITE(i32 %109, i32 %114)
  br label %116

116:                                              ; preds = %108, %104
  br label %117

117:                                              ; preds = %116, %103
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @DSPFW1, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @DSPFW_SR_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %123, 524288
  %125 = or i32 %124, 2048
  %126 = or i32 %125, 8
  %127 = call i32 @I915_WRITE(i32 %120, i32 %126)
  %128 = load i32, i32* @DSPFW2, align 4
  %129 = call i32 @I915_WRITE(i32 %128, i32 2056)
  %130 = load i32, i32* @DSPFW3, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @DSPFW_CURSOR_SR_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = call i32 @I915_WRITE(i32 %130, i32 %133)
  ret void
}

declare dso_local %struct.drm_crtc* @single_enabled_crtc(%struct.drm_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i64 @IS_CRESTLINE(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
