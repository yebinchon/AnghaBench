; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_intel_gpu_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_intel_gpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Simulated gpu hang, resetting stop_rings\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Reset not implemented, but ignoring error for simulated gpu hangs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gpu_reset(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 7, label %14
    i32 6, label %14
    i32 5, label %17
    i32 4, label %20
    i32 2, label %23
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @gen6_do_reset(%struct.drm_device* %15)
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i32 @ironlake_do_reset(%struct.drm_device* %18)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = call i32 @i965_do_reset(%struct.drm_device* %21)
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = call i32 @i8xx_do_reset(%struct.drm_device* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %1, %23, %20, %17, %14
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %32
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @gen6_do_reset(%struct.drm_device*) #1

declare dso_local i32 @ironlake_do_reset(%struct.drm_device*) #1

declare dso_local i32 @i965_do_reset(%struct.drm_device*) #1

declare dso_local i32 @i8xx_do_reset(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
