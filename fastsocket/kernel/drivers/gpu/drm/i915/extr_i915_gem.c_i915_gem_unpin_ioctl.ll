; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_unpin_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_unpin_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_pin = type { i32 }
%struct.drm_i915_gem_object = type { i64, i32, %struct.drm_file* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Not pinned by caller in i915_gem_pin_ioctl(): %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_unpin_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
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
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_i915_gem_pin*, %struct.drm_i915_gem_pin** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_pin, %struct.drm_i915_gem_pin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_gem_object_lookup(%struct.drm_device* %20, %struct.drm_file* %21, i32 %24)
  %26 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %25)
  store %struct.drm_i915_gem_object* %26, %struct.drm_i915_gem_object** %9, align 8
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 1
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %65

33:                                               ; preds = %19
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %35 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %34, i32 0, i32 2
  %36 = load %struct.drm_file*, %struct.drm_file** %35, align 8
  %37 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %38 = icmp ne %struct.drm_file* %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.drm_i915_gem_pin*, %struct.drm_i915_gem_pin** %8, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_pin, %struct.drm_i915_gem_pin* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %61

46:                                               ; preds = %33
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %48 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 2
  store %struct.drm_file* null, %struct.drm_file** %57, align 8
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %59 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %58)
  br label %60

60:                                               ; preds = %55, %46
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %63 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %62, i32 0, i32 1
  %64 = call i32 @drm_gem_object_unreference(i32* %63)
  br label %65

65:                                               ; preds = %61, %30
  %66 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
