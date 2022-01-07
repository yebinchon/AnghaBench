; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_madvise_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_madvise_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_madvise = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type { i32, i32, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@__I915_MADV_PURGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_madvise_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_madvise*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_madvise*
  store %struct.drm_i915_gem_madvise* %12, %struct.drm_i915_gem_madvise** %8, align 8
  %13 = load %struct.drm_i915_gem_madvise*, %struct.drm_i915_gem_madvise** %8, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_madvise, %struct.drm_i915_gem_madvise* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %3, %3
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %91

20:                                               ; preds = %16
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %91

27:                                               ; preds = %20
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %30 = load %struct.drm_i915_gem_madvise*, %struct.drm_i915_gem_madvise** %8, align 8
  %31 = getelementptr inbounds %struct.drm_i915_gem_madvise, %struct.drm_i915_gem_madvise* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_gem_object_lookup(%struct.drm_device* %28, %struct.drm_file* %29, i32 %32)
  %34 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %33)
  store %struct.drm_i915_gem_object* %34, %struct.drm_i915_gem_object** %9, align 8
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 1
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %86

41:                                               ; preds = %27
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %82

49:                                               ; preds = %41
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @__I915_MADV_PURGED, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.drm_i915_gem_madvise*, %struct.drm_i915_gem_madvise** %8, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_madvise, %struct.drm_i915_gem_madvise* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %63 = call i64 @i915_gem_object_is_purgeable(%struct.drm_i915_gem_object* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %72 = call i32 @i915_gem_object_truncate(%struct.drm_i915_gem_object* %71)
  br label %73

73:                                               ; preds = %70, %65, %61
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @__I915_MADV_PURGED, align 4
  %78 = icmp ne i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load %struct.drm_i915_gem_madvise*, %struct.drm_i915_gem_madvise** %8, align 8
  %81 = getelementptr inbounds %struct.drm_i915_gem_madvise, %struct.drm_i915_gem_madvise* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %46
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %84 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %83, i32 0, i32 1
  %85 = call i32 @drm_gem_object_unreference(i32* %84)
  br label %86

86:                                               ; preds = %82, %38
  %87 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %25, %17
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i64 @i915_gem_object_is_purgeable(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_truncate(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
