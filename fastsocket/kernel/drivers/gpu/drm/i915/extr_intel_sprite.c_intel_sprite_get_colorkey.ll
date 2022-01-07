; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_sprite_get_colorkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_sprite_get_colorkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_intel_sprite_colorkey = type { i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_plane = type { i32 }
%struct.intel_plane = type { i32 (%struct.drm_plane.0*, %struct.drm_intel_sprite_colorkey.1*)* }
%struct.drm_plane.0 = type opaque
%struct.drm_intel_sprite_colorkey.1 = type opaque

@DRIVER_MODESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_PLANE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_sprite_get_colorkey(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca %struct.intel_plane*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_intel_sprite_colorkey*
  store %struct.drm_intel_sprite_colorkey* %14, %struct.drm_intel_sprite_colorkey** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_MODESET, align 4
  %17 = call i32 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call i32 @drm_modeset_lock_all(%struct.drm_device* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %8, align 8
  %27 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DRM_MODE_OBJECT_PLANE, align 4
  %30 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %25, i32 %28, i32 %29)
  store %struct.drm_mode_object* %30, %struct.drm_mode_object** %9, align 8
  %31 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %32 = icmp ne %struct.drm_mode_object* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %49

36:                                               ; preds = %22
  %37 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %38 = call %struct.drm_plane* @obj_to_plane(%struct.drm_mode_object* %37)
  store %struct.drm_plane* %38, %struct.drm_plane** %10, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %40 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %39)
  store %struct.intel_plane* %40, %struct.intel_plane** %11, align 8
  %41 = load %struct.intel_plane*, %struct.intel_plane** %11, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 0
  %43 = load i32 (%struct.drm_plane.0*, %struct.drm_intel_sprite_colorkey.1*)*, i32 (%struct.drm_plane.0*, %struct.drm_intel_sprite_colorkey.1*)** %42, align 8
  %44 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %45 = bitcast %struct.drm_plane* %44 to %struct.drm_plane.0*
  %46 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %8, align 8
  %47 = bitcast %struct.drm_intel_sprite_colorkey* %46 to %struct.drm_intel_sprite_colorkey.1*
  %48 = call i32 %43(%struct.drm_plane.0* %45, %struct.drm_intel_sprite_colorkey.1* %47)
  br label %49

49:                                               ; preds = %36, %33
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_plane* @obj_to_plane(%struct.drm_mode_object*) #1

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
