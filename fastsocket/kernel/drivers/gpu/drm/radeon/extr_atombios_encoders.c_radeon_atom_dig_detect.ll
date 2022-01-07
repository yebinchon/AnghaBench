; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_dig_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_dig_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { i32 }
%struct.radeon_connector = type { i32 }

@connector_status_unknown = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION = common dso_local global i32 0, align 4
@R600_BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bios 0 scratch %x %08x\0A\00", align 1
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_CRT1_MASK = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_CRT2_MASK = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_CV_MASK = common dso_local global i32 0, align 4
@ATOM_S0_CV_MASK_A = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S0_TV1_COMPOSITE = common dso_local global i32 0, align 4
@ATOM_S0_TV1_COMPOSITE_A = common dso_local global i32 0, align 4
@ATOM_S0_TV1_SVIDEO = common dso_local global i32 0, align 4
@ATOM_S0_TV1_SVIDEO_A = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @radeon_atom_dig_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_dig_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %7, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %19 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %18)
  store %struct.radeon_encoder* %19, %struct.radeon_encoder** %8, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %21 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %20)
  store %struct.radeon_connector* %21, %struct.radeon_connector** %9, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder* %22)
  store %struct.drm_encoder* %23, %struct.drm_encoder** %10, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %25 = call i32 @ASIC_IS_DCE4(%struct.radeon_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @connector_status_unknown, align 4
  store i32 %28, i32* %3, align 4
  br label %130

29:                                               ; preds = %2
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %31 = icmp ne %struct.drm_encoder* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @connector_status_unknown, align 4
  store i32 %33, i32* %3, align 4
  br label %130

34:                                               ; preds = %29
  %35 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %36 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @connector_status_unknown, align 4
  store i32 %42, i32* %3, align 4
  br label %130

43:                                               ; preds = %34
  %44 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %46 = load i32, i32* @EXTERNAL_ENCODER_ACTION_V3_DACLOAD_DETECTION, align 4
  %47 = call i32 @atombios_external_encoder_setup(%struct.drm_encoder* %44, %struct.drm_encoder* %45, i32 %46)
  %48 = load i32, i32* @R600_BIOS_0_SCRATCH, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %52 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %56 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ATOM_S0_CRT1_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @connector_status_connected, align 4
  store i32 %67, i32* %3, align 4
  br label %130

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %71 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ATOM_S0_CRT2_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @connector_status_connected, align 4
  store i32 %82, i32* %3, align 4
  br label %130

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %86 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ATOM_S0_CV_MASK, align 4
  %94 = load i32, i32* @ATOM_S0_CV_MASK_A, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @connector_status_connected, align 4
  store i32 %99, i32* %3, align 4
  br label %130

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %84
  %102 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %103 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %101
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @ATOM_S0_TV1_COMPOSITE, align 4
  %111 = load i32, i32* @ATOM_S0_TV1_COMPOSITE_A, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @connector_status_connected, align 4
  store i32 %116, i32* %3, align 4
  br label %130

117:                                              ; preds = %108
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @ATOM_S0_TV1_SVIDEO, align 4
  %120 = load i32, i32* @ATOM_S0_TV1_SVIDEO_A, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @connector_status_connected, align 4
  store i32 %125, i32* %3, align 4
  br label %130

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %101
  %129 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %124, %115, %98, %81, %66, %41, %32, %27
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @atombios_external_encoder_setup(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
