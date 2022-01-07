; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_getencoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_getencoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_get_encoder = type { i32, i32, i32, i32, i64 }
%struct.drm_mode_object = type { i32 }
%struct.drm_encoder = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getencoder(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_get_encoder*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_get_encoder*
  store %struct.drm_mode_get_encoder* %13, %struct.drm_mode_get_encoder** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load i32, i32* @DRIVER_MODESET, align 4
  %16 = call i32 @drm_core_check_feature(%struct.drm_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = call i32 @drm_modeset_lock_all(%struct.drm_device* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %29 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %24, i32 %27, i32 %28)
  store %struct.drm_mode_object* %29, %struct.drm_mode_object** %9, align 8
  %30 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %31 = icmp ne %struct.drm_mode_object* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %76

35:                                               ; preds = %21
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %37 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %36)
  store %struct.drm_encoder* %37, %struct.drm_encoder** %10, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %39 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %44 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %50 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  br label %54

51:                                               ; preds = %35
  %52 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %53 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %42
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %56 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %59 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %61 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %65 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %67 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %70 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %72 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %75 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %54, %32
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
