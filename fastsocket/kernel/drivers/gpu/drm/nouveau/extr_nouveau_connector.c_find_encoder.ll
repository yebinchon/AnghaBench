; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_find_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_find_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector = type { i32*, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_mode_object = type { i32 }

@DRM_CONNECTOR_MAX_ENCODER = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4
@DCB_OUTPUT_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_encoder* @find_encoder(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.drm_mode_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @DRM_CONNECTOR_MAX_ENCODER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %58

29:                                               ; preds = %18
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %33 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %30, i32 %31, i32 %32)
  store %struct.drm_mode_object* %33, %struct.drm_mode_object** %8, align 8
  %34 = load %struct.drm_mode_object*, %struct.drm_mode_object** %8, align 8
  %35 = icmp ne %struct.drm_mode_object* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %55

37:                                               ; preds = %29
  %38 = load %struct.drm_mode_object*, %struct.drm_mode_object** %8, align 8
  %39 = call i32 @obj_to_encoder(%struct.drm_mode_object* %38)
  %40 = call %struct.nouveau_encoder* @nouveau_encoder(i32 %39)
  store %struct.nouveau_encoder* %40, %struct.nouveau_encoder** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DCB_OUTPUT_ANY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %46 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %37
  %53 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  store %struct.nouveau_encoder* %53, %struct.nouveau_encoder** %3, align 8
  br label %59

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %14

58:                                               ; preds = %28, %14
  store %struct.nouveau_encoder* null, %struct.nouveau_encoder** %3, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  ret %struct.nouveau_encoder* %60
}

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(i32) #1

declare dso_local i32 @obj_to_encoder(%struct.drm_mode_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
