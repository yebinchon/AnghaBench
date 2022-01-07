; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_ring_get_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ringbuffer.c_gen6_ring_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring_buffer = type { i64, i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@RCS = common dso_local global i64 0, align 8
@GEN6_RENDER_L3_PARITY_ERROR = common dso_local global i32 0, align 4
@GTIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ring_buffer*)* @gen6_ring_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_ring_get_irq(%struct.intel_ring_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ring_buffer*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store %struct.intel_ring_buffer* %0, %struct.intel_ring_buffer** %3, align 8
  %7 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %7, i32 0, i32 3
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = call i32 @gen6_gt_force_wake_get(%struct.TYPE_3__* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = call i64 @HAS_L3_GPU_CACHE(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RCS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %42 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GEN6_RENDER_L3_PARITY_ERROR, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = call i32 @I915_WRITE_IMR(%struct.intel_ring_buffer* %41, i32 %47)
  br label %56

49:                                               ; preds = %34, %30
  %50 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %51 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %53, -1
  %55 = call i32 @I915_WRITE_IMR(%struct.intel_ring_buffer* %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %40
  %57 = load %struct.intel_ring_buffer*, %struct.intel_ring_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.intel_ring_buffer, %struct.intel_ring_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @GTIMR, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @I915_WRITE(i32 %65, i32 %68)
  %70 = load i32, i32* @GTIMR, align 4
  %71 = call i32 @POSTING_READ(i32 %70)
  br label %72

72:                                               ; preds = %56, %18
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @gen6_gt_force_wake_get(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @HAS_L3_GPU_CACHE(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE_IMR(%struct.intel_ring_buffer*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
