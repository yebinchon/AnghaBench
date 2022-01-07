; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs600.c_rs600_page_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs600.c_rs600_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64 }

@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs600_page_flip(%struct.radeon_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %13, i64 %15
  %17 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  store %struct.radeon_crtc* %17, %struct.radeon_crtc** %7, align 8
  %18 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @RREG32(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %28 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @WREG32(i64 %31, i32 %32)
  %34 = load i64, i64* @AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %35 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @WREG32(i64 %38, i32 %40)
  %42 = load i64, i64* @AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %43 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @WREG32(i64 %46, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %69, %3
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @RREG32(i64 %61)
  %63 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %72

67:                                               ; preds = %56
  %68 = call i32 @udelay(i32 1)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %50

72:                                               ; preds = %66, %50
  %73 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %79 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %80 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @WREG32(i64 %82, i32 %83)
  %85 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %86 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %87 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @RREG32(i64 %89)
  %91 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %92 = and i32 %90, %91
  ret i32 %92
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
