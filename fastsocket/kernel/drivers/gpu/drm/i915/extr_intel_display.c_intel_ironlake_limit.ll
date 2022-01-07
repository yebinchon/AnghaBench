; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_ironlake_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_ironlake_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@intel_limits_ironlake_dual_lvds_100m = common dso_local global i32 0, align 4
@intel_limits_ironlake_dual_lvds = common dso_local global i32 0, align 4
@intel_limits_ironlake_single_lvds_100m = common dso_local global i32 0, align 4
@intel_limits_ironlake_single_lvds = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@intel_limits_ironlake_display_port = common dso_local global i32 0, align 4
@intel_limits_ironlake_dac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_crtc*, i32)* @intel_ironlake_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @intel_ironlake_limit(%struct.drm_crtc* %0, i32 %1) #0 {
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
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %12 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call i64 @intel_is_dual_link_lvds(%struct.drm_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 100000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* @intel_limits_ironlake_dual_lvds_100m, i32** %6, align 8
  br label %23

22:                                               ; preds = %18
  store i32* @intel_limits_ironlake_dual_lvds, i32** %6, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %30

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 100000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32* @intel_limits_ironlake_single_lvds_100m, i32** %6, align 8
  br label %29

28:                                               ; preds = %24
  store i32* @intel_limits_ironlake_single_lvds, i32** %6, align 8
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %34 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %39 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  store i32* @intel_limits_ironlake_display_port, i32** %6, align 8
  br label %43

42:                                               ; preds = %36
  store i32* @intel_limits_ironlake_dac, i32** %6, align 8
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32*, i32** %6, align 8
  ret i32* %45
}

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
