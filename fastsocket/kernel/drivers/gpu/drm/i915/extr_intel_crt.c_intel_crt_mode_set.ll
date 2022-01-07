; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crt = type { i32 }
%struct.intel_crtc = type { i64 }

@ADPA_HOTPLUG_BITS = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@ADPA_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@ADPA_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ADPA_PIPE_A_SELECT = common dso_local global i32 0, align 4
@ADPA_PIPE_B_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_crt_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crt_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.intel_crt*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  store %struct.drm_crtc* %18, %struct.drm_crtc** %8, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = call i32 @to_intel_encoder(%struct.drm_encoder* %19)
  %21 = call %struct.intel_crt* @intel_encoder_to_crt(i32 %20)
  store %struct.intel_crt* %21, %struct.intel_crt** %9, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %23 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %22)
  store %struct.intel_crtc* %23, %struct.intel_crtc** %10, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %25, align 8
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %11, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %28 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @ADPA_HOTPLUG_BITS, align 4
  store i32 %31, i32* %12, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @ADPA_HSYNC_ACTIVE_HIGH, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @ADPA_VSYNC_ACTIVE_HIGH, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %57 = call i64 @HAS_PCH_LPT(%struct.drm_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %86

60:                                               ; preds = %55
  %61 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %62 = call i64 @HAS_PCH_CPT(%struct.drm_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @PORT_TRANS_SEL_CPT(i64 %67)
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %85

71:                                               ; preds = %60
  %72 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %73 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @ADPA_PIPE_A_SELECT, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @ADPA_PIPE_B_SELECT, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %88 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %92 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @BCLRPAT(i64 %93)
  %95 = call i32 @I915_WRITE(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.intel_crt*, %struct.intel_crt** %9, align 8
  %98 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @I915_WRITE(i32 %99, i32 %100)
  ret void
}

declare dso_local %struct.intel_crt* @intel_encoder_to_crt(i32) #1

declare dso_local i32 @to_intel_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @PORT_TRANS_SEL_CPT(i64) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @BCLRPAT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
