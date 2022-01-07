; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_panel_get_backlight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_panel_get_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BLC_PWM_CPU_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@PCI_LBPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get backlight PWM = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @intel_panel_get_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_panel_get_backlight(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @BLC_PWM_CPU_CTL, align 4
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load i32, i32* @BLC_PWM_CTL, align 4
  %19 = call i32 @I915_READ(i32 %18)
  %20 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = call i64 @is_backlight_combination_mode(%struct.drm_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PCI_LBPC, align 4
  %39 = call i32 @pci_read_config_byte(i32 %37, i32 %38, i32* %5)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %30
  br label %44

44:                                               ; preds = %43, %12
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @intel_panel_compute_brightness(%struct.drm_device* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @is_backlight_combination_mode(%struct.drm_device*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
