; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_enable_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_enable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_encoder = type { i32 }
%struct.intel_crtc = type { i32 }

@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@PCH_PP_STATUS = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@PP_STATUS = common dso_local global i32 0, align 4
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timed out waiting for panel to power on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_enable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_lvds(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_lvds_encoder*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__* %14)
  store %struct.intel_lvds_encoder* %15, %struct.intel_lvds_encoder** %4, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(i32 %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %5, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %22, align 8
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @PCH_PP_CONTROL, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @PCH_PP_STATUS, align 4
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @PP_CONTROL, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @PP_STATUS, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %35 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %38 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @I915_READ(i32 %39)
  %41 = load i32, i32* @LVDS_PORT_EN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @I915_WRITE(i32 %36, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = load i32, i32* @POWER_TARGET_ON, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @I915_WRITE(i32 %44, i32 %48)
  %50 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %51 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @POSTING_READ(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @I915_READ(i32 %54)
  %56 = load i32, i32* @PP_ON, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @wait_for(i32 %59, i32 1000)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %33
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %33
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %67 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @intel_panel_enable_backlight(%struct.drm_device* %65, i32 %68)
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_panel_enable_backlight(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
