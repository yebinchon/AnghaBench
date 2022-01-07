; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c___i915_drm_thaw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c___i915_drm_thaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@MODESET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @__i915_drm_thaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i915_drm_thaw(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i32 @i915_restore_state(%struct.drm_device* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i32 @intel_opregion_setup(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = load i32, i32* @DRIVER_MODESET, align 4
  %14 = call i64 @drm_core_check_feature(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i32 @intel_init_pch_refclk(%struct.drm_device* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i32 @i915_gem_init_hw(%struct.drm_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = call i32 @drm_irq_install(%struct.drm_device* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i32 @intel_modeset_init_hw(%struct.drm_device* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = call i32 @intel_modeset_setup_hw_state(%struct.drm_device* %34, i32 0)
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = call i32 @intel_hpd_init(%struct.drm_device* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %16, %1
  %41 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %42 = call i32 @intel_opregion_init(%struct.drm_device* %41)
  %43 = call i64 (...) @console_trylock()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %47 = call i32 @intel_fbdev_set_suspend(%struct.drm_device* %46, i32 0)
  %48 = call i32 (...) @console_unlock()
  br label %53

49:                                               ; preds = %40
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 3
  %52 = call i32 @schedule_work(i32* %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load i32, i32* @MODESET_DONE, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @i915_restore_state(%struct.drm_device*) #1

declare dso_local i32 @intel_opregion_setup(%struct.drm_device*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_init_pch_refclk(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_init_hw(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*) #1

declare dso_local i32 @intel_modeset_init_hw(%struct.drm_device*) #1

declare dso_local i32 @intel_modeset_setup_hw_state(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_hpd_init(%struct.drm_device*) #1

declare dso_local i32 @intel_opregion_init(%struct.drm_device*) #1

declare dso_local i64 @console_trylock(...) #1

declare dso_local i32 @intel_fbdev_set_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
