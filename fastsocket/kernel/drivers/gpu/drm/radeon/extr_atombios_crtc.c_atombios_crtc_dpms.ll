; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i32 }

@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atombios_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %14)
  store %struct.radeon_crtc* %15, %struct.radeon_crtc** %7, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %81 [
    i32 130, label %17
    i32 129, label %47
    i32 128, label %47
    i32 131, label %47
  ]

17:                                               ; preds = %2
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %21 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %20)
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = load i32, i32* @ATOM_ENABLE, align 4
  %24 = call i32 @atombios_enable_crtc(%struct.drm_crtc* %22, i32 %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %26 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %30 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %34 = load i32, i32* @ATOM_ENABLE, align 4
  %35 = call i32 @atombios_enable_crtc_memreq(%struct.drm_crtc* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28, %17
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = load i32, i32* @ATOM_DISABLE, align 4
  %39 = call i32 @atombios_blank_crtc(%struct.drm_crtc* %37, i32 %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @drm_vblank_post_modeset(%struct.drm_device* %40, i32 %43)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %46 = call i32 @radeon_crtc_load_lut(%struct.drm_crtc* %45)
  br label %81

47:                                               ; preds = %2, %2, %2
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %50 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @drm_vblank_pre_modeset(%struct.drm_device* %48, i32 %51)
  %53 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %54 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %59 = load i32, i32* @ATOM_ENABLE, align 4
  %60 = call i32 @atombios_blank_crtc(%struct.drm_crtc* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %47
  %62 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %63 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %67 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %71 = load i32, i32* @ATOM_DISABLE, align 4
  %72 = call i32 @atombios_enable_crtc_memreq(%struct.drm_crtc* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65, %61
  %74 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %75 = load i32, i32* @ATOM_DISABLE, align 4
  %76 = call i32 @atombios_enable_crtc(%struct.drm_crtc* %74, i32 %75)
  %77 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %78 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %80 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %79)
  br label %81

81:                                               ; preds = %2, %73, %36
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

declare dso_local i32 @atombios_enable_crtc(%struct.drm_crtc*, i32) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @atombios_enable_crtc_memreq(%struct.drm_crtc*, i32) #1

declare dso_local i32 @atombios_blank_crtc(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_vblank_post_modeset(%struct.drm_device*, i32) #1

declare dso_local i32 @radeon_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @drm_vblank_pre_modeset(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
