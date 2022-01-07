; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_get_pipe_from_crtc_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_get_pipe_from_crtc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_get_pipe_from_crtc_id = type { i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.intel_crtc = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no such CRTC id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_get_pipe_from_crtc_id(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_get_pipe_from_crtc_id*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_get_pipe_from_crtc_id*
  store %struct.drm_i915_get_pipe_from_crtc_id* %12, %struct.drm_i915_get_pipe_from_crtc_id** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_MODESET, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_i915_get_pipe_from_crtc_id*, %struct.drm_i915_get_pipe_from_crtc_id** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_get_pipe_from_crtc_id, %struct.drm_i915_get_pipe_from_crtc_id* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %26 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %21, i32 %24, i32 %25)
  store %struct.drm_mode_object* %26, %struct.drm_mode_object** %9, align 8
  %27 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %28 = icmp ne %struct.drm_mode_object* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %35 = call i32 @obj_to_crtc(%struct.drm_mode_object* %34)
  %36 = call %struct.intel_crtc* @to_intel_crtc(i32 %35)
  store %struct.intel_crtc* %36, %struct.intel_crtc** %10, align 8
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %38 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_i915_get_pipe_from_crtc_id*, %struct.drm_i915_get_pipe_from_crtc_id** %8, align 8
  %41 = getelementptr inbounds %struct.drm_i915_get_pipe_from_crtc_id, %struct.drm_i915_get_pipe_from_crtc_id* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %29, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @obj_to_crtc(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
