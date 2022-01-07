; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32, i32, i32, i64, i32 }
%struct.intel_digital_port = type { %struct.intel_encoder }
%struct.intel_encoder = type { i32 }
%struct.edid = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@HDMI_AUDIO_OFF_DVI = common dso_local global i64 0, align 8
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_hdmi_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.edid*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %15)
  store %struct.intel_hdmi* %16, %struct.intel_hdmi** %6, align 8
  %17 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %18 = call %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi* %17)
  store %struct.intel_digital_port* %18, %struct.intel_digital_port** %7, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  store %struct.intel_encoder* %20, %struct.intel_encoder** %8, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %22, align 8
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %9, align 8
  %24 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %26 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %28 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %30 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %33 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %34 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @intel_gmbus_get_adapter(%struct.drm_i915_private* %32, i32 %35)
  %37 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %31, i32 %36)
  store %struct.edid* %37, %struct.edid** %10, align 8
  %38 = load %struct.edid*, %struct.edid** %10, align 8
  %39 = icmp ne %struct.edid* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %2
  %41 = load %struct.edid*, %struct.edid** %10, align 8
  %42 = getelementptr inbounds %struct.edid, %struct.edid* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i32, i32* @connector_status_connected, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %50 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HDMI_AUDIO_OFF_DVI, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.edid*, %struct.edid** %10, align 8
  %56 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %55)
  %57 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %58 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.edid*, %struct.edid** %10, align 8
  %61 = call i32 @drm_detect_monitor_audio(%struct.edid* %60)
  %62 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %63 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.edid*, %struct.edid** %10, align 8
  %65 = call i32 @drm_rgb_quant_range_selectable(%struct.edid* %64)
  %66 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %67 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %59, %40
  %69 = load %struct.edid*, %struct.edid** %10, align 8
  %70 = call i32 @kfree(%struct.edid* %69)
  br label %71

71:                                               ; preds = %68, %2
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @connector_status_connected, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %77 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %83 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %89 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %75
  %91 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %92 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %93 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %71
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i32 @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @drm_rgb_quant_range_selectable(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
