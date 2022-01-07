; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i830_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i830_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.drm_device.0*, i32)* }
%struct.drm_device.0 = type opaque
%struct.drm_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@i830_wm_info = common dso_local global i32 0, align 4
@latency_ns = common dso_local global i32 0, align 4
@FW_BLC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Setting FIFO watermarks - A: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i830_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i830_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call %struct.drm_crtc* @single_enabled_crtc(%struct.drm_device* %10)
  store %struct.drm_crtc* %11, %struct.drm_crtc** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = icmp eq %struct.drm_crtc* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.drm_device.0*, i32)*, i32 (%struct.drm_device.0*, i32)** %22, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = bitcast %struct.drm_device* %24 to %struct.drm_device.0*
  %26 = call i32 %23(%struct.drm_device.0* %25, i32 0)
  %27 = load i32, i32* @latency_ns, align 4
  %28 = call i32 @intel_calculate_wm(i32 %19, i32* @i830_wm_info, i32 %26, i32 4, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @FW_BLC, align 4
  %30 = call i32 @I915_READ(i32 %29)
  %31 = and i32 %30, -4096
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 768, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @FW_BLC, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.drm_crtc* @single_enabled_crtc(%struct.drm_device*) #1

declare dso_local i32 @intel_calculate_wm(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
