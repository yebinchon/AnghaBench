; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_panel_actually_set_backlight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_intel_panel_actually_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"set backlight PWM = %d\0A\00", align 1
@PCI_LBPC = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @intel_panel_actually_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_panel_actually_set_backlight(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @intel_panel_compute_brightness(%struct.drm_device* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = load i32, i32* %4, align 4
  call void @intel_pch_panel_set_backlight(%struct.drm_device* %21, i32 %22)
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i64 @is_backlight_combination_mode(%struct.drm_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @intel_panel_get_max_backlight(%struct.drm_device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 254
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %31, %32
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCI_LBPC, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @pci_write_config_byte(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %27, %23
  %45 = load i32, i32* @BLC_PWM_CTL, align 4
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @BLC_PWM_CTL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @I915_WRITE(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %55, %20
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.drm_device*, i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local void @intel_pch_panel_set_backlight(%struct.drm_device*, i32) #1

declare dso_local i64 @is_backlight_combination_mode(%struct.drm_device*) #1

declare dso_local i32 @intel_panel_get_max_backlight(%struct.drm_device*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
