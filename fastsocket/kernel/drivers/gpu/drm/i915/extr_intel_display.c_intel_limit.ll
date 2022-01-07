; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@intel_limits_pineview_lvds = common dso_local global i32 0, align 4
@intel_limits_pineview_sdvo = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@intel_limits_vlv_dac = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@intel_limits_vlv_hdmi = common dso_local global i32 0, align 4
@intel_limits_vlv_dp = common dso_local global i32 0, align 4
@intel_limits_i9xx_lvds = common dso_local global i32 0, align 4
@intel_limits_i9xx_sdvo = common dso_local global i32 0, align 4
@intel_limits_i8xx_lvds = common dso_local global i32 0, align 4
@intel_limits_i8xx_dvo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_crtc*, i32)* @intel_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @intel_limit(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @intel_ironlake_limit(%struct.drm_crtc* %14, i32 %15)
  store i32* %16, i32** %6, align 8
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call i64 @IS_G4X(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = call i32* @intel_g4x_limit(%struct.drm_crtc* %22)
  store i32* %23, i32** %6, align 8
  br label %78

24:                                               ; preds = %17
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = call i64 @IS_PINEVIEW(%struct.drm_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %30 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %31 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32* @intel_limits_pineview_lvds, i32** %6, align 8
  br label %35

34:                                               ; preds = %28
  store i32* @intel_limits_pineview_sdvo, i32** %6, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %77

36:                                               ; preds = %24
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %42 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %43 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32* @intel_limits_vlv_dac, i32** %6, align 8
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %48 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %49 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32* @intel_limits_vlv_hdmi, i32** %6, align 8
  br label %53

52:                                               ; preds = %46
  store i32* @intel_limits_vlv_dp, i32** %6, align 8
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %45
  br label %76

55:                                               ; preds = %36
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = call i32 @IS_GEN2(%struct.drm_device* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %61 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %62 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32* @intel_limits_i9xx_lvds, i32** %6, align 8
  br label %66

65:                                               ; preds = %59
  store i32* @intel_limits_i9xx_sdvo, i32** %6, align 8
  br label %66

66:                                               ; preds = %65, %64
  br label %75

67:                                               ; preds = %55
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %69 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %70 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32* @intel_limits_i8xx_lvds, i32** %6, align 8
  br label %74

73:                                               ; preds = %67
  store i32* @intel_limits_i8xx_dvo, i32** %6, align 8
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77, %21
  br label %79

79:                                               ; preds = %78, %13
  %80 = load i32*, i32** %6, align 8
  ret i32* %80
}

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32* @intel_ironlake_limit(%struct.drm_crtc*, i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i32* @intel_g4x_limit(%struct.drm_crtc*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_device*) #1

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @IS_GEN2(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
