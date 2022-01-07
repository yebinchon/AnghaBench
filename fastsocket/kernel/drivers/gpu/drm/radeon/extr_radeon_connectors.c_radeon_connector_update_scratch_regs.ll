; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_update_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_update_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64*, %struct.drm_device*, %struct.drm_connector_helper_funcs* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector.0*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_connector.0 = type opaque
%struct.drm_mode_object = type { i32 }

@DRM_CONNECTOR_MAX_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32)* @radeon_connector_update_scratch_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_connector_update_scratch_regs(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_connector_helper_funcs*, align 8
  %10 = alloca %struct.drm_mode_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 2
  %21 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %20, align 8
  store %struct.drm_connector_helper_funcs* %21, %struct.drm_connector_helper_funcs** %9, align 8
  %22 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %9, align 8
  %23 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %22, i32 0, i32 0
  %24 = load %struct.drm_encoder* (%struct.drm_connector.0*)*, %struct.drm_encoder* (%struct.drm_connector.0*)** %23, align 8
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = bitcast %struct.drm_connector* %25 to %struct.drm_connector.0*
  %27 = call %struct.drm_encoder* %24(%struct.drm_connector.0* %26)
  store %struct.drm_encoder* %27, %struct.drm_encoder** %7, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %86, %2
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @DRM_CONNECTOR_MAX_ENCODER, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %28
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %89

42:                                               ; preds = %32
  %43 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 1
  %45 = load %struct.drm_device*, %struct.drm_device** %44, align 8
  %46 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %54 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %45, i64 %52, i32 %53)
  store %struct.drm_mode_object* %54, %struct.drm_mode_object** %10, align 8
  %55 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %56 = icmp ne %struct.drm_mode_object* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %42
  br label %86

58:                                               ; preds = %42
  %59 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %60 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %59)
  store %struct.drm_encoder* %60, %struct.drm_encoder** %8, align 8
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %63 = icmp eq %struct.drm_encoder* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @connector_status_connected, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %11, align 4
  br label %70

69:                                               ; preds = %64, %58
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @radeon_atombios_connected_scratch_regs(%struct.drm_connector* %76, %struct.drm_encoder* %77, i32 %78)
  br label %85

80:                                               ; preds = %70
  %81 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @radeon_combios_connected_scratch_regs(%struct.drm_connector* %81, %struct.drm_encoder* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %57
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %28

89:                                               ; preds = %41, %28
  ret void
}

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i64, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

declare dso_local i32 @radeon_atombios_connected_scratch_regs(%struct.drm_connector*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_combios_connected_scratch_regs(%struct.drm_connector*, %struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
