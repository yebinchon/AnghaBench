; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i915_gpu_turbo_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i915_gpu_turbo_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@i915_mch_dev = common dso_local global %struct.drm_i915_private* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gpu_turbo_disable() #0 {
  %1 = alloca %struct.drm_i915_private*, align 8
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = call i32 @spin_lock_irq(i32* @mchdev_lock)
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** @i915_mch_dev, align 8
  %5 = icmp ne %struct.drm_i915_private* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %27

7:                                                ; preds = %0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** @i915_mch_dev, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %1, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %1, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %1, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %1, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %1, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ironlake_set_drps(i32 %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %7
  br label %27

27:                                               ; preds = %26, %6
  %28 = call i32 @spin_unlock_irq(i32* @mchdev_lock)
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ironlake_set_drps(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
