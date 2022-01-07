; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_tmds_sink_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_tmds_sink_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_sdvo = type { i32, i32, i32, i32, i64 }
%struct.edid = type { i32 }
%struct.intel_sdvo_connector = type { i64 }

@connector_status_unknown = common dso_local global i32 0, align 4
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_sdvo_tmds_sink_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_tmds_sink_detect(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %9)
  store %struct.intel_sdvo* %10, %struct.intel_sdvo** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %11)
  store %struct.edid* %12, %struct.edid** %5, align 8
  %13 = load %struct.edid*, %struct.edid** %5, align 8
  %14 = icmp eq %struct.edid* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %17 = call i64 @intel_sdvo_multifunc_encoder(%struct.intel_sdvo* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %21 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %40, %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %33 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %35 = call %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector* %34)
  store %struct.edid* %35, %struct.edid** %5, align 8
  %36 = load %struct.edid*, %struct.edid** %5, align 8
  %37 = icmp ne %struct.edid* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %27

43:                                               ; preds = %38, %27
  %44 = load %struct.edid*, %struct.edid** %5, align 8
  %45 = icmp eq %struct.edid* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %15, %1
  %52 = load %struct.edid*, %struct.edid** %5, align 8
  %53 = icmp eq %struct.edid* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %56 = call %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector* %55)
  store %struct.edid* %56, %struct.edid** %5, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @connector_status_unknown, align 4
  store i32 %58, i32* %4, align 4
  %59 = load %struct.edid*, %struct.edid** %5, align 8
  %60 = icmp ne %struct.edid* %59, null
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load %struct.edid*, %struct.edid** %5, align 8
  %63 = getelementptr inbounds %struct.edid, %struct.edid* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load i32, i32* @connector_status_connected, align 4
  store i32 %69, i32* %4, align 4
  %70 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %71 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.edid*, %struct.edid** %5, align 8
  %76 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %75)
  %77 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %78 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.edid*, %struct.edid** %5, align 8
  %80 = call i32 @drm_detect_monitor_audio(%struct.edid* %79)
  %81 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %82 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.edid*, %struct.edid** %5, align 8
  %84 = call i32 @drm_rgb_quant_range_selectable(%struct.edid* %83)
  %85 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %86 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %74, %68
  br label %90

88:                                               ; preds = %61
  %89 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load %struct.edid*, %struct.edid** %5, align 8
  %92 = call i32 @kfree(%struct.edid* %91)
  br label %93

93:                                               ; preds = %90, %57
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @connector_status_connected, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %99 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %98)
  store %struct.intel_sdvo_connector* %99, %struct.intel_sdvo_connector** %8, align 8
  %100 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %101 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %8, align 8
  %107 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %113 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %105, %97
  br label %115

115:                                              ; preds = %114, %93
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.edid* @intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local i64 @intel_sdvo_multifunc_encoder(%struct.intel_sdvo*) #1

declare dso_local %struct.edid* @intel_sdvo_get_analog_edid(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @drm_rgb_quant_range_selectable(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
