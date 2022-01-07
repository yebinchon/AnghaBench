; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_haswell_set_pipeconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_haswell_set_pipeconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32 }

@PIPECONF_DITHER_EN = common dso_local global i32 0, align 4
@PIPECONF_DITHER_TYPE_MASK = common dso_local global i32 0, align 4
@PIPECONF_DITHER_TYPE_SP = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK_HSW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@PIPECONF_INTERLACED_ILK = common dso_local global i32 0, align 4
@PIPECONF_PROGRESSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, i32)* @haswell_set_pipeconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_set_pipeconf(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %8, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @PIPECONF(i32 %21)
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @PIPECONF_DITHER_EN, align 4
  %25 = load i32, i32* @PIPECONF_DITHER_TYPE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @PIPECONF_DITHER_EN, align 4
  %34 = load i32, i32* @PIPECONF_DITHER_TYPE_SP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* @PIPECONF_INTERLACE_MASK_HSW, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @PIPECONF_INTERLACED_ILK, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %57

53:                                               ; preds = %38
  %54 = load i32, i32* @PIPECONF_PROGRESSIVE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @PIPECONF(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @I915_WRITE(i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @PIPECONF(i32 %62)
  %64 = call i32 @POSTING_READ(i32 %63)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
