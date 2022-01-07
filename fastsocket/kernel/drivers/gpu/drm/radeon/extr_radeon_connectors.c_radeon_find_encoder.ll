; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_find_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_find_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i64*, i32 }
%struct.drm_mode_object = type { i32 }

@DRM_CONNECTOR_MAX_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.drm_connector*, i32)* @radeon_find_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @radeon_find_encoder(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_mode_object*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @DRM_CONNECTOR_MAX_ENCODER, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %53

23:                                               ; preds = %13
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %35 = call %struct.drm_mode_object* @drm_mode_object_find(i32 %26, i64 %33, i32 %34)
  store %struct.drm_mode_object* %35, %struct.drm_mode_object** %6, align 8
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %37 = icmp ne %struct.drm_mode_object* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %50

39:                                               ; preds = %23
  %40 = load %struct.drm_mode_object*, %struct.drm_mode_object** %6, align 8
  %41 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %40)
  store %struct.drm_encoder* %41, %struct.drm_encoder** %7, align 8
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %43 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  store %struct.drm_encoder* %48, %struct.drm_encoder** %3, align 8
  br label %54

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %9

53:                                               ; preds = %22, %9
  store %struct.drm_encoder* null, %struct.drm_encoder** %3, align 8
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %55
}

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(i32, i64, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
