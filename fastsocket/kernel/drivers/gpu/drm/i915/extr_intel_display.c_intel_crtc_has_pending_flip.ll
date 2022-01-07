; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_has_pending_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_has_pending_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @intel_crtc_has_pending_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crtc_has_pending_flip(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %6, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = call i64 @i915_reset_in_progress(%struct.TYPE_2__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %47

31:                                               ; preds = %21
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %37 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %36)
  %38 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %31, %30
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @i915_reset_in_progress(%struct.TYPE_2__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
