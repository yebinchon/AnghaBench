; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_detachmode_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_detachmode_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_mode_mode_cmd = type { i32, %struct.drm_mode_modeinfo }
%struct.drm_mode_modeinfo = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_detachmode_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_object*, align 8
  %9 = alloca %struct.drm_mode_mode_cmd*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.drm_display_mode, align 4
  %12 = alloca %struct.drm_mode_modeinfo*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_mode_mode_cmd*
  store %struct.drm_mode_mode_cmd* %15, %struct.drm_mode_mode_cmd** %9, align 8
  %16 = load %struct.drm_mode_mode_cmd*, %struct.drm_mode_mode_cmd** %9, align 8
  %17 = getelementptr inbounds %struct.drm_mode_mode_cmd, %struct.drm_mode_mode_cmd* %16, i32 0, i32 1
  store %struct.drm_mode_modeinfo* %17, %struct.drm_mode_modeinfo** %12, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_MODESET, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = call i32 @drm_modeset_lock_all(%struct.drm_device* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_mode_mode_cmd*, %struct.drm_mode_mode_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.drm_mode_mode_cmd, %struct.drm_mode_mode_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MODE_OBJECT_CONNECTOR, align 4
  %33 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %28, i32 %31, i32 %32)
  store %struct.drm_mode_object* %33, %struct.drm_mode_object** %8, align 8
  %34 = load %struct.drm_mode_object*, %struct.drm_mode_object** %8, align 8
  %35 = icmp ne %struct.drm_mode_object* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  br label %52

39:                                               ; preds = %25
  %40 = load %struct.drm_mode_object*, %struct.drm_mode_object** %8, align 8
  %41 = call %struct.drm_connector* @obj_to_connector(%struct.drm_mode_object* %40)
  store %struct.drm_connector* %41, %struct.drm_connector** %10, align 8
  %42 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %12, align 8
  %43 = call i32 @drm_crtc_convert_umode(%struct.drm_display_mode* %11, %struct.drm_mode_modeinfo* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %51 = call i32 @drm_mode_detachmode(%struct.drm_device* %49, %struct.drm_connector* %50, %struct.drm_display_mode* %11)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %48, %46, %36
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_connector* @obj_to_connector(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_crtc_convert_umode(%struct.drm_display_mode*, %struct.drm_mode_modeinfo*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_detachmode(%struct.drm_device*, %struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
