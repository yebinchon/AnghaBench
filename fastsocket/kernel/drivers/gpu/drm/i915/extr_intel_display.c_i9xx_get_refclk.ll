; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i9xx_get_refclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i9xx_get_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using SSC reference clock of %d MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32)* @i9xx_get_refclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_get_refclk(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = call i32 @vlv_get_refclk(%struct.drm_crtc* %18)
  store i32 %19, i32* %7, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %22 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %23 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %37, 1000
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %47

40:                                               ; preds = %29, %25, %20
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = call i32 @IS_GEN2(%struct.drm_device* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 96000, i32* %7, align 4
  br label %46

45:                                               ; preds = %40
  store i32 48000, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %17
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @vlv_get_refclk(%struct.drm_crtc*) #1

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @IS_GEN2(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
