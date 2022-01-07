; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_init_hw(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = call i32 (...) @intel_enable_gtt()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %14, %1
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call i64 @IS_HASWELL(%struct.drm_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = call i32 @I915_READ(i32 1179664)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32 @I915_READ(i32 36872)
  %29 = or i32 %28, 983040
  %30 = call i32 @I915_WRITE(i32 36872, i32 %29)
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = call i32 @i915_gem_l3_remap(%struct.drm_device* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = call i32 @i915_gem_init_swizzling(%struct.drm_device* %34)
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @i915_gem_init_rings(%struct.drm_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = call i32 @i915_gem_context_init(%struct.drm_device* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = call i32 @i915_gem_init_ppgtt(%struct.drm_device* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %40, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @intel_enable_gtt(...) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @i915_gem_l3_remap(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_init_swizzling(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_init_rings(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_context_init(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_init_ppgtt(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
