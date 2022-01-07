; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_mmap_gtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_mmap_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.drm_i915_gem_object = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@I915_MADV_WILLNEED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Attempting to mmap a purgeable buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_mmap_gtt(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %10, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %83

22:                                               ; preds = %4
  %23 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @drm_gem_object_lookup(%struct.drm_device* %23, %struct.drm_file* %24, i32 %25)
  %27 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %26)
  store %struct.drm_i915_gem_object* %27, %struct.drm_i915_gem_object** %11, align 8
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %28, i32 0, i32 1
  %30 = icmp eq %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %78

34:                                               ; preds = %22
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @E2BIG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %74

47:                                               ; preds = %34
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @I915_MADV_WILLNEED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %74

57:                                               ; preds = %47
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %59 = call i32 @i915_gem_object_create_mmap_offset(%struct.drm_i915_gem_object* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %74

63:                                               ; preds = %57
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %62, %53, %44
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 1
  %77 = call i32 @drm_gem_object_unreference(%struct.TYPE_8__* %76)
  br label %78

78:                                               ; preds = %74, %31
  %79 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %20
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_gem_object_create_mmap_offset(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
