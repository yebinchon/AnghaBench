; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_dp = type { i32, i64, i32 }
%struct.intel_digital_port = type { %struct.intel_encoder }
%struct.intel_encoder = type { i64 }
%struct.edid = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@INTEL_OUTPUT_EDP = common dso_local global i64 0, align 8
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @intel_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %12)
  store %struct.intel_dp* %13, %struct.intel_dp** %6, align 8
  %14 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %15 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %14)
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %7, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 0
  store %struct.intel_encoder* %17, %struct.intel_encoder** %8, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %9, align 8
  store %struct.edid* null, %struct.edid** %11, align 8
  %21 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %24 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %28 = call i32 @ironlake_dp_detect(%struct.intel_dp* %27)
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %31 = call i32 @g4x_dp_detect(%struct.intel_dp* %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @connector_status_connected, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %82

38:                                               ; preds = %32
  %39 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %40 = call i32 @intel_dp_probe_oui(%struct.intel_dp* %39)
  %41 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %48 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %54 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %70

55:                                               ; preds = %38
  %56 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %57 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 2
  %59 = call %struct.edid* @intel_dp_get_edid(%struct.drm_connector* %56, i32* %58)
  store %struct.edid* %59, %struct.edid** %11, align 8
  %60 = load %struct.edid*, %struct.edid** %11, align 8
  %61 = icmp ne %struct.edid* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.edid*, %struct.edid** %11, align 8
  %64 = call i32 @drm_detect_monitor_audio(%struct.edid* %63)
  %65 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %66 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.edid*, %struct.edid** %11, align 8
  %68 = call i32 @kfree(%struct.edid* %67)
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %72 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, i64* @INTEL_OUTPUT_DISPLAYPORT, align 8
  %78 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %79 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* @connector_status_connected, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %36
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @ironlake_dp_detect(%struct.intel_dp*) #1

declare dso_local i32 @g4x_dp_detect(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_probe_oui(%struct.intel_dp*) #1

declare dso_local %struct.edid* @intel_dp_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
