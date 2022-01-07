; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_dvo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.drm_display_mode*, %struct.drm_display_mode*)* }

@DVOA_SRCDIM = common dso_local global i32 0, align 4
@DVOB_SRCDIM = common dso_local global i32 0, align 4
@DVOC_SRCDIM = common dso_local global i32 0, align 4
@DVO_PRESERVE_MASK = common dso_local global i32 0, align 4
@DVO_DATA_ORDER_GBRG = common dso_local global i32 0, align 4
@DVO_DATA_ORDER_FP = common dso_local global i32 0, align 4
@DVO_BORDER_ENABLE = common dso_local global i32 0, align 4
@DVO_BLANK_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@DVO_PIPE_STALL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DPLL_DVO_HIGH_SPEED = common dso_local global i32 0, align 4
@DVO_SRCDIM_HORIZONTAL_SHIFT = common dso_local global i32 0, align 4
@DVO_SRCDIM_VERTICAL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_dvo_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dvo_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca %struct.intel_dvo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %20, align 8
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.intel_crtc* @to_intel_crtc(i32 %24)
  store %struct.intel_crtc* %25, %struct.intel_crtc** %9, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %27 = call %struct.intel_dvo* @enc_to_intel_dvo(%struct.drm_encoder* %26)
  store %struct.intel_dvo* %27, %struct.intel_dvo** %10, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.intel_dvo*, %struct.intel_dvo** %10, align 8
  %32 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @DPLL(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %13, align 4
  switch i32 %37, label %39 [
    i32 130, label %38
    i32 129, label %41
    i32 128, label %43
  ]

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %3, %38
  %40 = load i32, i32* @DVOA_SRCDIM, align 4
  store i32 %40, i32* %14, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @DVOB_SRCDIM, align 4
  store i32 %42, i32* %14, align 4
  br label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @DVOC_SRCDIM, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %43, %41, %39
  %46 = load %struct.intel_dvo*, %struct.intel_dvo** %10, align 8
  %47 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_4__*, %struct.drm_display_mode*, %struct.drm_display_mode*)*, i32 (%struct.TYPE_4__*, %struct.drm_display_mode*, %struct.drm_display_mode*)** %50, align 8
  %52 = load %struct.intel_dvo*, %struct.intel_dvo** %10, align 8
  %53 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %52, i32 0, i32 0
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %56 = call i32 %51(%struct.TYPE_4__* %53, %struct.drm_display_mode* %54, %struct.drm_display_mode* %55)
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @I915_READ(i32 %57)
  %59 = load i32, i32* @DVO_PRESERVE_MASK, align 4
  %60 = load i32, i32* @DVO_DATA_ORDER_GBRG, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @DVO_DATA_ORDER_FP, align 4
  %64 = load i32, i32* @DVO_BORDER_ENABLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DVO_BLANK_ACTIVE_HIGH, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %45
  %73 = load i32, i32* @DVO_PIPE_B_SELECT, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %72, %45
  %77 = load i32, i32* @DVO_PIPE_STALL, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i32, i32* @DVO_HSYNC_ACTIVE_HIGH, align 4
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %76
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @DVO_VSYNC_ACTIVE_HIGH, align 4
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @I915_READ(i32 %103)
  %105 = load i32, i32* @DPLL_DVO_HIGH_SPEED, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @I915_WRITE(i32 %102, i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DVO_SRCDIM_HORIZONTAL_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DVO_SRCDIM_VERTICAL_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %113, %118
  %120 = call i32 @I915_WRITE(i32 %108, i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @I915_WRITE(i32 %121, i32 %122)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_dvo* @enc_to_intel_dvo(%struct.drm_encoder*) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
