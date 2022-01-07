; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_pin_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_pin_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_pin = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type { i64, i64, i32, i32, %struct.drm_file* }

@ENOENT = common dso_local global i32 0, align 4
@I915_MADV_WILLNEED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Attempting to pin a purgeable buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Already pinned in i915_gem_pin_ioctl(): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_pin_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_pin*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_pin*
  store %struct.drm_i915_gem_pin* %12, %struct.drm_i915_gem_pin** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_i915_gem_pin*, %struct.drm_i915_gem_pin** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_pin, %struct.drm_i915_gem_pin* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_gem_object_lookup(%struct.drm_device* %20, %struct.drm_file* %21, i32 %24)
  %26 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %25)
  store %struct.drm_i915_gem_object* %26, %struct.drm_i915_gem_object** %9, align 8
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 2
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %95

33:                                               ; preds = %19
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @I915_MADV_WILLNEED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %91

43:                                               ; preds = %33
  %44 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %44, i32 0, i32 4
  %46 = load %struct.drm_file*, %struct.drm_file** %45, align 8
  %47 = icmp ne %struct.drm_file* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %50 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %49, i32 0, i32 4
  %51 = load %struct.drm_file*, %struct.drm_file** %50, align 8
  %52 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %53 = icmp ne %struct.drm_file* %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.drm_i915_gem_pin*, %struct.drm_i915_gem_pin** %8, align 8
  %56 = getelementptr inbounds %struct.drm_i915_gem_pin, %struct.drm_i915_gem_pin* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %91

61:                                               ; preds = %48, %43
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %68 = load %struct.drm_i915_gem_pin*, %struct.drm_i915_gem_pin** %8, align 8
  %69 = getelementptr inbounds %struct.drm_i915_gem_pin, %struct.drm_i915_gem_pin* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @i915_gem_object_pin(%struct.drm_i915_gem_object* %67, i32 %70, i32 1, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %91

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %61
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %82, i32 0, i32 4
  store %struct.drm_file* %81, %struct.drm_file** %83, align 8
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %85 = call i32 @i915_gem_object_flush_cpu_write_domain(%struct.drm_i915_gem_object* %84)
  %86 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %87 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_i915_gem_pin*, %struct.drm_i915_gem_pin** %8, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_pin, %struct.drm_i915_gem_pin* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %76, %74, %54, %39
  %92 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %93 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %92, i32 0, i32 2
  %94 = call i32 @drm_gem_object_unreference(i32* %93)
  br label %95

95:                                               ; preds = %91, %30
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @i915_gem_object_pin(%struct.drm_i915_gem_object*, i32, i32, i32) #1

declare dso_local i32 @i915_gem_object_flush_cpu_write_domain(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
