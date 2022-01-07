; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_cleanup_aliasing_ppgtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_cleanup_aliasing_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i915_hw_ppgtt* }
%struct.i915_hw_ppgtt = type { i32 (%struct.i915_hw_ppgtt*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_hw_ppgtt*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %10, align 8
  store %struct.i915_hw_ppgtt* %11, %struct.i915_hw_ppgtt** %4, align 8
  %12 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %13 = icmp ne %struct.i915_hw_ppgtt* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %17 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %16, i32 0, i32 0
  %18 = load i32 (%struct.i915_hw_ppgtt*)*, i32 (%struct.i915_hw_ppgtt*)** %17, align 8
  %19 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %4, align 8
  %20 = call i32 %18(%struct.i915_hw_ppgtt* %19)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
