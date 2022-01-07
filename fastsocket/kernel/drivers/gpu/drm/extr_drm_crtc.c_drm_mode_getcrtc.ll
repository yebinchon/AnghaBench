; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_getcrtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_getcrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_crtc = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.drm_crtc = type { i32, i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.drm_mode_object = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getcrtc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_crtc*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.drm_mode_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_crtc*
  store %struct.drm_mode_crtc* %13, %struct.drm_mode_crtc** %8, align 8
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
  br label %90

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = call i32 @drm_modeset_lock_all(%struct.drm_device* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %26 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %29 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %24, i32 %27, i32 %28)
  store %struct.drm_mode_object* %29, %struct.drm_mode_object** %10, align 8
  %30 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %31 = icmp ne %struct.drm_mode_object* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %86

35:                                               ; preds = %21
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %37 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %36)
  store %struct.drm_crtc* %37, %struct.drm_crtc** %9, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %42 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %47 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %52 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %54 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %35
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %65 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %69

66:                                               ; preds = %35
  %67 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %68 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %71 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %76 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %75, i32 0, i32 1
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %78 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %77, i32 0, i32 0
  %79 = call i32 @drm_crtc_convert_to_umode(i32* %76, i32* %78)
  %80 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %81 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %85

82:                                               ; preds = %69
  %83 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %84 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %74
  br label %86

86:                                               ; preds = %85, %32
  %87 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %88 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %18
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_crtc_convert_to_umode(i32*, i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
