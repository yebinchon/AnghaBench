; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_ddc_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_ddc_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.drm_connector = type { i32*, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_encoder = type { %struct.nouveau_i2c_port* }
%struct.nouveau_connector = type { i64 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)* }
%struct.drm_mode_object = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DCB_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DCB_GPIO_PANEL_POWER = common dso_local global i32 0, align 4
@DRM_CONNECTOR_MAX_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_i2c_port* (%struct.drm_connector*, %struct.nouveau_encoder**)* @nouveau_connector_ddc_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_i2c_port* @nouveau_connector_ddc_detect(%struct.drm_connector* %0, %struct.nouveau_encoder** %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_encoder**, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_connector*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_gpio*, align 8
  %9 = alloca %struct.nouveau_i2c_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_encoder*, align 8
  %13 = alloca %struct.drm_mode_object*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.nouveau_encoder** %1, %struct.nouveau_encoder*** %4, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %19 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %18)
  store %struct.nouveau_connector* %19, %struct.nouveau_connector** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %7, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.nouveau_gpio* @nouveau_gpio(i32 %24)
  store %struct.nouveau_gpio* %25, %struct.nouveau_gpio** %8, align 8
  store %struct.nouveau_i2c_port* null, %struct.nouveau_i2c_port** %9, align 8
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %29 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DCB_CONNECTOR_eDP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %2
  %34 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %8, align 8
  %35 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %34, i32 0, i32 0
  %36 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %35, align 8
  %37 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %8, align 8
  %38 = load i32, i32* @DCB_GPIO_PANEL_POWER, align 4
  %39 = call i32 %36(%struct.nouveau_gpio* %37, i32 0, i32 %38, i32 255)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %8, align 8
  %44 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %43, i32 0, i32 1
  %45 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %44, align 8
  %46 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %8, align 8
  %47 = load i32, i32* @DCB_GPIO_PANEL_POWER, align 4
  %48 = call i32 %45(%struct.nouveau_gpio* %46, i32 0, i32 %47, i32 255, i32 1)
  %49 = call i32 @msleep(i32 300)
  br label %50

50:                                               ; preds = %42, %33
  br label %51

51:                                               ; preds = %50, %2
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DRM_CONNECTOR_MAX_ENCODER, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %95

67:                                               ; preds = %56
  %68 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %71 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %68, i32 %69, i32 %70)
  store %struct.drm_mode_object* %71, %struct.drm_mode_object** %13, align 8
  %72 = load %struct.drm_mode_object*, %struct.drm_mode_object** %13, align 8
  %73 = icmp ne %struct.drm_mode_object* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %92

75:                                               ; preds = %67
  %76 = load %struct.drm_mode_object*, %struct.drm_mode_object** %13, align 8
  %77 = call i32 @obj_to_encoder(%struct.drm_mode_object* %76)
  %78 = call %struct.nouveau_encoder* @nouveau_encoder(i32 %77)
  store %struct.nouveau_encoder* %78, %struct.nouveau_encoder** %12, align 8
  %79 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %12, align 8
  %80 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %79, i32 0, i32 0
  %81 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %80, align 8
  store %struct.nouveau_i2c_port* %81, %struct.nouveau_i2c_port** %9, align 8
  %82 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %9, align 8
  %83 = icmp ne %struct.nouveau_i2c_port* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %9, align 8
  %86 = call i64 @nv_probe_i2c(%struct.nouveau_i2c_port* %85, i32 80)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %12, align 8
  %90 = load %struct.nouveau_encoder**, %struct.nouveau_encoder*** %4, align 8
  store %struct.nouveau_encoder* %89, %struct.nouveau_encoder** %90, align 8
  br label %95

91:                                               ; preds = %84, %75
  store %struct.nouveau_i2c_port* null, %struct.nouveau_i2c_port** %9, align 8
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %52

95:                                               ; preds = %88, %66, %52
  %96 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %9, align 8
  %97 = icmp ne %struct.nouveau_i2c_port* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %8, align 8
  %103 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %102, i32 0, i32 1
  %104 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %103, align 8
  %105 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %8, align 8
  %106 = load i32, i32* @DCB_GPIO_PANEL_POWER, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 %104(%struct.nouveau_gpio* %105, i32 0, i32 %106, i32 255, i32 %107)
  br label %109

109:                                              ; preds = %101, %98, %95
  %110 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %9, align 8
  ret %struct.nouveau_i2c_port* %110
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(i32) #1

declare dso_local i32 @obj_to_encoder(%struct.drm_mode_object*) #1

declare dso_local i64 @nv_probe_i2c(%struct.nouveau_i2c_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
