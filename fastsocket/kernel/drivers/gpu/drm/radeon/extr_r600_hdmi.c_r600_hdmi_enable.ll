; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@HDMI0_ERROR_ACK = common dso_local global i32 0, align 4
@HDMI0_ENABLE = common dso_local global i32 0, align 4
@AVIVO_TMDSA_CNTL = common dso_local global i32 0, align 4
@AVIVO_TMDSA_CNTL_HDMI_EN = common dso_local global i32 0, align 4
@HDMI0_STREAM_TMDSA = common dso_local global i32 0, align 4
@AVIVO_LVTMA_CNTL = common dso_local global i32 0, align 4
@AVIVO_LVTMA_CNTL_HDMI_EN = common dso_local global i32 0, align 4
@HDMI0_STREAM_LVTMA = common dso_local global i32 0, align 4
@DDIA_CNTL = common dso_local global i32 0, align 4
@DDIA_HDMI_EN = common dso_local global i32 0, align 4
@HDMI0_STREAM_DDIA = common dso_local global i32 0, align 4
@HDMI0_STREAM_DVOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid encoder for HDMI: 0x%X\0A\00", align 1
@HDMI0_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Enabling HDMI interface @ 0x%04X for encoder 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_hdmi_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %15)
  store %struct.radeon_encoder* %16, %struct.radeon_encoder** %5, align 8
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 1
  %19 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %18, align 8
  store %struct.radeon_encoder_atom_dig* %19, %struct.radeon_encoder_atom_dig** %6, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %125

24:                                               ; preds = %1
  %25 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %125

32:                                               ; preds = %24
  %33 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = call i64 @ASIC_IS_DCE2(%struct.radeon_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %32
  %42 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %43 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %101, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @HDMI0_ERROR_ACK, align 4
  %47 = load i32, i32* @HDMI0_ENABLE, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %87 [
    i32 129, label %52
    i32 128, label %62
    i32 131, label %72
    i32 130, label %82
  ]

52:                                               ; preds = %45
  %53 = load i32, i32* @AVIVO_TMDSA_CNTL, align 4
  %54 = load i32, i32* @AVIVO_TMDSA_CNTL_HDMI_EN, align 4
  %55 = load i32, i32* @AVIVO_TMDSA_CNTL_HDMI_EN, align 4
  %56 = xor i32 %55, -1
  %57 = call i32 @WREG32_P(i32 %53, i32 %54, i32 %56)
  %58 = load i32, i32* @HDMI0_STREAM_TMDSA, align 4
  %59 = call i32 @HDMI0_STREAM(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %95

62:                                               ; preds = %45
  %63 = load i32, i32* @AVIVO_LVTMA_CNTL, align 4
  %64 = load i32, i32* @AVIVO_LVTMA_CNTL_HDMI_EN, align 4
  %65 = load i32, i32* @AVIVO_LVTMA_CNTL_HDMI_EN, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @WREG32_P(i32 %63, i32 %64, i32 %66)
  %68 = load i32, i32* @HDMI0_STREAM_LVTMA, align 4
  %69 = call i32 @HDMI0_STREAM(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %95

72:                                               ; preds = %45
  %73 = load i32, i32* @DDIA_CNTL, align 4
  %74 = load i32, i32* @DDIA_HDMI_EN, align 4
  %75 = load i32, i32* @DDIA_HDMI_EN, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_P(i32 %73, i32 %74, i32 %76)
  %78 = load i32, i32* @HDMI0_STREAM_DDIA, align 4
  %79 = call i32 @HDMI0_STREAM(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %95

82:                                               ; preds = %45
  %83 = load i32, i32* @HDMI0_STREAM_DVOA, align 4
  %84 = call i32 @HDMI0_STREAM(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %95

87:                                               ; preds = %45
  %88 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %92 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %87, %82, %72, %62, %52
  %96 = load i64, i64* @HDMI0_CONTROL, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @WREG32(i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %41, %32
  %102 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %109 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %110 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @radeon_irq_kms_enable_afmt(%struct.radeon_device* %108, i32 %113)
  br label %115

115:                                              ; preds = %107, %101
  %116 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %117 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %122 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %120, i32 %123)
  br label %125

125:                                              ; preds = %115, %31, %23
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE2(%struct.radeon_device*) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @HDMI0_STREAM(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @radeon_irq_kms_enable_afmt(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
