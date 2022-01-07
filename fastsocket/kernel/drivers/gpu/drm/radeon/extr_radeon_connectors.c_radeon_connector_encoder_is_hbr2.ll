; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_encoder_is_hbr2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_encoder_is_hbr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64*, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { i32 }

@DRM_CONNECTOR_MAX_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@ATOM_ENCODER_CAP_RECORD_HBR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_connector_encoder_is_hbr2(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_mode_object*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @DRM_CONNECTOR_MAX_ENCODER, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %54

22:                                               ; preds = %12
  %23 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %34 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %25, i64 %32, i32 %33)
  store %struct.drm_mode_object* %34, %struct.drm_mode_object** %3, align 8
  %35 = load %struct.drm_mode_object*, %struct.drm_mode_object** %3, align 8
  %36 = icmp ne %struct.drm_mode_object* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  br label %51

38:                                               ; preds = %22
  %39 = load %struct.drm_mode_object*, %struct.drm_mode_object** %3, align 8
  %40 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %39)
  store %struct.drm_encoder* %40, %struct.drm_encoder** %4, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %42 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %41)
  store %struct.radeon_encoder* %42, %struct.radeon_encoder** %5, align 8
  %43 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATOM_ENCODER_CAP_RECORD_HBR2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %8

54:                                               ; preds = %21, %8
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(i32, i64, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
