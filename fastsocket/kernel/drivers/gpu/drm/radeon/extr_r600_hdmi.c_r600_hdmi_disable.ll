; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Disabling HDMI interface @ 0x%04X for encoder 0x%x\0A\00", align 1
@AVIVO_TMDSA_CNTL = common dso_local global i32 0, align 4
@AVIVO_TMDSA_CNTL_HDMI_EN = common dso_local global i32 0, align 4
@AVIVO_LVTMA_CNTL = common dso_local global i32 0, align 4
@AVIVO_LVTMA_CNTL_HDMI_EN = common dso_local global i32 0, align 4
@DDIA_CNTL = common dso_local global i32 0, align 4
@DDIA_HDMI_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid encoder for HDMI: 0x%X\0A\00", align 1
@HDMI0_CONTROL = common dso_local global i64 0, align 8
@HDMI0_ERROR_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %4, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %14)
  store %struct.radeon_encoder* %15, %struct.radeon_encoder** %5, align 8
  %16 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %16, i32 0, i32 1
  %18 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %17, align 8
  store %struct.radeon_encoder_atom_dig* %18, %struct.radeon_encoder_atom_dig** %6, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %104

23:                                               ; preds = %1
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %25 = icmp ne %struct.radeon_encoder_atom_dig* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %28 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23
  br label %104

32:                                               ; preds = %26
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %104

40:                                               ; preds = %32
  %41 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %46, i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %52 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @radeon_irq_kms_disable_afmt(%struct.radeon_device* %51, i32 %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %59 = call i64 @ASIC_IS_DCE2(%struct.radeon_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %40
  %62 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %63 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %99, label %65

65:                                               ; preds = %61
  %66 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %85 [
    i32 129, label %69
    i32 128, label %74
    i32 131, label %79
    i32 130, label %84
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* @AVIVO_TMDSA_CNTL, align 4
  %71 = load i32, i32* @AVIVO_TMDSA_CNTL_HDMI_EN, align 4
  %72 = xor i32 %71, -1
  %73 = call i32 @WREG32_P(i32 %70, i32 0, i32 %72)
  br label %93

74:                                               ; preds = %65
  %75 = load i32, i32* @AVIVO_LVTMA_CNTL, align 4
  %76 = load i32, i32* @AVIVO_LVTMA_CNTL_HDMI_EN, align 4
  %77 = xor i32 %76, -1
  %78 = call i32 @WREG32_P(i32 %75, i32 0, i32 %77)
  br label %93

79:                                               ; preds = %65
  %80 = load i32, i32* @DDIA_CNTL, align 4
  %81 = load i32, i32* @DDIA_HDMI_EN, align 4
  %82 = xor i32 %81, -1
  %83 = call i32 @WREG32_P(i32 %80, i32 0, i32 %82)
  br label %93

84:                                               ; preds = %65
  br label %93

85:                                               ; preds = %65
  %86 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %90 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %85, %84, %79, %74, %69
  %94 = load i64, i64* @HDMI0_CONTROL, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* @HDMI0_ERROR_ACK, align 4
  %98 = call i32 @WREG32(i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %61, %40
  %100 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %101 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %39, %31, %22
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32) #1

declare dso_local i32 @radeon_irq_kms_disable_afmt(%struct.radeon_device*, i32) #1

declare dso_local i64 @ASIC_IS_DCE2(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
