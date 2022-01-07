; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dvi_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_dvi_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64 }
%struct.drm_connector = type { i32*, i32 }
%struct.radeon_connector = type { i32 }
%struct.drm_mode_object = type { i32 }

@DRM_CONNECTOR_MAX_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i64 0, align 8
@DRM_MODE_ENCODER_DAC = common dso_local global i64 0, align 8
@DRM_MODE_ENCODER_TVDAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_connector*)* @radeon_dvi_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @radeon_dvi_encoder(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.drm_mode_object*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %14)
  store %struct.radeon_connector* %15, %struct.radeon_connector** %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %78, %1
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DRM_CONNECTOR_MAX_ENCODER, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %16
  %21 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %42 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %33, i32 %40, i32 %41)
  store %struct.drm_mode_object* %42, %struct.drm_mode_object** %6, align 8
  %43 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %44 = icmp ne %struct.drm_mode_object* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  br label %78

46:                                               ; preds = %30
  %47 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %48 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %47)
  store %struct.drm_encoder* %48, %struct.drm_encoder** %7, align 8
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %55 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DRM_MODE_ENCODER_TMDS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %60, %struct.drm_encoder** %2, align 8
  br label %99

61:                                               ; preds = %53
  br label %77

62:                                               ; preds = %46
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %64 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DRM_MODE_ENCODER_DAC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %70 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DRM_MODE_ENCODER_TVDAC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %62
  %75 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %75, %struct.drm_encoder** %2, align 8
  br label %99

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %45
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %16

81:                                               ; preds = %29, %16
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %86 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %90 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %87, i32 %88, i32 %89)
  store %struct.drm_mode_object* %90, %struct.drm_mode_object** %6, align 8
  %91 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %92 = icmp ne %struct.drm_mode_object* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %99

94:                                               ; preds = %84
  %95 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %96 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %95)
  store %struct.drm_encoder* %96, %struct.drm_encoder** %7, align 8
  %97 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %97, %struct.drm_encoder** %2, align 8
  br label %99

98:                                               ; preds = %81
  store %struct.drm_encoder* null, %struct.drm_encoder** %2, align 8
  br label %99

99:                                               ; preds = %98, %94, %93, %74, %59
  %100 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  ret %struct.drm_encoder* %100
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(i32, i32, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
