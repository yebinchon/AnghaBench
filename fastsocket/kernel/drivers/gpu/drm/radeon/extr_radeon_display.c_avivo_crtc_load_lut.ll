; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_avivo_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@AVIVO_DC_LUTA_CONTROL = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@AVIVO_DC_LUTA_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_SELECT = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_MODE = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@AVIVO_DC_LUT_RW_INDEX = common dso_local global i32 0, align 4
@AVIVO_DC_LUT_30_COLOR = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_LUT_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @avivo_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avivo_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %7)
  store %struct.radeon_crtc* %8, %struct.radeon_crtc** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %5, align 8
  %15 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* @AVIVO_DC_LUTA_CONTROL, align 8
  %20 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @WREG32(i64 %23, i32 0)
  %25 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_BLUE, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @WREG32(i64 %29, i32 0)
  %31 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_GREEN, align 8
  %32 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @WREG32(i64 %35, i32 0)
  %37 = load i64, i64* @AVIVO_DC_LUTA_BLACK_OFFSET_RED, align 8
  %38 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @WREG32(i64 %41, i32 0)
  %43 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_BLUE, align 8
  %44 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i32 @WREG32(i64 %47, i32 65535)
  %49 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_GREEN, align 8
  %50 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @WREG32(i64 %53, i32 65535)
  %55 = load i64, i64* @AVIVO_DC_LUTA_WHITE_OFFSET_RED, align 8
  %56 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @WREG32(i64 %59, i32 65535)
  %61 = load i64, i64* @AVIVO_DC_LUT_RW_SELECT, align 8
  %62 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @WREG32(i64 %61, i32 %64)
  %66 = load i64, i64* @AVIVO_DC_LUT_RW_MODE, align 8
  %67 = call i32 @WREG32(i64 %66, i32 0)
  %68 = load i64, i64* @AVIVO_DC_LUT_WRITE_EN_MASK, align 8
  %69 = call i32 @WREG32(i64 %68, i32 63)
  %70 = load i32, i32* @AVIVO_DC_LUT_RW_INDEX, align 4
  %71 = call i32 @WREG8(i32 %70, i32 0)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %104, %1
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %107

75:                                               ; preds = %72
  %76 = load i64, i64* @AVIVO_DC_LUT_30_COLOR, align 8
  %77 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 20
  %85 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 10
  %93 = or i32 %84, %92
  %94 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 0
  %102 = or i32 %93, %101
  %103 = call i32 @WREG32(i64 %76, i32 %102)
  br label %104

104:                                              ; preds = %75
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %72

107:                                              ; preds = %72
  %108 = load i64, i64* @AVIVO_D1GRPH_LUT_SEL, align 8
  %109 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @WREG32(i64 %112, i32 %115)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
