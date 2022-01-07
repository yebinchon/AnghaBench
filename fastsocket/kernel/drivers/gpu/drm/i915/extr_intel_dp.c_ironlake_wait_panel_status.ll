; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_wait_panel_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_wait_panel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"mask %08x value %08x status %08x control %08x\0A\00", align 1
@PCH_PP_STATUS = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Panel status timeout: status %08x control %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, i32, i32)* @ironlake_wait_panel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_wait_panel_status(%struct.intel_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %10 = call %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp* %9)
  store %struct.drm_device* %10, %struct.drm_device** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PCH_PP_STATUS, align 4
  %17 = call i32 @I915_READ(i32 %16)
  %18 = load i32, i32* @PCH_PP_CONTROL, align 4
  %19 = call i32 @I915_READ(i32 %18)
  %20 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %17, i32 %19)
  %21 = load i32, i32* @PCH_PP_STATUS, align 4
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @_wait_for(i32 %27, i32 5000, i32 10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @PCH_PP_STATUS, align 4
  %32 = call i32 @I915_READ(i32 %31)
  %33 = load i32, i32* @PCH_PP_CONTROL, align 4
  %34 = call i32 @I915_READ(i32 %33)
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %3
  ret void
}

declare dso_local %struct.drm_device* @intel_dp_to_dev(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @_wait_for(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
