; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pipe_set_base_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pipe_set_base_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.drm_crtc.0*, %struct.drm_framebuffer*, i32, i32)*, i32 (%struct.drm_device.1*)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_framebuffer = type opaque
%struct.drm_device.1 = type opaque
%struct.drm_framebuffer.2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer.2*, i32, i32, i32)* @intel_pipe_set_base_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pipe_set_base_atomic(%struct.drm_crtc* %0, %struct.drm_framebuffer.2* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer.2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_framebuffer.2* %1, %struct.drm_framebuffer.2** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %11, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %12, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.drm_device.1*)*, i32 (%struct.drm_device.1*)** %21, align 8
  %23 = icmp ne i32 (%struct.drm_device.1*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.drm_device.1*)*, i32 (%struct.drm_device.1*)** %27, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %30 = bitcast %struct.drm_device* %29 to %struct.drm_device.1*
  %31 = call i32 %28(%struct.drm_device.1* %30)
  br label %32

32:                                               ; preds = %24, %5
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %34 = call i32 @intel_increase_pllclock(%struct.drm_crtc* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.drm_crtc.0*, %struct.drm_framebuffer*, i32, i32)*, i32 (%struct.drm_crtc.0*, %struct.drm_framebuffer*, i32, i32)** %37, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %40 = bitcast %struct.drm_crtc* %39 to %struct.drm_crtc.0*
  %41 = load %struct.drm_framebuffer.2*, %struct.drm_framebuffer.2** %7, align 8
  %42 = bitcast %struct.drm_framebuffer.2* %41 to %struct.drm_framebuffer*
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 %38(%struct.drm_crtc.0* %40, %struct.drm_framebuffer* %42, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @intel_increase_pllclock(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
