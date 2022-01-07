; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@ironlake_display_wm_info = common dso_local global i32 0, align 4
@ILK_LP0_PLANE_LATENCY = common dso_local global i32 0, align 4
@ironlake_cursor_wm_info = common dso_local global i32 0, align 4
@ILK_LP0_CURSOR_LATENCY = common dso_local global i32 0, align 4
@WM0_PIPEA_ILK = common dso_local global i32 0, align 4
@WM0_PIPE_PLANE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"FIFO watermarks For pipe A - plane %d, cursor: %d\0A\00", align 1
@WM0_PIPEB_ILK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"FIFO watermarks For pipe B - plane %d, cursor: %d\0A\00", align 1
@WM3_LP_ILK = common dso_local global i32 0, align 4
@WM2_LP_ILK = common dso_local global i32 0, align 4
@WM1_LP_ILK = common dso_local global i32 0, align 4
@ironlake_display_srwm_info = common dso_local global i32 0, align 4
@ironlake_cursor_srwm_info = common dso_local global i32 0, align 4
@WM1_LP_SR_EN = common dso_local global i32 0, align 4
@WM1_LP_LATENCY_SHIFT = common dso_local global i32 0, align 4
@WM1_LP_FBC_SHIFT = common dso_local global i32 0, align 4
@WM1_LP_SR_SHIFT = common dso_local global i32 0, align 4
@WM2_LP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = load i32, i32* @ILK_LP0_PLANE_LATENCY, align 4
  %13 = load i32, i32* @ILK_LP0_CURSOR_LATENCY, align 4
  %14 = call i64 @g4x_compute_wm0(%struct.drm_device* %11, i32 0, i32* @ironlake_display_wm_info, i32 %12, i32* @ironlake_cursor_wm_info, i32 %13, i32* %5, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @WM0_PIPEA_ILK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @I915_WRITE(i32 %17, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = load i32, i32* @ILK_LP0_PLANE_LATENCY, align 4
  %32 = load i32, i32* @ILK_LP0_CURSOR_LATENCY, align 4
  %33 = call i64 @g4x_compute_wm0(%struct.drm_device* %30, i32 1, i32* @ironlake_display_wm_info, i32 %31, i32* @ironlake_cursor_wm_info, i32 %32, i32* %5, i32* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i32, i32* @WM0_PIPEB_ILK, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @I915_WRITE(i32 %36, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 2
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %35, %29
  %49 = load i32, i32* @WM3_LP_ILK, align 4
  %50 = call i32 @I915_WRITE(i32 %49, i32 0)
  %51 = load i32, i32* @WM2_LP_ILK, align 4
  %52 = call i32 @I915_WRITE(i32 %51, i32 0)
  %53 = load i32, i32* @WM1_LP_ILK, align 4
  %54 = call i32 @I915_WRITE(i32 %53, i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @single_plane_enabled(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %113

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ffs(i32 %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (...) @ILK_READ_WM1_LATENCY()
  %66 = mul nsw i32 %65, 500
  %67 = call i32 @ironlake_compute_srwm(%struct.drm_device* %63, i32 1, i32 %64, i32 %66, i32* @ironlake_display_srwm_info, i32* @ironlake_cursor_srwm_info, i32* %4, i32* %5, i32* %6)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %113

70:                                               ; preds = %59
  %71 = load i32, i32* @WM1_LP_ILK, align 4
  %72 = load i32, i32* @WM1_LP_SR_EN, align 4
  %73 = call i32 (...) @ILK_READ_WM1_LATENCY()
  %74 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %80, %83
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @I915_WRITE(i32 %71, i32 %86)
  %88 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (...) @ILK_READ_WM2_LATENCY()
  %91 = mul nsw i32 %90, 500
  %92 = call i32 @ironlake_compute_srwm(%struct.drm_device* %88, i32 2, i32 %89, i32 %91, i32* @ironlake_display_srwm_info, i32* @ironlake_cursor_srwm_info, i32* %4, i32* %5, i32* %6)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %70
  br label %113

95:                                               ; preds = %70
  %96 = load i32, i32* @WM2_LP_ILK, align 4
  %97 = load i32, i32* @WM2_LP_EN, align 4
  %98 = call i32 (...) @ILK_READ_WM2_LATENCY()
  %99 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %101, %104
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %105, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @I915_WRITE(i32 %96, i32 %111)
  br label %113

113:                                              ; preds = %95, %94, %69, %58
  ret void
}

declare dso_local i64 @g4x_compute_wm0(%struct.drm_device*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @single_plane_enabled(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ironlake_compute_srwm(%struct.drm_device*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ILK_READ_WM1_LATENCY(...) #1

declare dso_local i32 @ILK_READ_WM2_LATENCY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
