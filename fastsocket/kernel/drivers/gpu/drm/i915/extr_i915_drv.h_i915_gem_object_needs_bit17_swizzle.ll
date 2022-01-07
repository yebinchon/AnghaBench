; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.h_i915_gem_object_needs_bit17_swizzle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.h_i915_gem_object_needs_bit17_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@I915_BIT_6_SWIZZLE_9_10_17 = common dso_local global i64 0, align 8
@I915_TILING_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*)* @i915_gem_object_needs_bit17_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_object_needs_bit17_swizzle(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  %4 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10_17, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I915_TILING_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ false, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
