; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_gem_context_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_gem_context_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i64 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32 }
%struct.drm_i915_gem_context_create = type { i32 }
%struct.i915_hw_context = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HW context %d created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_gem_context_create*, align 8
  %10 = alloca %struct.drm_i915_file_private*, align 8
  %11 = alloca %struct.i915_hw_context*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 2
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_i915_gem_context_create*
  store %struct.drm_i915_gem_context_create* %17, %struct.drm_i915_gem_context_create** %9, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %19, align 8
  store %struct.drm_i915_file_private* %20, %struct.drm_i915_file_private** %10, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DRIVER_GEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %70

40:                                               ; preds = %32
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %4, align 4
  br label %70

47:                                               ; preds = %40
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %10, align 8
  %50 = call %struct.i915_hw_context* @create_hw_context(%struct.drm_device* %48, %struct.drm_i915_file_private* %49)
  store %struct.i915_hw_context* %50, %struct.i915_hw_context** %11, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.i915_hw_context*, %struct.i915_hw_context** %11, align 8
  %55 = call i64 @IS_ERR(%struct.i915_hw_context* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.i915_hw_context*, %struct.i915_hw_context** %11, align 8
  %59 = call i32 @PTR_ERR(%struct.i915_hw_context* %58)
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %47
  %61 = load %struct.i915_hw_context*, %struct.i915_hw_context** %11, align 8
  %62 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_i915_gem_context_create*, %struct.drm_i915_gem_context_create** %9, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_context_create, %struct.drm_i915_gem_context_create* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.drm_i915_gem_context_create*, %struct.drm_i915_gem_context_create** %9, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_context_create, %struct.drm_i915_gem_context_create* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %57, %45, %37, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local %struct.i915_hw_context* @create_hw_context(%struct.drm_device*, %struct.drm_i915_file_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_hw_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_hw_context*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
