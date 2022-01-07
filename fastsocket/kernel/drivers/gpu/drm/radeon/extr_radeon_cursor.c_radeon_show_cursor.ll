; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_show_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_show_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i32 }

@RADEON_MM_INDEX = common dso_local global i32 0, align 4
@EVERGREEN_CUR_CONTROL = common dso_local global i32 0, align 4
@RADEON_MM_DATA = common dso_local global i32 0, align 4
@EVERGREEN_CURSOR_EN = common dso_local global i32 0, align 4
@EVERGREEN_CURSOR_24_8_PRE_MULT = common dso_local global i32 0, align 4
@EVERGREEN_CURSOR_URGENT_1_2 = common dso_local global i32 0, align 4
@AVIVO_D1CUR_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_EN = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_MODE_24BPP = common dso_local global i32 0, align 4
@AVIVO_D1CURSOR_MODE_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_MODE_24BPP = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_MODE_SHIFT = common dso_local global i32 0, align 4
@RADEON_CRTC_CUR_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @radeon_show_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_show_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %5)
  store %struct.radeon_crtc* %6, %struct.radeon_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @RADEON_MM_INDEX, align 4
  %17 = load i32, i32* @EVERGREEN_CUR_CONTROL, align 4
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = call i32 @WREG32(i32 %16, i32 %21)
  %23 = load i32, i32* @RADEON_MM_DATA, align 4
  %24 = load i32, i32* @EVERGREEN_CURSOR_EN, align 4
  %25 = load i32, i32* @EVERGREEN_CURSOR_24_8_PRE_MULT, align 4
  %26 = call i32 @EVERGREEN_CURSOR_MODE(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @EVERGREEN_CURSOR_URGENT_1_2, align 4
  %29 = call i32 @EVERGREEN_CURSOR_URGENT_CONTROL(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i32 @WREG32(i32 %23, i32 %30)
  br label %77

32:                                               ; preds = %1
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32, i32* @RADEON_MM_INDEX, align 4
  %38 = load i32, i32* @AVIVO_D1CUR_CONTROL, align 4
  %39 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = call i32 @WREG32(i32 %37, i32 %42)
  %44 = load i32, i32* @RADEON_MM_DATA, align 4
  %45 = load i32, i32* @AVIVO_D1CURSOR_EN, align 4
  %46 = load i32, i32* @AVIVO_D1CURSOR_MODE_24BPP, align 4
  %47 = load i32, i32* @AVIVO_D1CURSOR_MODE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = call i32 @WREG32(i32 %44, i32 %49)
  br label %76

51:                                               ; preds = %32
  %52 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %63 [
    i32 0, label %55
    i32 1, label %59
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* @RADEON_MM_INDEX, align 4
  %57 = load i32, i32* @RADEON_CRTC_GEN_CNTL, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %51
  %60 = load i32, i32* @RADEON_MM_INDEX, align 4
  %61 = load i32, i32* @RADEON_CRTC2_GEN_CNTL, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %51
  br label %77

64:                                               ; preds = %59, %55
  %65 = load i32, i32* @RADEON_MM_DATA, align 4
  %66 = load i32, i32* @RADEON_CRTC_CUR_EN, align 4
  %67 = load i32, i32* @RADEON_CRTC_CUR_MODE_24BPP, align 4
  %68 = load i32, i32* @RADEON_CRTC_CUR_MODE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  %71 = load i32, i32* @RADEON_CRTC_CUR_EN, align 4
  %72 = load i32, i32* @RADEON_CRTC_CUR_MODE_MASK, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = call i32 @WREG32_P(i32 %65, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %64, %36
  br label %77

77:                                               ; preds = %63, %76, %15
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EVERGREEN_CURSOR_MODE(i32) #1

declare dso_local i32 @EVERGREEN_CURSOR_URGENT_CONTROL(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
