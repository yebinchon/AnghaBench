; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_set_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_crtc = type { i32, i32, i64, i64 }

@EVERGREEN_CUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_CUR_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_D2CUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@R700_D1CUR_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@AVIVO_D1CUR_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@RADEON_CUR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_gem_object*, i32)* @radeon_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_cursor(%struct.drm_crtc* %0, %struct.drm_gem_object* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %9)
  store %struct.radeon_crtc* %10, %struct.radeon_crtc** %7, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %17 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load i64, i64* @EVERGREEN_CUR_SURFACE_ADDRESS_HIGH, align 8
  %21 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @upper_32_bits(i32 %25)
  %27 = call i32 @WREG32(i64 %24, i32 %26)
  %28 = load i64, i64* @EVERGREEN_CUR_SURFACE_ADDRESS, align 8
  %29 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %30 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WREG32(i64 %32, i32 %33)
  br label %87

35:                                               ; preds = %3
  %36 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %37 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHIP_RV770, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %47 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i64, i64* @R700_D2CUR_SURFACE_ADDRESS_HIGH, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @upper_32_bits(i32 %52)
  %54 = call i32 @WREG32(i64 %51, i32 %53)
  br label %60

55:                                               ; preds = %45
  %56 = load i64, i64* @R700_D1CUR_SURFACE_ADDRESS_HIGH, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @upper_32_bits(i32 %57)
  %59 = call i32 @WREG32(i64 %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i64, i64* @AVIVO_D1CUR_SURFACE_ADDRESS, align 8
  %63 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @WREG32(i64 %66, i32 %67)
  br label %86

69:                                               ; preds = %35
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %72 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %76 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* @RADEON_CUR_OFFSET, align 8
  %78 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %79 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %83 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @WREG32(i64 %81, i32 %84)
  br label %86

86:                                               ; preds = %69, %61
  br label %87

87:                                               ; preds = %86, %19
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
