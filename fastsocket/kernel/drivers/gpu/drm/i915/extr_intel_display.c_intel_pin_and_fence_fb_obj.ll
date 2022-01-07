; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pin_and_fence_fb_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pin_and_fence_fb_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.intel_ring_buffer = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Y tiled not allowed for scan out buffers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %0, %struct.drm_i915_gem_object* %1, %struct.intel_ring_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.intel_ring_buffer*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %6, align 8
  store %struct.intel_ring_buffer* %2, %struct.intel_ring_buffer** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %8, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %41 [
    i32 130, label %17
    i32 129, label %36
    i32 128, label %37
  ]

17:                                               ; preds = %3
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call i32 @IS_BROADWATER(%struct.drm_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = call i32 @IS_CRESTLINE(%struct.drm_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 131072, i32* %9, align 4
  br label %35

26:                                               ; preds = %21
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 4096, i32* %9, align 4
  br label %34

33:                                               ; preds = %26
  store i32 65536, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %25
  br label %43

36:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %43

37:                                               ; preds = %3
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %3
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %36, %35
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %7, align 8
  %50 = call i32 @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object* %47, i32 %48, %struct.intel_ring_buffer* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %69

54:                                               ; preds = %43
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %56 = call i32 @i915_gem_object_get_fence(%struct.drm_i915_gem_object* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %66

60:                                               ; preds = %54
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %62 = call i32 @i915_gem_object_pin_fence(%struct.drm_i915_gem_object* %61)
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %68 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %67)
  br label %69

69:                                               ; preds = %66, %53
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %60, %37
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @IS_BROADWATER(%struct.drm_device*) #1

declare dso_local i32 @IS_CRESTLINE(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object*, i32, %struct.intel_ring_buffer*) #1

declare dso_local i32 @i915_gem_object_get_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
