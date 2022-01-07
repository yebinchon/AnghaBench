; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_update_sprite_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_update_sprite_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@WM0_PIPEA_ILK = common dso_local global i32 0, align 4
@WM0_PIPEB_ILK = common dso_local global i32 0, align 4
@WM0_PIPEC_IVB = common dso_local global i32 0, align 4
@sandybridge_display_wm_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to compute sprite wm for pipe %d\0A\00", align 1
@WM0_PIPE_SPRITE_MASK = common dso_local global i32 0, align 4
@WM0_PIPE_SPRITE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"sprite watermarks For pipe %d - %d\0A\00", align 1
@sandybridge_display_srwm_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to compute sprite lp1 wm on pipe %d\0A\00", align 1
@WM1S_LP_ILK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to compute sprite lp2 wm on pipe %d\0A\00", align 1
@WM2S_LP_IVB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to compute sprite lp3 wm on pipe %d\0A\00", align 1
@WM3S_LP_IVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32)* @sandybridge_update_sprite_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sandybridge_update_sprite_wm(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %9, align 8
  %18 = call i32 (...) @SNB_READ_WM0_LATENCY()
  %19 = mul nsw i32 %18, 100
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %27 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @WM0_PIPEA_ILK, align 4
  store i32 %22, i32* %13, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @WM0_PIPEB_ILK, align 4
  store i32 %24, i32* %13, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @WM0_PIPEC_IVB, align 4
  store i32 %26, i32* %13, align 4
  br label %28

27:                                               ; preds = %4
  br label %110

28:                                               ; preds = %25, %23, %21
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @sandybridge_compute_sprite_wm(%struct.drm_device* %29, i32 %30, i32 %31, i32 %32, i32* @sandybridge_display_wm_info, i32 %33, i32* %12)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %110

40:                                               ; preds = %28
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @I915_READ(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @WM0_PIPE_SPRITE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @WM0_PIPE_SPRITE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = call i32 @I915_WRITE(i32 %47, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (...) @SNB_READ_WM1_LATENCY()
  %62 = mul nsw i32 %61, 500
  %63 = call i32 @sandybridge_compute_sprite_srwm(%struct.drm_device* %57, i32 %58, i32 %59, i32 %60, i32* @sandybridge_display_srwm_info, i32 %62, i32* %12)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %40
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %110

69:                                               ; preds = %40
  %70 = load i32, i32* @WM1S_LP_ILK, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @I915_WRITE(i32 %70, i32 %71)
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = call i32 @IS_IVYBRIDGE(%struct.drm_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %110

77:                                               ; preds = %69
  %78 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (...) @SNB_READ_WM2_LATENCY()
  %83 = mul nsw i32 %82, 500
  %84 = call i32 @sandybridge_compute_sprite_srwm(%struct.drm_device* %78, i32 %79, i32 %80, i32 %81, i32* @sandybridge_display_srwm_info, i32 %83, i32* %12)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %110

90:                                               ; preds = %77
  %91 = load i32, i32* @WM2S_LP_IVB, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @I915_WRITE(i32 %91, i32 %92)
  %94 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (...) @SNB_READ_WM3_LATENCY()
  %99 = mul nsw i32 %98, 500
  %100 = call i32 @sandybridge_compute_sprite_srwm(%struct.drm_device* %94, i32 %95, i32 %96, i32 %97, i32* @sandybridge_display_srwm_info, i32 %99, i32* %12)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %110

106:                                              ; preds = %90
  %107 = load i32, i32* @WM3S_LP_IVB, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @I915_WRITE(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %103, %87, %76, %66, %37, %27
  ret void
}

declare dso_local i32 @SNB_READ_WM0_LATENCY(...) #1

declare dso_local i32 @sandybridge_compute_sprite_wm(%struct.drm_device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @sandybridge_compute_sprite_srwm(%struct.drm_device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @SNB_READ_WM1_LATENCY(...) #1

declare dso_local i32 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i32 @SNB_READ_WM2_LATENCY(...) #1

declare dso_local i32 @SNB_READ_WM3_LATENCY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
