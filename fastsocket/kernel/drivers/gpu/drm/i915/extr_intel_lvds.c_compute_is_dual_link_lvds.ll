; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_compute_is_dual_link_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_compute_is_dual_link_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lvds_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@i915_lvds_channel_mode = common dso_local global i32 0, align 4
@intel_dual_link_lvds = common dso_local global i32 0, align 4
@LVDS_PIPE_MASK = common dso_local global i32 0, align 4
@LVDS_DETECTED = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_MASK = common dso_local global i32 0, align 4
@LVDS_CLKB_POWER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lvds_encoder*)* @compute_is_dual_link_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_is_dual_link_lvds(%struct.intel_lvds_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lvds_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_lvds_encoder* %0, %struct.intel_lvds_encoder** %3, align 8
  %7 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load i32, i32* @i915_lvds_channel_mode, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @i915_lvds_channel_mode, align 4
  %19 = icmp eq i32 %18, 2
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load i32, i32* @intel_dual_link_lvds, align 4
  %23 = call i64 @dmi_check_system(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %49

26:                                               ; preds = %21
  %27 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %3, align 8
  %28 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LVDS_PIPE_MASK, align 4
  %33 = load i32, i32* @LVDS_DETECTED, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @LVDS_CLKB_POWER_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @LVDS_CLKB_POWER_UP, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %25, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
