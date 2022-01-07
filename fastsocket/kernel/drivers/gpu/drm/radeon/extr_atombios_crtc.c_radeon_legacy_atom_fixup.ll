; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_legacy_atom_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_legacy_atom_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32 }

@RADEON_DISP_MERGE_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP_RGB_OFFSET_EN = common dso_local global i32 0, align 4
@RADEON_DISP2_MERGE_CNTL = common dso_local global i32 0, align 4
@RADEON_DISP2_RGB_OFFSET_EN = common dso_local global i32 0, align 4
@RADEON_FP_H2_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_CRTC2_H_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_FP_V2_SYNC_STRT_WID = common dso_local global i32 0, align 4
@RADEON_CRTC2_V_SYNC_STRT_WID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @radeon_legacy_atom_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_atom_fixup(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %13)
  store %struct.radeon_crtc* %14, %struct.radeon_crtc** %5, align 8
  %15 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %46 [
    i32 0, label %18
    i32 1, label %28
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @RADEON_DISP_MERGE_CNTL, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @RADEON_DISP_RGB_OFFSET_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @RADEON_DISP_MERGE_CNTL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @WREG32(i32 %25, i32 %26)
  br label %46

28:                                               ; preds = %1
  %29 = load i32, i32* @RADEON_DISP2_MERGE_CNTL, align 4
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @RADEON_DISP2_RGB_OFFSET_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @RADEON_DISP2_MERGE_CNTL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load i32, i32* @RADEON_FP_H2_SYNC_STRT_WID, align 4
  %39 = load i32, i32* @RADEON_CRTC2_H_SYNC_STRT_WID, align 4
  %40 = call i32 @RREG32(i32 %39)
  %41 = call i32 @WREG32(i32 %38, i32 %40)
  %42 = load i32, i32* @RADEON_FP_V2_SYNC_STRT_WID, align 4
  %43 = load i32, i32* @RADEON_CRTC2_V_SYNC_STRT_WID, align 4
  %44 = call i32 @RREG32(i32 %43)
  %45 = call i32 @WREG32(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %1, %28, %18
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
