; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i915_read_mch_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i915_read_mch_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@i915_mch_dev = common dso_local global %struct.drm_i915_private* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i915_read_mch_val() #0 {
  %1 = alloca %struct.drm_i915_private*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @spin_lock_irq(i32* @mchdev_lock)
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** @i915_mch_dev, align 8
  %7 = icmp ne %struct.drm_i915_private* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %18

9:                                                ; preds = %0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** @i915_mch_dev, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %1, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %1, align 8
  %12 = call i64 @__i915_chipset_val(%struct.drm_i915_private* %11)
  store i64 %12, i64* %2, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %1, align 8
  %14 = call i64 @__i915_gfx_val(%struct.drm_i915_private* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %9, %8
  %19 = call i32 @spin_unlock_irq(i32* @mchdev_lock)
  %20 = load i64, i64* %4, align 8
  ret i64 %20
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @__i915_chipset_val(%struct.drm_i915_private*) #1

declare dso_local i64 @__i915_gfx_val(%struct.drm_i915_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
