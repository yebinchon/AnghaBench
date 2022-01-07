; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_edp_panel_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_set_edp_panel_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.radeon_connector = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.dig_transmitter_control = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@UNIPHYTransmitterControl = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@ATOM_TRANSMITTER_ACTION_POWER_ON = common dso_local global i32 0, align 4
@ATOM_TRANSMITTER_ACTION_POWER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atombios_set_edp_panel_power(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_connector*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %union.dig_transmitter_control, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %14)
  store %struct.radeon_connector* %15, %struct.radeon_connector** %6, align 8
  %16 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %8, align 8
  %23 = load i32, i32* @COMMAND, align 4
  %24 = load i32, i32* @UNIPHYTransmitterControl, align 4
  %25 = call i32 @GetIndexIntoMasterTable(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %90

32:                                               ; preds = %2
  %33 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %34 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %90

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_OFF, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %90

46:                                               ; preds = %41, %37
  %47 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @atom_parse_cmd_header(i32 %50, i32 %51, i32* %11, i32* %12)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %90

55:                                               ; preds = %46
  %56 = call i32 @memset(%union.dig_transmitter_control* %9, i32 0, i32 4)
  %57 = load i32, i32* %5, align 4
  %58 = bitcast %union.dig_transmitter_control* %9 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = bitcast %union.dig_transmitter_control* %9 to i32*
  %66 = call i32 @atom_execute_table(i32 %63, i32 %64, i32* %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @ATOM_TRANSMITTER_ACTION_POWER_ON, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 300
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %76 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @radeon_hpd_sense(%struct.radeon_device* %75, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %91

83:                                               ; preds = %74
  %84 = call i32 @mdelay(i32 1)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %71

88:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %91

89:                                               ; preds = %55
  br label %90

90:                                               ; preds = %89, %54, %45, %36, %31
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %88, %82
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%union.dig_transmitter_control*, i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i64 @radeon_hpd_sense(%struct.radeon_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
