; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.h_i915_gem_object_pin_fence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.h_i915_gem_object_pin_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@I915_FENCE_REG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @i915_gem_object_pin_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_object_pin_fence(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @I915_FENCE_REG_NONE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  store i32 1, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
