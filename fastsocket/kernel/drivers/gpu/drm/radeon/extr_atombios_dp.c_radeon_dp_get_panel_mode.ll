; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_get_panel_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_get_panel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i64 }
%struct.radeon_connector = type { i32 }

@DP_PANEL_MODE_EXTERNAL_DP_MODE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@DP_EDP_CONFIGURATION_CAP = common dso_local global i32 0, align 4
@DP_PANEL_MODE_INTERNAL_DP2_MODE = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NUTMEG = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_TRAVIS = common dso_local global i64 0, align 8
@DP_PANEL_MODE_INTERNAL_DP1_MODE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_get_panel_mode(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %7, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %19 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %18)
  store %struct.radeon_connector* %19, %struct.radeon_connector** %8, align 8
  %20 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %22 = call i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %74

28:                                               ; preds = %2
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %34 = load i32, i32* @DP_EDP_CONFIGURATION_CAP, align 4
  %35 = call i32 @radeon_read_dpcd_reg(%struct.radeon_connector* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 4
  store i32 %40, i32* %9, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @ENCODER_OBJECT_ID_NUTMEG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @ENCODER_OBJECT_ID_TRAVIS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP1_MODE, align 4
  store i32 %50, i32* %9, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @DP_PANEL_MODE_EXTERNAL_DP_MODE, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %39
  br label %72

55:                                               ; preds = %28
  %56 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %57 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.radeon_connector*, %struct.radeon_connector** %8, align 8
  %63 = load i32, i32* @DP_EDP_CONFIGURATION_CAP, align 4
  %64 = call i32 @radeon_read_dpcd_reg(%struct.radeon_connector* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @DP_PANEL_MODE_INTERNAL_DP2_MODE, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %61
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %26
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @radeon_connector_encoder_get_dp_bridge_encoder_id(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @radeon_read_dpcd_reg(%struct.radeon_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
