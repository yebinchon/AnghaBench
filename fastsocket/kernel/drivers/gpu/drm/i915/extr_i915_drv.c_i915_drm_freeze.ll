; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_drm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MODESET_SUSPENDED = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GEM idle failed, resume might fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i915_drm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_drm_freeze(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @MODESET_SUSPENDED, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call i32 @intel_set_power_well(%struct.drm_device* %18, i32 1)
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @pci_save_state(%struct.TYPE_4__* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = load i32, i32* @DRIVER_MODESET, align 4
  %28 = call i64 @drm_core_check_feature(%struct.drm_device* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %1
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = call i32 @i915_gem_idle(%struct.drm_device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %62

42:                                               ; preds = %30
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @cancel_delayed_work_sync(i32* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = call i32 @intel_modeset_disable(%struct.drm_device* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = call i32 @drm_irq_uninstall(%struct.drm_device* %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %1
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = call i32 @i915_save_state(%struct.drm_device* %54)
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = call i32 @intel_opregion_fini(%struct.drm_device* %56)
  %58 = call i32 (...) @console_lock()
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = call i32 @intel_fbdev_set_suspend(%struct.drm_device* %59, i32 1)
  %61 = call i32 (...) @console_unlock()
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %53, %35
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_set_power_well(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @pci_save_state(%struct.TYPE_4__*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @i915_gem_idle(%struct.drm_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @intel_modeset_disable(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @i915_save_state(%struct.drm_device*) #1

declare dso_local i32 @intel_opregion_fini(%struct.drm_device*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @intel_fbdev_set_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
