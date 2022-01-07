; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_pre_enable_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_pre_enable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_encoder = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"applying panel-fitter: %x, %x\0A\00", align 1
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_pre_enable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pre_enable_lvds(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_lvds_encoder*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__* %11)
  store %struct.intel_lvds_encoder* %12, %struct.intel_lvds_encoder** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %1
  br label %43

25:                                               ; preds = %19
  %26 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %27 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %34 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %35 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @I915_WRITE(i32 %33, i32 %36)
  %38 = load i32, i32* @PFIT_CONTROL, align 4
  %39 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %4, align 8
  %40 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @I915_WRITE(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
