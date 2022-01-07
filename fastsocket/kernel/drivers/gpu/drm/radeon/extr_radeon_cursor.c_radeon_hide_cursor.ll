; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_hide_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_hide_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i64 }

@EVERGREEN_CUR_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CURSOR_24_8_PRE_MULT = common dso_local global i32 0, align 4
@EVERGREEN_CURSOR_URGENT_1_2 = common dso_local global i32 0, align 4
@AVIVO_D1CUR_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1CURSOR_MODE_24BPP = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_MODE_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@RADEON_CRTC2_GEN_CNTL = common dso_local global i64 0, align 8
@RADEON_CRTC_CUR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @radeon_hide_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_hide_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %6)
  store %struct.radeon_crtc* %7, %struct.radeon_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %4, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i64, i64* @EVERGREEN_CUR_CONTROL, align 8
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* @EVERGREEN_CURSOR_24_8_PRE_MULT, align 4
  %23 = call i32 @EVERGREEN_CURSOR_MODE(i32 %22)
  %24 = load i32, i32* @EVERGREEN_CURSOR_URGENT_1_2, align 4
  %25 = call i32 @EVERGREEN_CURSOR_URGENT_CONTROL(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i32 @WREG32_IDX(i64 %21, i32 %26)
  br label %60

28:                                               ; preds = %1
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i64, i64* @AVIVO_D1CUR_CONTROL, align 8
  %34 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* @AVIVO_D1CURSOR_MODE_24BPP, align 4
  %39 = load i32, i32* @AVIVO_D1CURSOR_MODE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @WREG32_IDX(i64 %37, i32 %40)
  br label %59

42:                                               ; preds = %28
  %43 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %50 [
    i32 0, label %46
    i32 1, label %48
  ]

46:                                               ; preds = %42
  %47 = load i64, i64* @RADEON_CRTC_GEN_CNTL, align 8
  store i64 %47, i64* %5, align 8
  br label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @RADEON_CRTC2_GEN_CNTL, align 8
  store i64 %49, i64* %5, align 8
  br label %51

50:                                               ; preds = %42
  br label %60

51:                                               ; preds = %48, %46
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @RREG32_IDX(i64 %53)
  %55 = load i32, i32* @RADEON_CRTC_CUR_EN, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @WREG32_IDX(i64 %52, i32 %57)
  br label %59

59:                                               ; preds = %51, %32
  br label %60

60:                                               ; preds = %50, %59, %16
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_IDX(i64, i32) #1

declare dso_local i32 @EVERGREEN_CURSOR_MODE(i32) #1

declare dso_local i32 @EVERGREEN_CURSOR_URGENT_CONTROL(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
