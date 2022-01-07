; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i64, %struct.ch7006_state }
%struct.ch7006_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CH7006_DETECT = common dso_local global i32 0, align 4
@CH7006_POWER = common dso_local global i32 0, align 4
@CH7006_CLKMODE = common dso_local global i32 0, align 4
@CH7006_POWER_RESET = common dso_local global i32 0, align 4
@CH7006_POWER_LEVEL = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@CH7006_CLKMODE_MASTER = common dso_local global i32 0, align 4
@CH7006_DETECT_SENSE = common dso_local global i32 0, align 4
@CH7006_DETECT_SVIDEO_Y_TEST = common dso_local global i32 0, align 4
@CH7006_DETECT_SVIDEO_C_TEST = common dso_local global i32 0, align 4
@CH7006_DETECT_CVBS_TEST = common dso_local global i32 0, align 4
@DRM_MODE_SUBCONNECTOR_SCART = common dso_local global i64 0, align 8
@DRM_MODE_SUBCONNECTOR_SVIDEO = common dso_local global i64 0, align 8
@DRM_MODE_SUBCONNECTOR_Composite = common dso_local global i64 0, align 8
@DRM_MODE_SUBCONNECTOR_Unknown = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @ch7006_encoder_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7006_encoder_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ch7006_priv*, align 8
  %7 = alloca %struct.ch7006_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %11)
  store %struct.ch7006_priv* %12, %struct.ch7006_priv** %6, align 8
  %13 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %13, i32 0, i32 1
  store %struct.ch7006_state* %14, %struct.ch7006_state** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = call i32 @ch7006_dbg(%struct.i2c_client* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load %struct.ch7006_state*, %struct.ch7006_state** %7, align 8
  %19 = load i32, i32* @CH7006_DETECT, align 4
  %20 = call i32 @ch7006_save_reg(%struct.i2c_client* %17, %struct.ch7006_state* %18, i32 %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = load %struct.ch7006_state*, %struct.ch7006_state** %7, align 8
  %23 = load i32, i32* @CH7006_POWER, align 4
  %24 = call i32 @ch7006_save_reg(%struct.i2c_client* %21, %struct.ch7006_state* %22, i32 %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load %struct.ch7006_state*, %struct.ch7006_state** %7, align 8
  %27 = load i32, i32* @CH7006_CLKMODE, align 4
  %28 = call i32 @ch7006_save_reg(%struct.i2c_client* %25, %struct.ch7006_state* %26, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @CH7006_POWER, align 4
  %31 = load i32, i32* @CH7006_POWER_RESET, align 4
  %32 = load i32, i32* @CH7006_POWER_LEVEL, align 4
  %33 = load i32, i32* @NORMAL, align 4
  %34 = call i32 @bitfs(i32 %32, i32 %33)
  %35 = or i32 %31, %34
  %36 = call i32 @ch7006_write(%struct.i2c_client* %29, i32 %30, i32 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i32, i32* @CH7006_CLKMODE, align 4
  %39 = load i32, i32* @CH7006_CLKMODE_MASTER, align 4
  %40 = call i32 @ch7006_write(%struct.i2c_client* %37, i32 %38, i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* @CH7006_DETECT, align 4
  %43 = load i32, i32* @CH7006_DETECT_SENSE, align 4
  %44 = call i32 @ch7006_write(%struct.i2c_client* %41, i32 %42, i32 %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = load i32, i32* @CH7006_DETECT, align 4
  %47 = call i32 @ch7006_write(%struct.i2c_client* %45, i32 %46, i32 0)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @CH7006_DETECT, align 4
  %50 = call i32 @ch7006_read(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = load %struct.ch7006_state*, %struct.ch7006_state** %7, align 8
  %53 = load i32, i32* @CH7006_CLKMODE, align 4
  %54 = call i32 @ch7006_load_reg(%struct.i2c_client* %51, %struct.ch7006_state* %52, i32 %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = load %struct.ch7006_state*, %struct.ch7006_state** %7, align 8
  %57 = load i32, i32* @CH7006_POWER, align 4
  %58 = call i32 @ch7006_load_reg(%struct.i2c_client* %55, %struct.ch7006_state* %56, i32 %57)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = load %struct.ch7006_state*, %struct.ch7006_state** %7, align 8
  %61 = load i32, i32* @CH7006_DETECT, align 4
  %62 = call i32 @ch7006_load_reg(%struct.i2c_client* %59, %struct.ch7006_state* %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @CH7006_DETECT_SVIDEO_Y_TEST, align 4
  %65 = load i32, i32* @CH7006_DETECT_SVIDEO_C_TEST, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CH7006_DETECT_CVBS_TEST, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %2
  %72 = load i64, i64* @DRM_MODE_SUBCONNECTOR_SCART, align 8
  %73 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %74 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %101

75:                                               ; preds = %2
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @CH7006_DETECT_SVIDEO_Y_TEST, align 4
  %78 = load i32, i32* @CH7006_DETECT_SVIDEO_C_TEST, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i64, i64* @DRM_MODE_SUBCONNECTOR_SVIDEO, align 8
  %84 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %85 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %100

86:                                               ; preds = %75
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @CH7006_DETECT_CVBS_TEST, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i64, i64* @DRM_MODE_SUBCONNECTOR_Composite, align 8
  %93 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %99

95:                                               ; preds = %86
  %96 = load i64, i64* @DRM_MODE_SUBCONNECTOR_Unknown, align 8
  %97 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %98 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %71
  %102 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %103 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %102, i32 0, i32 0
  %104 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %105 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %111 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @drm_object_property_set_value(i32* %103, i32 %109, i64 %112)
  %114 = load %struct.ch7006_priv*, %struct.ch7006_priv** %6, align 8
  %115 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* @connector_status_connected, align 4
  br label %122

120:                                              ; preds = %101
  %121 = load i32, i32* @connector_status_disconnected, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  ret i32 %123
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*) #1

declare dso_local i32 @ch7006_save_reg(%struct.i2c_client*, %struct.ch7006_state*, i32) #1

declare dso_local i32 @ch7006_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @bitfs(i32, i32) #1

declare dso_local i32 @ch7006_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @ch7006_load_reg(%struct.i2c_client*, %struct.ch7006_state*, i32) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
