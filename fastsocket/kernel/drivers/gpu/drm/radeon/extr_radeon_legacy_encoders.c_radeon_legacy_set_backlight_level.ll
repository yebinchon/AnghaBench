; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_set_backlight_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_set_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.TYPE_2__, %struct.radeon_encoder_lvds* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.radeon_encoder_lvds = type { i64, i32 }
%struct.radeon_encoder_atom_dig = type { i64, i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_legacy_set_backlight_level(%struct.radeon_encoder* %0, i8* %1) #0 {
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.radeon_encoder_lvds*, align 8
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %6, align 8
  %17 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 1
  %20 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %19, align 8
  %21 = icmp ne %struct.radeon_encoder_lvds* %20, null
  br i1 %21, label %22, label %67

22:                                               ; preds = %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %28, i32 0, i32 1
  %30 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %29, align 8
  %31 = bitcast %struct.radeon_encoder_lvds* %30 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %31, %struct.radeon_encoder_atom_dig** %8, align 8
  %32 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i8*, i8** %4, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %66

47:                                               ; preds = %22
  %48 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %48, i32 0, i32 1
  %50 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %49, align 8
  store %struct.radeon_encoder_lvds* %50, %struct.radeon_encoder_lvds** %9, align 8
  %51 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %9, align 8
  %57 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %7, align 4
  br label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i8*, i8** %4, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %42
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %69 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @radeon_legacy_lvds_update(%struct.TYPE_2__* %69, i32 %70)
  ret void
}

declare dso_local i32 @radeon_legacy_lvds_update(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
