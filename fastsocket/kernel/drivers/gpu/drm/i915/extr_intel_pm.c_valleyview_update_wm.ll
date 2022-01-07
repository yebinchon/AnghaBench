; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_valleyview_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@valleyview_update_wm.sr_latency_ns = internal constant i32 12000, align 4
@valleyview_wm_info = common dso_local global i32 0, align 4
@latency_ns = common dso_local global i32 0, align 4
@valleyview_cursor_wm_info = common dso_local global i32 0, align 4
@FW_BLC_SELF_VLV = common dso_local global i32 0, align 4
@FW_CSPWRDWNEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Setting FIFO watermarks - A: plane=%d, cursor=%d, B: plane=%d, cursor=%d, SR: plane=%d, cursor=%d\0A\00", align 1
@DSPFW1 = common dso_local global i32 0, align 4
@DSPFW_SR_SHIFT = common dso_local global i32 0, align 4
@DSPFW_CURSORB_SHIFT = common dso_local global i32 0, align 4
@DSPFW_PLANEB_SHIFT = common dso_local global i32 0, align 4
@DSPFW2 = common dso_local global i32 0, align 4
@DSPFW_CURSORA_MASK = common dso_local global i32 0, align 4
@DSPFW_CURSORA_SHIFT = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_MASK = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @valleyview_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @valleyview_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call i32 @vlv_update_drain_latency(%struct.drm_device* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = load i32, i32* @latency_ns, align 4
  %20 = load i32, i32* @latency_ns, align 4
  %21 = call i64 @g4x_compute_wm0(%struct.drm_device* %18, i32 0, i32* @valleyview_wm_info, i32 %19, i32* @valleyview_cursor_wm_info, i32 %20, i32* %4, i32* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %12, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = load i32, i32* @latency_ns, align 4
  %29 = load i32, i32* @latency_ns, align 4
  %30 = call i64 @g4x_compute_wm0(%struct.drm_device* %27, i32 1, i32* @valleyview_wm_info, i32 %28, i32* @valleyview_cursor_wm_info, i32 %29, i32* %5, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, 2
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @single_plane_enabled(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @ffs(i32 %41)
  %43 = sub nsw i64 %42, 1
  %44 = call i64 @g4x_compute_srwm(%struct.drm_device* %40, i64 %43, i32 12000, i32* @valleyview_wm_info, i32* @valleyview_cursor_wm_info, i32* %8, i32* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @ffs(i32 %48)
  %50 = sub nsw i64 %49, 1
  %51 = call i64 @g4x_compute_srwm(%struct.drm_device* %47, i64 %50, i32 24000, i32* @valleyview_wm_info, i32* @valleyview_cursor_wm_info, i32* %10, i32* %9)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %55 = load i32, i32* @FW_CSPWRDWNEN, align 4
  %56 = call i32 @I915_WRITE(i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %46, %39, %35
  %58 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %59 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %60 = call i32 @I915_READ(i32 %59)
  %61 = load i32, i32* @FW_CSPWRDWNEN, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @I915_WRITE(i32 %58, i32 %63)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %57, %53
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @DSPFW1, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DSPFW_SR_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @DSPFW_CURSORB_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @DSPFW_PLANEB_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %80, %83
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @I915_WRITE(i32 %73, i32 %86)
  %88 = load i32, i32* @DSPFW2, align 4
  %89 = load i32, i32* @DSPFW2, align 4
  %90 = call i32 @I915_READ(i32 %89)
  %91 = load i32, i32* @DSPFW_CURSORA_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @DSPFW_CURSORA_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = call i32 @I915_WRITE(i32 %88, i32 %97)
  %99 = load i32, i32* @DSPFW3, align 4
  %100 = load i32, i32* @DSPFW3, align 4
  %101 = call i32 @I915_READ(i32 %100)
  %102 = load i32, i32* @DSPFW_CURSOR_SR_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @DSPFW_CURSOR_SR_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = or i32 %104, %107
  %109 = call i32 @I915_WRITE(i32 %99, i32 %108)
  ret void
}

declare dso_local i32 @vlv_update_drain_latency(%struct.drm_device*) #1

declare dso_local i64 @g4x_compute_wm0(%struct.drm_device*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @single_plane_enabled(i32) #1

declare dso_local i64 @g4x_compute_srwm(%struct.drm_device*, i64, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
