; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@g4x_update_wm.sr_latency_ns = internal constant i32 12000, align 4
@g4x_wm_info = common dso_local global i32 0, align 4
@latency_ns = common dso_local global i32 0, align 4
@g4x_cursor_wm_info = common dso_local global i32 0, align 4
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Setting FIFO watermarks - A: plane=%d, cursor=%d, B: plane=%d, cursor=%d, SR: plane=%d, cursor=%d\0A\00", align 1
@DSPFW1 = common dso_local global i32 0, align 4
@DSPFW_SR_SHIFT = common dso_local global i32 0, align 4
@DSPFW_CURSORB_SHIFT = common dso_local global i32 0, align 4
@DSPFW_PLANEB_SHIFT = common dso_local global i32 0, align 4
@DSPFW2 = common dso_local global i32 0, align 4
@DSPFW_CURSORA_MASK = common dso_local global i32 0, align 4
@DSPFW_CURSORA_SHIFT = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@DSPFW_HPLL_SR_EN = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_MASK = common dso_local global i32 0, align 4
@DSPFW_CURSOR_SR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @g4x_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = load i32, i32* @latency_ns, align 4
  %16 = load i32, i32* @latency_ns, align 4
  %17 = call i64 @g4x_compute_wm0(%struct.drm_device* %14, i32 0, i32* @g4x_wm_info, i32 %15, i32* @g4x_cursor_wm_info, i32 %16, i32* %4, i32* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = load i32, i32* @latency_ns, align 4
  %25 = load i32, i32* @latency_ns, align 4
  %26 = call i64 @g4x_compute_wm0(%struct.drm_device* %23, i32 1, i32* @g4x_wm_info, i32 %24, i32* @g4x_cursor_wm_info, i32 %25, i32* %5, i32* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, 2
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @single_plane_enabled(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @ffs(i32 %37)
  %39 = sub nsw i64 %38, 1
  %40 = call i64 @g4x_compute_srwm(%struct.drm_device* %36, i64 %39, i32 12000, i32* @g4x_wm_info, i32* @g4x_cursor_wm_info, i32* %8, i32* %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @FW_BLC_SELF, align 4
  %44 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %45 = call i32 @I915_WRITE(i32 %43, i32 %44)
  br label %54

46:                                               ; preds = %35, %31
  %47 = load i32, i32* @FW_BLC_SELF, align 4
  %48 = load i32, i32* @FW_BLC_SELF, align 4
  %49 = call i32 @I915_READ(i32 %48)
  %50 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @I915_WRITE(i32 %47, i32 %52)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @DSPFW1, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @DSPFW_SR_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DSPFW_CURSORB_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @DSPFW_PLANEB_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @I915_WRITE(i32 %62, i32 %75)
  %77 = load i32, i32* @DSPFW2, align 4
  %78 = load i32, i32* @DSPFW2, align 4
  %79 = call i32 @I915_READ(i32 %78)
  %80 = load i32, i32* @DSPFW_CURSORA_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @DSPFW_CURSORA_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = call i32 @I915_WRITE(i32 %77, i32 %86)
  %88 = load i32, i32* @DSPFW3, align 4
  %89 = load i32, i32* @DSPFW3, align 4
  %90 = call i32 @I915_READ(i32 %89)
  %91 = load i32, i32* @DSPFW_HPLL_SR_EN, align 4
  %92 = load i32, i32* @DSPFW_CURSOR_SR_MASK, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %90, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @DSPFW_CURSOR_SR_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %95, %98
  %100 = call i32 @I915_WRITE(i32 %88, i32 %99)
  ret void
}

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
