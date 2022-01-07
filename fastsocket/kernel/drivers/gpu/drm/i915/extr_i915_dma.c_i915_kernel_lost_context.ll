; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_kernel_lost_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_kernel_lost_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_master_private* }
%struct.drm_i915_master_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_ring_buffer = type { i32, i32, i64, i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@HEAD_ADDR = common dso_local global i32 0, align 4
@TAIL_ADDR = common dso_local global i32 0, align 4
@I915_RING_FREE_SPACE = common dso_local global i64 0, align 8
@I915_BOX_RING_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_kernel_lost_context(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.drm_i915_master_private*, align 8
  %5 = alloca %struct.intel_ring_buffer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.intel_ring_buffer* @LP_RING(i32* %9)
  store %struct.intel_ring_buffer* %10, %struct.intel_ring_buffer** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = load i32, i32* @DRIVER_MODESET, align 4
  %13 = call i64 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %18 = call i32 @I915_READ_HEAD(%struct.intel_ring_buffer* %17)
  %19 = load i32, i32* @HEAD_ADDR, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %24 = call i32 @I915_READ_TAIL(%struct.intel_ring_buffer* %23)
  %25 = load i32, i32* @TAIL_ADDR, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @I915_RING_FREE_SPACE, align 8
  %38 = add nsw i64 %36, %37
  %39 = sub nsw i64 %32, %38
  %40 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %16
  %47 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %46, %16
  %55 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %90

62:                                               ; preds = %54
  %63 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %68, align 8
  store %struct.drm_i915_master_private* %69, %struct.drm_i915_master_private** %4, align 8
  %70 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %62
  %78 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %4, align 8
  %79 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* @I915_BOX_RING_EMPTY, align 4
  %84 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %4, align 8
  %85 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %15, %61, %82, %77, %62
  ret void
}

declare dso_local %struct.intel_ring_buffer* @LP_RING(i32*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @I915_READ_HEAD(%struct.intel_ring_buffer*) #1

declare dso_local i32 @I915_READ_TAIL(%struct.intel_ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
