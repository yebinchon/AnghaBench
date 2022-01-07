; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_legacy_crtc.c_radeon_crtc_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.radeon_crtc = type { i64, i64 }

@RMX_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Mode need scaling but only first crtc can do that.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32, i32, %struct.drm_framebuffer*)* @radeon_crtc_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_crtc_mode_set(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2, i32 %3, i32 %4, %struct.drm_framebuffer* %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.drm_framebuffer* %5, %struct.drm_framebuffer** %12, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %15 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %14)
  store %struct.radeon_crtc* %15, %struct.radeon_crtc** %13, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %20 = call i32 @radeon_crtc_set_base(%struct.drm_crtc* %16, i32 %17, i32 %18, %struct.drm_framebuffer* %19)
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %23 = call i32 @radeon_set_crtc_timing(%struct.drm_crtc* %21, %struct.drm_display_mode* %22)
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %26 = call i32 @radeon_set_pll(%struct.drm_crtc* %24, %struct.drm_display_mode* %25)
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %29 = call i32 @radeon_overscan_setup(%struct.drm_crtc* %27, %struct.drm_display_mode* %28)
  %30 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %31 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %37 = call i32 @radeon_legacy_rmx_mode_set(%struct.drm_crtc* %35, %struct.drm_display_mode* %36)
  br label %47

38:                                               ; preds = %6
  %39 = load %struct.radeon_crtc*, %struct.radeon_crtc** %13, align 8
  %40 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RMX_OFF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %34
  ret i32 0
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_crtc_set_base(%struct.drm_crtc*, i32, i32, %struct.drm_framebuffer*) #1

declare dso_local i32 @radeon_set_crtc_timing(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_set_pll(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_overscan_setup(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @radeon_legacy_rmx_mode_set(%struct.drm_crtc*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
