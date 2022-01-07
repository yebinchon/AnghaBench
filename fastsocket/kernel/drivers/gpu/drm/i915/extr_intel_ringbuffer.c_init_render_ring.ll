; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_render_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_init_render_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MI_MODE = common dso_local global i32 0, align 4
@VS_TIMER_DISPATCH = common dso_local global i32 0, align 4
@ASYNC_FLIP_PERF_DISABLE = common dso_local global i32 0, align 4
@GFX_MODE = common dso_local global i32 0, align 4
@GFX_TLB_INVALIDATE_ALWAYS = common dso_local global i32 0, align 4
@GFX_MODE_GEN7 = common dso_local global i32 0, align 4
@GFX_REPLAY_MODE = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@CM0_STC_EVICT_DISABLE_LRA_SNB = common dso_local global i32 0, align 4
@INSTPM = common dso_local global i32 0, align 4
@INSTPM_FORCE_ORDERING = common dso_local global i32 0, align 4
@GEN6_RENDER_L3_PARITY_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @init_render_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_render_ring(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %14 = call i32 @init_ring_common(%struct.intel_ring_buffer* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @MI_MODE, align 4
  %22 = load i32, i32* @VS_TIMER_DISPATCH, align 4
  %23 = call i32 @_MASKED_BIT_ENABLE(i32 %22)
  %24 = call i32 @I915_WRITE(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 6
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @MI_MODE, align 4
  %33 = load i32, i32* @ASYNC_FLIP_PERF_DISABLE, align 4
  %34 = call i32 @_MASKED_BIT_ENABLE(i32 %33)
  %35 = call i32 @I915_WRITE(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @GFX_MODE, align 4
  %44 = load i32, i32* @GFX_TLB_INVALIDATE_ALWAYS, align 4
  %45 = call i32 @_MASKED_BIT_ENABLE(i32 %44)
  %46 = call i32 @I915_WRITE(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = call i64 @IS_GEN7(%struct.drm_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* @GFX_MODE_GEN7, align 4
  %53 = load i32, i32* @GFX_TLB_INVALIDATE_ALWAYS, align 4
  %54 = call i32 @_MASKED_BIT_DISABLE(i32 %53)
  %55 = load i32, i32* @GFX_REPLAY_MODE, align 4
  %56 = call i32 @_MASKED_BIT_ENABLE(i32 %55)
  %57 = or i32 %54, %56
  %58 = call i32 @I915_WRITE(i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %51, %47
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 5
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %67 = call i32 @init_pipe_control(%struct.intel_ring_buffer* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %114

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = call i64 @IS_GEN6(%struct.drm_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i32, i32* @CACHE_MODE_0, align 4
  %79 = load i32, i32* @CM0_STC_EVICT_DISABLE_LRA_SNB, align 4
  %80 = call i32 @_MASKED_BIT_DISABLE(i32 %79)
  %81 = call i32 @I915_WRITE(i32 %78, i32 %80)
  %82 = load i32, i32* @GFX_MODE, align 4
  %83 = call i32 @I915_READ(i32 %82)
  %84 = load i32, i32* @GFX_TLB_INVALIDATE_ALWAYS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %91 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %77, %73
  %93 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %94 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 6
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* @INSTPM, align 4
  %100 = load i32, i32* @INSTPM_FORCE_ORDERING, align 4
  %101 = call i32 @_MASKED_BIT_ENABLE(i32 %100)
  %102 = call i32 @I915_WRITE(i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %98, %92
  %104 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %105 = call i64 @HAS_L3_GPU_CACHE(%struct.drm_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %109 = load i32, i32* @GEN6_RENDER_L3_PARITY_ERROR, align 4
  %110 = xor i32 %109, -1
  %111 = call i32 @I915_WRITE_IMR(%struct.intel_ring_buffer* %108, i32 %110)
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %70
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @init_ring_common(%struct.intel_ring_buffer*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @init_pipe_control(%struct.intel_ring_buffer*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_L3_GPU_CACHE(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE_IMR(%struct.intel_ring_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
