; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_wait_for_pending_flips.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_wait_for_pending_flips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32*, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @intel_crtc_wait_for_pending_flips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_wait_for_pending_flips(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 1
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = call i32 @waitqueue_active(i32* %18)
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %25 = call i32 @intel_crtc_has_pending_flip(%struct.drm_crtc* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event(i32 %23, i32 %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @intel_finish_fb(i32* %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @intel_crtc_has_pending_flip(%struct.drm_crtc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_finish_fb(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
