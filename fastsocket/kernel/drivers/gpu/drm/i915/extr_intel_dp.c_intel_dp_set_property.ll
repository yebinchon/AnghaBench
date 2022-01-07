; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.drm_i915_private* }
%struct.TYPE_5__ = type { %struct.drm_property* }
%struct.drm_i915_private = type { %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.intel_connector = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_encoder = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.intel_dp = type { i32, i32, i32, i32 }

@HDMI_AUDIO_AUTO = common dso_local global i32 0, align 4
@HDMI_AUDIO_ON = common dso_local global i32 0, align 4
@DP_COLOR_RANGE_16_235 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no scaling not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @intel_dp_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_connector*, align 8
  %10 = alloca %struct.intel_encoder*, align 8
  %11 = alloca %struct.intel_dp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %20)
  store %struct.intel_connector* %21, %struct.intel_connector** %9, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %23 = call %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector* %22)
  store %struct.intel_encoder* %23, %struct.intel_encoder** %10, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %10, align 8
  %25 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %24, i32 0, i32 0
  %26 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_8__* %25)
  store %struct.intel_dp* %26, %struct.intel_dp** %11, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 1
  %29 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @drm_object_property_set_value(i32* %28, %struct.drm_property* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %152

36:                                               ; preds = %3
  %37 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 1
  %40 = load %struct.drm_property*, %struct.drm_property** %39, align 8
  %41 = icmp eq %struct.drm_property* %37, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %152

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %53 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @HDMI_AUDIO_AUTO, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %59 = call i32 @intel_dp_detect_audio(%struct.drm_connector* %58)
  store i32 %59, i32* %14, align 4
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @HDMI_AUDIO_ON, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %68 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %152

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %139

76:                                               ; preds = %36
  %77 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = load %struct.drm_property*, %struct.drm_property** %79, align 8
  %81 = icmp eq %struct.drm_property* %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %98 [
    i32 130, label %84
    i32 129, label %87
    i32 128, label %92
  ]

84:                                               ; preds = %82
  %85 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %86 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  br label %101

87:                                               ; preds = %82
  %88 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %89 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %88, i32 0, i32 2
  store i32 0, i32* %89, align 4
  %90 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %91 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  br label %101

92:                                               ; preds = %82
  %93 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %94 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @DP_COLOR_RANGE_16_235, align 4
  %96 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %97 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %101

98:                                               ; preds = %82
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %152

101:                                              ; preds = %92, %87, %84
  br label %139

102:                                              ; preds = %76
  %103 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %104 = call i64 @is_edp(%struct.intel_dp* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %102
  %107 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %108 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %109 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.drm_property*, %struct.drm_property** %112, align 8
  %114 = icmp eq %struct.drm_property* %107, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %152

123:                                              ; preds = %115
  %124 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %125 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %152

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %134 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  br label %139

136:                                              ; preds = %106, %102
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %152

139:                                              ; preds = %131, %101, %72
  %140 = load %struct.intel_encoder*, %struct.intel_encoder** %10, align 8
  %141 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.intel_encoder*, %struct.intel_encoder** %10, align 8
  %147 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @intel_crtc_restore_mode(i64 %149)
  br label %151

151:                                              ; preds = %145, %139
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %136, %130, %119, %98, %71, %49, %34
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, %struct.drm_property*, i32) #1

declare dso_local i32 @intel_dp_detect_audio(%struct.drm_connector*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_crtc_restore_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
