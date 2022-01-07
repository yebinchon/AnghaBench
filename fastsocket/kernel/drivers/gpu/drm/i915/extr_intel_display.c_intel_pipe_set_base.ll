; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pipe_set_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pipe_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.drm_crtc.0*, %struct.drm_framebuffer.1*, i32, i32)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_framebuffer.1 = type opaque
%struct.drm_framebuffer = type { i32 }
%struct.intel_crtc = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"No FB bound\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"no plane for crtc: plane %d, num_pipes %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"pin & fence failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to update base address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*)* @intel_pipe_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pipe_set_base(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.drm_framebuffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.drm_framebuffer*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.drm_framebuffer* %3, %struct.drm_framebuffer** %9, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 3
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %10, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %11, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %22 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %21)
  store %struct.intel_crtc* %22, %struct.intel_crtc** %12, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %24 = icmp ne %struct.drm_framebuffer* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

27:                                               ; preds = %4
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %37 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %134

45:                                               ; preds = %27
  %46 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %51 = call %struct.TYPE_4__* @to_intel_framebuffer(%struct.drm_framebuffer* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %49, i32 %53, i32* null)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %134

63:                                               ; preds = %45
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %65 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %64, i32 0, i32 2
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %65, align 8
  %67 = icmp ne %struct.drm_framebuffer* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %70 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %69, i32 0, i32 2
  %71 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %70, align 8
  %72 = call i32 @intel_finish_fb(%struct.drm_framebuffer* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32 (%struct.drm_crtc.0*, %struct.drm_framebuffer.1*, i32, i32)*, i32 (%struct.drm_crtc.0*, %struct.drm_framebuffer.1*, i32, i32)** %76, align 8
  %78 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %79 = bitcast %struct.drm_crtc* %78 to %struct.drm_crtc.0*
  %80 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %81 = bitcast %struct.drm_framebuffer* %80 to %struct.drm_framebuffer.1*
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 %77(%struct.drm_crtc.0* %79, %struct.drm_framebuffer.1* %81, i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %73
  %88 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %89 = call %struct.TYPE_4__* @to_intel_framebuffer(%struct.drm_framebuffer* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @intel_unpin_fb_obj(i32 %91)
  %93 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %94 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %134

98:                                               ; preds = %73
  %99 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %100 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %99, i32 0, i32 2
  %101 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %100, align 8
  store %struct.drm_framebuffer* %101, %struct.drm_framebuffer** %13, align 8
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %104 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %103, i32 0, i32 2
  store %struct.drm_framebuffer* %102, %struct.drm_framebuffer** %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %107 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %110 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %112 = icmp ne %struct.drm_framebuffer* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %98
  %114 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %115 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %116 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @intel_wait_for_vblank(%struct.drm_device* %114, i32 %117)
  %119 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  %120 = call %struct.TYPE_4__* @to_intel_framebuffer(%struct.drm_framebuffer* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @intel_unpin_fb_obj(i32 %122)
  br label %124

124:                                              ; preds = %113, %98
  %125 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %126 = call i32 @intel_update_fbc(%struct.drm_device* %125)
  %127 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %128 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @intel_crtc_update_sarea_pos(%struct.drm_crtc* %130, i32 %131, i32 %132)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %124, %87, %57, %35, %25
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_finish_fb(%struct.drm_framebuffer*) #1

declare dso_local i32 @intel_unpin_fb_obj(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_update_fbc(%struct.drm_device*) #1

declare dso_local i32 @intel_crtc_update_sarea_pos(%struct.drm_crtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
