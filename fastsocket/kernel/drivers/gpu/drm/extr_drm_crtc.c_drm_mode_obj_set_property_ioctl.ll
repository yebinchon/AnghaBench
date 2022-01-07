; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_obj_set_property_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_obj_set_property_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_obj_set_property = type { i64, i64, i32, i32 }
%struct.drm_mode_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.drm_property = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_PROPERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_obj_set_property_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_obj_set_property*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_mode_object*, align 8
  %11 = alloca %struct.drm_property*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_mode_obj_set_property*
  store %struct.drm_mode_obj_set_property* %15, %struct.drm_mode_obj_set_property** %8, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_MODESET, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %132

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = call i32 @drm_modeset_lock_all(%struct.drm_device* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %30 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %33 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %28, i64 %31, i32 %34)
  store %struct.drm_mode_object* %35, %struct.drm_mode_object** %9, align 8
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %37 = icmp ne %struct.drm_mode_object* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %128

39:                                               ; preds = %25
  %40 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %41 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %128

45:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %49 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %46
  %55 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %56 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %65 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %73

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %46

73:                                               ; preds = %68, %46
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %76 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %128

82:                                               ; preds = %73
  %83 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %84 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %85 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @DRM_MODE_OBJECT_PROPERTY, align 4
  %88 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %83, i64 %86, i32 %87)
  store %struct.drm_mode_object* %88, %struct.drm_mode_object** %10, align 8
  %89 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %90 = icmp ne %struct.drm_mode_object* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %128

92:                                               ; preds = %82
  %93 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %94 = call %struct.drm_property* @obj_to_property(%struct.drm_mode_object* %93)
  store %struct.drm_property* %94, %struct.drm_property** %11, align 8
  %95 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %96 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %97 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @drm_property_change_is_valid(%struct.drm_property* %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %128

102:                                              ; preds = %92
  %103 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %104 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %127 [
    i32 130, label %106
    i32 129, label %113
    i32 128, label %120
  ]

106:                                              ; preds = %102
  %107 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %108 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %109 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %110 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @drm_mode_connector_set_obj_prop(%struct.drm_mode_object* %107, %struct.drm_property* %108, i32 %111)
  store i32 %112, i32* %12, align 4
  br label %127

113:                                              ; preds = %102
  %114 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %115 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %116 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %117 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object* %114, %struct.drm_property* %115, i32 %118)
  store i32 %119, i32* %12, align 4
  br label %127

120:                                              ; preds = %102
  %121 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %122 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %123 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %124 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @drm_mode_plane_set_obj_prop(%struct.drm_mode_object* %121, %struct.drm_property* %122, i32 %125)
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %102, %120, %113, %106
  br label %128

128:                                              ; preds = %127, %101, %91, %81, %44, %38
  %129 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %130 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i64, i32) #1

declare dso_local %struct.drm_property* @obj_to_property(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_property_change_is_valid(%struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_connector_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_plane_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
