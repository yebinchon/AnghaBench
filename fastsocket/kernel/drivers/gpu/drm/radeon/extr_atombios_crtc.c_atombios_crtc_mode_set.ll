; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.radeon_crtc = type { i64, i32 }
%struct.radeon_encoder = type { i32 }

@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atombios_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.radeon_crtc*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.radeon_device*, align 8
  %16 = alloca %struct.radeon_encoder*, align 8
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %12, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %19 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %18)
  store %struct.radeon_crtc* %19, %struct.radeon_crtc** %13, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %14, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.radeon_device*, %struct.radeon_device** %24, align 8
  store %struct.radeon_device* %25, %struct.radeon_device** %15, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.radeon_encoder* @to_radeon_encoder(i32 %28)
  store %struct.radeon_encoder* %29, %struct.radeon_encoder** %16, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.radeon_encoder*, %struct.radeon_encoder** %16, align 8
  %31 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %34 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  br label %39

39:                                               ; preds = %38, %6
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %42 = call i32 @atombios_crtc_set_pll(%struct.drm_crtc* %40, %struct.drm_display_mode* %41)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %44 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %49 = call i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %47, %struct.drm_display_mode* %48)
  br label %82

50:                                               ; preds = %39
  %51 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  %52 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %60 = call i32 @atombios_crtc_set_timing(%struct.drm_crtc* %58, %struct.drm_display_mode* %59)
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %64 = call i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %62, %struct.drm_display_mode* %63)
  br label %65

65:                                               ; preds = %61, %57
  br label %81

66:                                               ; preds = %50
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %69 = call i32 @atombios_crtc_set_timing(%struct.drm_crtc* %67, %struct.drm_display_mode* %68)
  %70 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %71 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %77 = call i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc* %75, %struct.drm_display_mode* %76)
  br label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %80 = call i32 @radeon_legacy_atom_fixup(%struct.drm_crtc* %79)
  br label %81

81:                                               ; preds = %78, %65
  br label %82

82:                                               ; preds = %81, %46
  %83 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %87 = call i32 @atombios_crtc_set_base(%struct.drm_crtc* %83, i32 %84, i32 %85, %struct.drm_framebuffer* %86)
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %91 = call i32 @atombios_overscan_setup(%struct.drm_crtc* %88, %struct.drm_display_mode* %89, %struct.drm_display_mode* %90)
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %93 = call i32 @atombios_scaler_setup(%struct.drm_crtc* %92)
  ret i32 0
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i32) #1

declare dso_local i32 @atombios_crtc_set_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atombios_set_crtc_dtd_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @atombios_crtc_set_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_legacy_atom_fixup(%struct.drm_crtc*) #1

declare dso_local i32 @atombios_crtc_set_base(%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*) #1

declare dso_local i32 @atombios_overscan_setup(%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @atombios_scaler_setup(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
