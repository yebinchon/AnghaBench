; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @i915_gem_init_global_gtt(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i32 @i915_gem_init_hw(%struct.drm_device* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i32 @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device* %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = load i32, i32* @DRIVER_MODESET, align 4
  %28 = call i32 @drm_core_check_feature(%struct.drm_device* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %25
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_init_global_gtt(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_init_hw(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
