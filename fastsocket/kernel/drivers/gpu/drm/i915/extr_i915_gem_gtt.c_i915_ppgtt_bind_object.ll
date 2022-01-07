; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ppgtt_bind_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ppgtt_bind_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_ppgtt = type { i32 (%struct.i915_hw_ppgtt*, i32, i32, i32)* }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_ppgtt_bind_object(%struct.i915_hw_ppgtt* %0, %struct.drm_i915_gem_object* %1, i32 %2) #0 {
  %4 = alloca %struct.i915_hw_ppgtt*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_hw_ppgtt* %0, %struct.i915_hw_ppgtt** %4, align 8
  store %struct.drm_i915_gem_object* %1, %struct.drm_i915_gem_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %8 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %7, i32 0, i32 0
  %9 = load i32 (%struct.i915_hw_ppgtt*, i32, i32, i32)*, i32 (%struct.i915_hw_ppgtt*, i32, i32, i32)** %8, align 8
  %10 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %9(%struct.i915_hw_ppgtt* %10, i32 %13, i32 %20, i32 %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
