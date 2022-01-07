; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_set_pipe_csc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_set_pipe_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@INTEL_MODE_LIMITED_COLOR_RANGE = common dso_local global i32 0, align 4
@CSC_MODE_YUV_TO_RGB = common dso_local global i32 0, align 4
@CSC_BLACK_SCREEN_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*)* @intel_set_pipe_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_set_pipe_csc(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %7, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  store i32 30720, i32* %9, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 3512, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PIPE_CSC_COEFF_RY_GY(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 16
  %35 = call i32 @I915_WRITE(i32 %32, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @PIPE_CSC_COEFF_BY(i32 %36)
  %38 = call i32 @I915_WRITE(i32 %37, i32 0)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @PIPE_CSC_COEFF_RU_GU(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @PIPE_CSC_COEFF_BU(i32 %43)
  %45 = call i32 @I915_WRITE(i32 %44, i32 0)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @PIPE_CSC_COEFF_RV_GV(i32 %46)
  %48 = call i32 @I915_WRITE(i32 %47, i32 0)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @PIPE_CSC_COEFF_BV(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 16
  %53 = call i32 @I915_WRITE(i32 %50, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @PIPE_CSC_PREOFF_HI(i32 %54)
  %56 = call i32 @I915_WRITE(i32 %55, i32 0)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @PIPE_CSC_PREOFF_ME(i32 %57)
  %59 = call i32 @I915_WRITE(i32 %58, i32 0)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @PIPE_CSC_PREOFF_LO(i32 %60)
  %62 = call i32 @I915_WRITE(i32 %61, i32 0)
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 6
  br i1 %67, label %68, label %92

68:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 514, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @PIPE_CSC_POSTOFF_HI(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @PIPE_CSC_POSTOFF_ME(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @I915_WRITE(i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @PIPE_CSC_POSTOFF_LO(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @I915_WRITE(i32 %86, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @PIPE_CSC_MODE(i32 %89)
  %91 = call i32 @I915_WRITE(i32 %90, i32 0)
  br label %109

92:                                               ; preds = %30
  %93 = load i32, i32* @CSC_MODE_YUV_TO_RGB, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* @CSC_BLACK_SCREEN_OFFSET, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @PIPE_CSC_MODE(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @I915_WRITE(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %76
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_CSC_COEFF_RY_GY(i32) #1

declare dso_local i32 @PIPE_CSC_COEFF_BY(i32) #1

declare dso_local i32 @PIPE_CSC_COEFF_RU_GU(i32) #1

declare dso_local i32 @PIPE_CSC_COEFF_BU(i32) #1

declare dso_local i32 @PIPE_CSC_COEFF_RV_GV(i32) #1

declare dso_local i32 @PIPE_CSC_COEFF_BV(i32) #1

declare dso_local i32 @PIPE_CSC_PREOFF_HI(i32) #1

declare dso_local i32 @PIPE_CSC_PREOFF_ME(i32) #1

declare dso_local i32 @PIPE_CSC_PREOFF_LO(i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @PIPE_CSC_POSTOFF_HI(i32) #1

declare dso_local i32 @PIPE_CSC_POSTOFF_ME(i32) #1

declare dso_local i32 @PIPE_CSC_POSTOFF_LO(i32) #1

declare dso_local i32 @PIPE_CSC_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
