; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@VR40_STALL_ENABLE = common dso_local global i32 0, align 4
@VR40_VERTICAL_INTERP_ENABLE = common dso_local global i32 0, align 4
@VR40_HORIZONTAL_INTERP_ENABLE = common dso_local global i32 0, align 4
@VR01_PANEL_FIT_ENABLE = common dso_local global i32 0, align 4
@VR40_CLOCK_GATING_ENABLE = common dso_local global i32 0, align 4
@VR42 = common dso_local global i32 0, align 4
@VR41 = common dso_local global i32 0, align 4
@VR40_AUTO_RATIO_ENABLE = common dso_local global i32 0, align 4
@VR01 = common dso_local global i32 0, align 4
@VR40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @ivch_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivch_mode_set(%struct.intel_dvo_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @VR40_STALL_ENABLE, align 4
  %12 = load i32, i32* @VR40_VERTICAL_INTERP_ENABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VR40_HORIZONTAL_INTERP_ENABLE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %23, %3
  %32 = load i32, i32* @VR01_PANEL_FIT_ENABLE, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @VR40_CLOCK_GATING_ENABLE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 %41, 16
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sdiv i32 %42, %46
  %48 = ashr i32 %47, 2
  store i32 %48, i32* %9, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 %52, 16
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sdiv i32 %53, %57
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %10, align 4
  %60 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %61 = load i32, i32* @VR42, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ivch_write(%struct.intel_dvo_device* %60, i32 %61, i32 %62)
  %64 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %65 = load i32, i32* @VR41, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @ivch_write(%struct.intel_dvo_device* %64, i32 %65, i32 %66)
  br label %77

68:                                               ; preds = %23
  %69 = load i32, i32* @VR01_PANEL_FIT_ENABLE, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @VR40_CLOCK_GATING_ENABLE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %68, %31
  %78 = load i32, i32* @VR40_AUTO_RATIO_ENABLE, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %83 = load i32, i32* @VR01, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ivch_write(%struct.intel_dvo_device* %82, i32 %83, i32 %84)
  %86 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %87 = load i32, i32* @VR40, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ivch_write(%struct.intel_dvo_device* %86, i32 %87, i32 %88)
  %90 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %91 = call i32 @ivch_dump_regs(%struct.intel_dvo_device* %90)
  ret void
}

declare dso_local i32 @ivch_write(%struct.intel_dvo_device*, i32, i32) #1

declare dso_local i32 @ivch_dump_regs(%struct.intel_dvo_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
