; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.intel_hdmi = type { i32, i32, i32, i32, i64 }
%struct.intel_digital_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@HDMI_AUDIO_AUTO = common dso_local global i32 0, align 4
@HDMI_AUDIO_ON = common dso_local global i32 0, align 4
@HDMI_AUDIO_OFF_DVI = common dso_local global i32 0, align 4
@SDVO_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @intel_hdmi_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_hdmi*, align 8
  %9 = alloca %struct.intel_digital_port*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %14)
  store %struct.intel_hdmi* %15, %struct.intel_hdmi** %8, align 8
  %16 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %17 = call %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi* %16)
  store %struct.intel_digital_port* %17, %struct.intel_digital_port** %9, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %21, align 8
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %10, align 8
  %23 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 0
  %25 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @drm_object_property_set_value(i32* %24, %struct.drm_property* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %116

32:                                               ; preds = %3
  %33 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 1
  %36 = load %struct.drm_property*, %struct.drm_property** %35, align 8
  %37 = icmp eq %struct.drm_property* %33, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %42 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %116

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %49 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @HDMI_AUDIO_AUTO, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %55 = call i32 @intel_hdmi_detect_audio(%struct.drm_connector* %54)
  store i32 %55, i32* %13, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @HDMI_AUDIO_ON, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @HDMI_AUDIO_OFF_DVI, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %67 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %71 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %101

72:                                               ; preds = %32
  %73 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = load %struct.drm_property*, %struct.drm_property** %75, align 8
  %77 = icmp eq %struct.drm_property* %73, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  switch i32 %79, label %94 [
    i32 130, label %80
    i32 129, label %83
    i32 128, label %88
  ]

80:                                               ; preds = %78
  %81 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %82 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  br label %97

83:                                               ; preds = %78
  %84 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %85 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %87 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  br label %97

88:                                               ; preds = %78
  %89 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %90 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load i32, i32* @SDVO_COLOR_RANGE_16_235, align 4
  %92 = load %struct.intel_hdmi*, %struct.intel_hdmi** %8, align 8
  %93 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %116

97:                                               ; preds = %88, %83, %80
  br label %101

98:                                               ; preds = %72
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %116

101:                                              ; preds = %97, %68
  %102 = load %struct.intel_digital_port*, %struct.intel_digital_port** %9, align 8
  %103 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.intel_digital_port*, %struct.intel_digital_port** %9, align 8
  %110 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @intel_crtc_restore_mode(i64 %113)
  br label %115

115:                                              ; preds = %108, %101
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %98, %94, %45, %30
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, %struct.drm_property*, i32) #1

declare dso_local i32 @intel_hdmi_detect_audio(%struct.drm_connector*) #1

declare dso_local i32 @intel_crtc_restore_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
