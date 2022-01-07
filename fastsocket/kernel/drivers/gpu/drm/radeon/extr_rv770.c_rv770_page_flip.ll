; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_page_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64, i64 }

@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_page_flip(%struct.radeon_device* %0, i32 %1, i64 %2) #0 {
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
  %34 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load i64, i64* @D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @upper_32_bits(i64 %40)
  %42 = call i32 @WREG32(i64 %39, i32 %41)
  %43 = load i64, i64* @D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @upper_32_bits(i64 %44)
  %46 = call i32 @WREG32(i64 %43, i32 %45)
  br label %56

47:                                               ; preds = %3
  %48 = load i64, i64* @D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @upper_32_bits(i64 %49)
  %51 = call i32 @WREG32(i64 %48, i32 %50)
  %52 = load i64, i64* @D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @upper_32_bits(i64 %53)
  %55 = call i32 @WREG32(i64 %52, i32 %54)
  br label %56

56:                                               ; preds = %47, %38
  %57 = load i64, i64* @D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @WREG32(i64 %61, i32 %63)
  %65 = load i64, i64* @D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %66 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %67 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64, i64* %6, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @WREG32(i64 %69, i32 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %92, %56
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %81 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %82 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @RREG32(i64 %84)
  %86 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %95

90:                                               ; preds = %79
  %91 = call i32 @udelay(i32 1)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %73

95:                                               ; preds = %89, %73
  %96 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %102 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %103 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @WREG32(i64 %105, i32 %106)
  %108 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %109 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %110 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = call i32 @RREG32(i64 %112)
  %114 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %115 = and i32 %113, %114
  ret i32 %115
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
