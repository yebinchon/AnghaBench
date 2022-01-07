; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_get_current_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_get_current_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_dvo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc = type { i32 }

@DVO_ENABLE = common dso_local global i32 0, align 4
@DVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_connector*)* @intel_dvo_get_current_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @intel_dvo_get_current_mode(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_dvo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = call %struct.intel_dvo* @intel_attached_dvo(%struct.drm_connector* %16)
  store %struct.intel_dvo* %17, %struct.intel_dvo** %5, align 8
  %18 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %19 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %6, align 4
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DVO_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DVO_PIPE_B_SELECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %9, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.drm_crtc* @intel_get_crtc_for_pipe(%struct.drm_device* %34, i32 %35)
  store %struct.drm_crtc* %36, %struct.drm_crtc** %8, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %38 = icmp ne %struct.drm_crtc* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %27
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %42 = call %struct.drm_display_mode* @intel_crtc_mode_get(%struct.drm_device* %40, %struct.drm_crtc* %41)
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %7, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %44 = icmp ne %struct.drm_display_mode* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %39
  %46 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DVO_HSYNC_ACTIVE_HIGH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %45
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @DVO_VSYNC_ACTIVE_HIGH, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %27
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  ret %struct.drm_display_mode* %76
}

declare dso_local %struct.intel_dvo* @intel_attached_dvo(%struct.drm_connector*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_pipe(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_display_mode* @intel_crtc_mode_get(%struct.drm_device*, %struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
