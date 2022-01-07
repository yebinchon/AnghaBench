; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_disable_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_disable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_encoder = type { i32 }

@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@PCH_PP_STATUS = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@PP_STATUS = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"timed out waiting for panel to power off\0A\00", align 1
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_disable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_lvds(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_lvds_encoder*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__* %13)
  store %struct.intel_lvds_encoder* %14, %struct.intel_lvds_encoder** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @PCH_PP_CONTROL, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @PCH_PP_STATUS, align 4
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @PP_CONTROL, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @PP_STATUS, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @intel_panel_disable_backlight(%struct.drm_device* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @I915_READ(i32 %31)
  %33 = load i32, i32* @POWER_TARGET_ON, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @I915_WRITE(i32 %30, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = load i32, i32* @PP_ON, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @wait_for(i32 %42, i32 1000)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %27
  %48 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %49 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %52 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @I915_READ(i32 %53)
  %55 = load i32, i32* @LVDS_PORT_EN, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @I915_WRITE(i32 %50, i32 %57)
  %59 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %60 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @POSTING_READ(i32 %61)
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @intel_panel_disable_backlight(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
