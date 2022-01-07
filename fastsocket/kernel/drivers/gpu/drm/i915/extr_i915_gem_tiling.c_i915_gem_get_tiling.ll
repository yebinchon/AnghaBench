; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_gem_get_tiling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_tiling.c_i915_gem_get_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_get_tiling = type { i32, i64, i32 }
%struct.drm_i915_gem_object = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@I915_BIT_6_SWIZZLE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown tiling mode\0A\00", align 1
@I915_BIT_6_SWIZZLE_9_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_get_tiling(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_get_tiling*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_get_tiling*
  store %struct.drm_i915_gem_get_tiling* %12, %struct.drm_i915_gem_get_tiling** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @drm_gem_object_lookup(%struct.drm_device* %16, %struct.drm_file* %17, i32 %20)
  %22 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %21)
  store %struct.drm_i915_gem_object* %22, %struct.drm_i915_gem_object** %10, align 8
  %23 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %24 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %23, i32 0, i32 1
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %88

29:                                               ; preds = %3
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %34 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %59 [
    i32 129, label %41
    i32 128, label %48
    i32 130, label %55
  ]

41:                                               ; preds = %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %61

48:                                               ; preds = %29
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %61

55:                                               ; preds = %29
  %56 = load i64, i64* @I915_BIT_6_SWIZZLE_NONE, align 8
  %57 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %61

59:                                               ; preds = %29
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55, %48, %41
  %62 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @I915_BIT_6_SWIZZLE_9_17, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* @I915_BIT_6_SWIZZLE_9, align 8
  %69 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %73 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10_17, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10, align 8
  %79 = load %struct.drm_i915_gem_get_tiling*, %struct.drm_i915_gem_get_tiling** %8, align 8
  %80 = getelementptr inbounds %struct.drm_i915_gem_get_tiling, %struct.drm_i915_gem_get_tiling* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %10, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %82, i32 0, i32 1
  %84 = call i32 @drm_gem_object_unreference(i32* %83)
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %26
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
