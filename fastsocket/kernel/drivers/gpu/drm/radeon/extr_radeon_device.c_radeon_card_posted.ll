; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_card_posted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_card_posted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@efi_enabled = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC_MASTER_EN = common dso_local global i32 0, align 4
@AVIVO_D1CRTC_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_CONTROL = common dso_local global i64 0, align 8
@AVIVO_CRTC_EN = common dso_local global i32 0, align 4
@RADEON_CRTC_GEN_CNTL = common dso_local global i64 0, align 8
@RADEON_CRTC2_GEN_CNTL = common dso_local global i64 0, align 8
@RADEON_CRTC_EN = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@R600_CONFIG_MEMSIZE = common dso_local global i64 0, align 8
@RADEON_CONFIG_MEMSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_card_posted(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load i64, i64* @efi_enabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %116

16:                                               ; preds = %7, %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %22 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @RREG32(i64 %23)
  %25 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %26 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @RREG32(i64 %27)
  %29 = or i32 %24, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %46

34:                                               ; preds = %20
  %35 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %36 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @RREG32(i64 %37)
  %39 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %40 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @RREG32(i64 %41)
  %43 = or i32 %38, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %20
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 6
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %53 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @RREG32(i64 %54)
  %56 = load i64, i64* @EVERGREEN_CRTC_CONTROL, align 8
  %57 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @RREG32(i64 %58)
  %60 = or i32 %55, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %46
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @EVERGREEN_CRTC_MASTER_EN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %116

69:                                               ; preds = %63
  br label %99

70:                                               ; preds = %16
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i64, i64* @AVIVO_D1CRTC_CONTROL, align 8
  %76 = call i32 @RREG32(i64 %75)
  %77 = load i64, i64* @AVIVO_D2CRTC_CONTROL, align 8
  %78 = call i32 @RREG32(i64 %77)
  %79 = or i32 %76, %78
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @AVIVO_CRTC_EN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  br label %116

85:                                               ; preds = %74
  br label %98

86:                                               ; preds = %70
  %87 = load i64, i64* @RADEON_CRTC_GEN_CNTL, align 8
  %88 = call i32 @RREG32(i64 %87)
  %89 = load i64, i64* @RADEON_CRTC2_GEN_CNTL, align 8
  %90 = call i32 @RREG32(i64 %89)
  %91 = or i32 %88, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @RADEON_CRTC_EN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 1, i32* %2, align 4
  br label %116

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %69
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CHIP_R600, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i64, i64* @R600_CONFIG_MEMSIZE, align 8
  %107 = call i32 @RREG32(i64 %106)
  store i32 %107, i32* %4, align 4
  br label %111

108:                                              ; preds = %99
  %109 = load i64, i64* @RADEON_CONFIG_MEMSIZE, align 8
  %110 = call i32 @RREG32(i64 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %2, align 4
  br label %116

115:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %114, %96, %84, %68, %15
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
