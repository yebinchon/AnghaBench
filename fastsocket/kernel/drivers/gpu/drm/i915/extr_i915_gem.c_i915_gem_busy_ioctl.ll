; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_busy_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_busy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_busy = type { i32, i32 }
%struct.drm_i915_gem_object = type { i32, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@I915_NUM_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_busy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_busy*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_busy*
  store %struct.drm_i915_gem_busy* %12, %struct.drm_i915_gem_busy** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_i915_gem_busy*, %struct.drm_i915_gem_busy** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_busy, %struct.drm_i915_gem_busy* %22, i32 0, i32 1
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
  br label %63

33:                                               ; preds = %19
  %34 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %35 = call i32 @i915_gem_object_flush_active(%struct.drm_i915_gem_object* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.drm_i915_gem_busy*, %struct.drm_i915_gem_busy** %8, align 8
  %40 = getelementptr inbounds %struct.drm_i915_gem_busy, %struct.drm_i915_gem_busy* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %33
  %46 = load i32, i32* @I915_NUM_RINGS, align 4
  %47 = icmp sgt i32 %46, 16
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUILD_BUG_ON(i32 %48)
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @intel_ring_flag(i64 %52)
  %54 = shl i32 %53, 16
  %55 = load %struct.drm_i915_gem_busy*, %struct.drm_i915_gem_busy** %8, align 8
  %56 = getelementptr inbounds %struct.drm_i915_gem_busy, %struct.drm_i915_gem_busy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %45, %33
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %61 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %60, i32 0, i32 1
  %62 = call i32 @drm_gem_object_unreference(i32* %61)
  br label %63

63:                                               ; preds = %59, %30
  %64 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @i915_gem_object_flush_active(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_ring_flag(i64) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
