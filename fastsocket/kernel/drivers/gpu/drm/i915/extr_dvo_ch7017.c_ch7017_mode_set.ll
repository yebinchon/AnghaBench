; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ch7017.c_ch7017_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ch7017.c_ch7017_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Registers before mode setting\0A\00", align 1
@CH7017_LVDS_CHANNEL_A = common dso_local global i32 0, align 4
@CH7017_CHARGE_PUMP_LOW = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_FEEDBACK_DEFAULT_RESERVED = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_FEED_BACK_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_FEED_FORWARD_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_VCO_DEFAULT_RESERVED = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_VCO_SHIFT = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_POST_SCALE_DIV_SHIFT = common dso_local global i32 0, align 4
@CH7017_LOOP_FILTER_SHIFT = common dso_local global i32 0, align 4
@CH7017_PHASE_DETECTOR_SHIFT = common dso_local global i32 0, align 4
@CH7017_CHARGE_PUMP_HIGH = common dso_local global i32 0, align 4
@CH7017_LVDS_CHANNEL_B = common dso_local global i32 0, align 4
@CH7017_LVDS_POWER_DOWN_DEFAULT_RESERVED = common dso_local global i32 0, align 4
@CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT = common dso_local global i32 0, align 4
@CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT = common dso_local global i32 0, align 4
@CH7017_VERTICAL_ACTIVE_LINE_OUTPUT = common dso_local global i32 0, align 4
@CH7017_ACTIVE_INPUT_LINE_OUTPUT = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_VCO_CONTROL = common dso_local global i32 0, align 4
@CH7017_LVDS_PLL_FEEDBACK_DIV = common dso_local global i32 0, align 4
@CH7017_LVDS_CONTROL_2 = common dso_local global i32 0, align 4
@CH7017_OUTPUTS_ENABLE = common dso_local global i32 0, align 4
@CH7017_LVDS_POWER_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Registers after mode setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @ch7017_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7017_mode_set(%struct.intel_dvo_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %16 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %18 = call i32 @ch7017_dump_regs(%struct.intel_dvo_device* %17)
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 100000
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @CH7017_LVDS_CHANNEL_A, align 4
  %25 = load i32, i32* @CH7017_CHARGE_PUMP_LOW, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CH7017_LVDS_PLL_FEEDBACK_DEFAULT_RESERVED, align 4
  %28 = load i32, i32* @CH7017_LVDS_PLL_FEED_BACK_DIVIDER_SHIFT, align 4
  %29 = shl i32 2, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @CH7017_LVDS_PLL_FEED_FORWARD_DIVIDER_SHIFT, align 4
  %32 = shl i32 13, %31
  %33 = or i32 %30, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @CH7017_LVDS_PLL_VCO_DEFAULT_RESERVED, align 4
  %35 = load i32, i32* @CH7017_LVDS_PLL_VCO_SHIFT, align 4
  %36 = shl i32 2, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @CH7017_LVDS_PLL_POST_SCALE_DIV_SHIFT, align 4
  %39 = shl i32 3, %38
  %40 = or i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @CH7017_LOOP_FILTER_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @CH7017_PHASE_DETECTOR_SHIFT, align 4
  %44 = shl i32 0, %43
  %45 = or i32 %42, %44
  store i32 %45, i32* %10, align 4
  br label %72

46:                                               ; preds = %3
  %47 = load i32, i32* @CH7017_LVDS_CHANNEL_A, align 4
  %48 = load i32, i32* @CH7017_CHARGE_PUMP_HIGH, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @CH7017_LVDS_PLL_FEEDBACK_DEFAULT_RESERVED, align 4
  %51 = load i32, i32* @CH7017_LVDS_PLL_FEED_BACK_DIVIDER_SHIFT, align 4
  %52 = shl i32 2, %51
  %53 = or i32 %50, %52
  %54 = load i32, i32* @CH7017_LVDS_PLL_FEED_FORWARD_DIVIDER_SHIFT, align 4
  %55 = shl i32 3, %54
  %56 = or i32 %53, %55
  store i32 %56, i32* %7, align 4
  store i32 35, i32* %7, align 4
  %57 = load i32, i32* @CH7017_LOOP_FILTER_SHIFT, align 4
  %58 = shl i32 3, %57
  %59 = load i32, i32* @CH7017_PHASE_DETECTOR_SHIFT, align 4
  %60 = shl i32 0, %59
  %61 = or i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* @CH7017_LVDS_CHANNEL_B, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @CH7017_LVDS_PLL_VCO_DEFAULT_RESERVED, align 4
  %66 = load i32, i32* @CH7017_LVDS_PLL_VCO_SHIFT, align 4
  %67 = shl i32 2, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @CH7017_LVDS_PLL_POST_SCALE_DIV_SHIFT, align 4
  %70 = shl i32 13, %69
  %71 = or i32 %68, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %46, %23
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  store i32 %76, i32* %12, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  store i32 %80, i32* %14, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 255
  store i32 %84, i32* %13, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1792
  %89 = ashr i32 %88, 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 1792
  %94 = ashr i32 %93, 8
  %95 = shl i32 %94, 3
  %96 = or i32 %89, %95
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* @CH7017_LVDS_POWER_DOWN_DEFAULT_RESERVED, align 4
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 1792
  %102 = ashr i32 %101, 8
  %103 = or i32 %97, %102
  store i32 %103, i32* %11, align 4
  %104 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %105 = call i32 @ch7017_dpms(%struct.intel_dvo_device* %104, i32 0)
  %106 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %107 = load i32, i32* @CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @ch7017_write(%struct.intel_dvo_device* %106, i32 %107, i32 %108)
  %110 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %111 = load i32, i32* @CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @ch7017_write(%struct.intel_dvo_device* %110, i32 %111, i32 %112)
  %114 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %115 = load i32, i32* @CH7017_VERTICAL_ACTIVE_LINE_OUTPUT, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @ch7017_write(%struct.intel_dvo_device* %114, i32 %115, i32 %116)
  %118 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %119 = load i32, i32* @CH7017_ACTIVE_INPUT_LINE_OUTPUT, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @ch7017_write(%struct.intel_dvo_device* %118, i32 %119, i32 %120)
  %122 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %123 = load i32, i32* @CH7017_LVDS_PLL_VCO_CONTROL, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @ch7017_write(%struct.intel_dvo_device* %122, i32 %123, i32 %124)
  %126 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %127 = load i32, i32* @CH7017_LVDS_PLL_FEEDBACK_DIV, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @ch7017_write(%struct.intel_dvo_device* %126, i32 %127, i32 %128)
  %130 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %131 = load i32, i32* @CH7017_LVDS_CONTROL_2, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ch7017_write(%struct.intel_dvo_device* %130, i32 %131, i32 %132)
  %134 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %135 = load i32, i32* @CH7017_OUTPUTS_ENABLE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @ch7017_write(%struct.intel_dvo_device* %134, i32 %135, i32 %136)
  %138 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %139 = load i32, i32* @CH7017_LVDS_POWER_DOWN, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @ch7017_write(%struct.intel_dvo_device* %138, i32 %139, i32 %140)
  %142 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %143 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %144 = call i32 @ch7017_dump_regs(%struct.intel_dvo_device* %143)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @ch7017_dump_regs(%struct.intel_dvo_device*) #1

declare dso_local i32 @ch7017_dpms(%struct.intel_dvo_device*, i32) #1

declare dso_local i32 @ch7017_write(%struct.intel_dvo_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
