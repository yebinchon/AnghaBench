; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_write_fence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_write_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.drm_i915_gem_object*)* @i915_gem_write_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_write_fence(%struct.drm_device* %0, i32 %1, %struct.drm_i915_gem_object* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %7, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %17, align 8
  %19 = call i64 @i915_gem_object_needs_mb(%struct.drm_i915_gem_object* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (...) @mb()
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %43 [
    i32 7, label %28
    i32 6, label %28
    i32 5, label %28
    i32 4, label %28
    i32 3, label %33
    i32 2, label %38
  ]

28:                                               ; preds = %23, %23, %23, %23
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %32 = call i32 @i965_write_fence_reg(%struct.drm_device* %29, i32 %30, %struct.drm_i915_gem_object* %31)
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %37 = call i32 @i915_write_fence_reg(%struct.drm_device* %34, i32 %35, %struct.drm_i915_gem_object* %36)
  br label %45

38:                                               ; preds = %23
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %42 = call i32 @i830_write_fence_reg(%struct.drm_device* %39, i32 %40, %struct.drm_i915_gem_object* %41)
  br label %45

43:                                               ; preds = %23
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %38, %33, %28
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = call i64 @i915_gem_object_needs_mb(%struct.drm_i915_gem_object* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @mb()
  br label %51

51:                                               ; preds = %49, %45
  ret void
}

declare dso_local i64 @i915_gem_object_needs_mb(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mb(...) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @i965_write_fence_reg(%struct.drm_device*, i32, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_write_fence_reg(%struct.drm_device*, i32, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @i830_write_fence_reg(%struct.drm_device*, i32, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
