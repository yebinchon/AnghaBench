; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ppgtt_unbind_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ppgtt_unbind_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_ppgtt = type { i32 (%struct.i915_hw_ppgtt*, i32, i32)* }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_ppgtt_unbind_object(%struct.i915_hw_ppgtt* %0, %struct.drm_i915_gem_object* %1) #0 {
  %3 = alloca %struct.i915_hw_ppgtt*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.i915_hw_ppgtt* %0, %struct.i915_hw_ppgtt** %3, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %4, align 8
  %5 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %3, align 8
  %6 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %5, i32 0, i32 0
  %7 = load i32 (%struct.i915_hw_ppgtt*, i32, i32)*, i32 (%struct.i915_hw_ppgtt*, i32, i32)** %6, align 8
  %8 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %3, align 8
  %9 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = call i32 %7(%struct.i915_hw_ppgtt* %8, i32 %15, i32 %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
