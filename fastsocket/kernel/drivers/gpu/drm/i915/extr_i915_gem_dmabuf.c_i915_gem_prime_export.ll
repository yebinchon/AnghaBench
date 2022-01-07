; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_prime_export.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_prime_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@i915_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @i915_gem_prime_export(%struct.drm_device* %0, %struct.drm_gem_object* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %9 = call %struct.drm_i915_gem_object* @to_intel_bo(%struct.drm_gem_object* %8)
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %7, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.dma_buf* @dma_buf_export(%struct.drm_i915_gem_object* %10, i32* @i915_dmabuf_ops, i32 %14, i32 %15)
  ret %struct.dma_buf* %16
}

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.dma_buf* @dma_buf_export(%struct.drm_i915_gem_object*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
