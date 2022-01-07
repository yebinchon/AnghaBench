; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_enable_primary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_enable_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32 }

@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @intel_enable_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_primary(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %5, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DSPCNTR(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call i32 @intel_update_fbc(%struct.drm_device* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @I915_READ(i32 %30)
  %32 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @I915_WRITE(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @intel_update_fbc(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
