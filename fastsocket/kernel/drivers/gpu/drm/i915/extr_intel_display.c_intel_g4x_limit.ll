; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_g4x_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_g4x_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@intel_limits_g4x_dual_channel_lvds = common dso_local global i32 0, align 4
@intel_limits_g4x_single_channel_lvds = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@intel_limits_g4x_hdmi = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@intel_limits_g4x_sdvo = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@intel_limits_g4x_display_port = common dso_local global i32 0, align 4
@intel_limits_i9xx_sdvo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_crtc*)* @intel_g4x_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @intel_g4x_limit(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %10 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i64 @intel_is_dual_link_lvds(%struct.drm_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32* @intel_limits_g4x_dual_channel_lvds, i32** %4, align 8
  br label %18

17:                                               ; preds = %12
  store i32* @intel_limits_g4x_single_channel_lvds, i32** %4, align 8
  br label %18

18:                                               ; preds = %17, %16
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %21 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %22 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %26 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %27 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  store i32* @intel_limits_g4x_hdmi, i32** %4, align 8
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %32 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %33 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32* @intel_limits_g4x_sdvo, i32** %4, align 8
  br label %44

36:                                               ; preds = %30
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %38 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %39 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32* @intel_limits_g4x_display_port, i32** %4, align 8
  br label %43

42:                                               ; preds = %36
  store i32* @intel_limits_i9xx_sdvo, i32** %4, align 8
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
