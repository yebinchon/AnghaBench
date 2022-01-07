; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_gem_context_destroy_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_gem_context_destroy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32 }
%struct.drm_i915_gem_context_destroy = type { i32 }
%struct.i915_hw_context = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"HW context %d destroyed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_destroy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_context_destroy*, align 8
  %9 = alloca %struct.drm_i915_file_private*, align 8
  %10 = alloca %struct.i915_hw_context*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_i915_gem_context_destroy*
  store %struct.drm_i915_gem_context_destroy* %13, %struct.drm_i915_gem_context_destroy** %8, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %15, align 8
  store %struct.drm_i915_file_private* %16, %struct.drm_i915_file_private** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DRIVER_GEM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %3
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %59

35:                                               ; preds = %28
  %36 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %9, align 8
  %37 = load %struct.drm_i915_gem_context_destroy*, %struct.drm_i915_gem_context_destroy** %8, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_context_destroy, %struct.drm_i915_gem_context_destroy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.i915_hw_context* @i915_gem_context_get(%struct.drm_i915_file_private* %36, i32 %39)
  store %struct.i915_hw_context* %40, %struct.i915_hw_context** %10, align 8
  %41 = load %struct.i915_hw_context*, %struct.i915_hw_context** %10, align 8
  %42 = icmp ne %struct.i915_hw_context* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.i915_hw_context*, %struct.i915_hw_context** %10, align 8
  %51 = call i32 @do_destroy(%struct.i915_hw_context* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.drm_i915_gem_context_destroy*, %struct.drm_i915_gem_context_destroy** %8, align 8
  %56 = getelementptr inbounds %struct.drm_i915_gem_context_destroy, %struct.drm_i915_gem_context_destroy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %43, %33, %25
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.i915_hw_context* @i915_gem_context_get(%struct.drm_i915_file_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @do_destroy(%struct.i915_hw_context*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
