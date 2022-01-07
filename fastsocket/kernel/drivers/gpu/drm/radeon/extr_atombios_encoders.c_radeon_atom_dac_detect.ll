; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_dac_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_dac_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { i32 }
%struct.radeon_connector = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"detect returned false \0A\00", align 1
@connector_status_unknown = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@R600_BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Bios 0 scratch %x %08x\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @radeon_atom_dac_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atom_dac_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %19)
  store %struct.radeon_connector* %20, %struct.radeon_connector** %9, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %23 = call i32 @atombios_dac_load_detect(%struct.drm_encoder* %21, %struct.drm_connector* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @connector_status_unknown, align 4
  store i32 %27, i32* %3, align 4
  br label %121

28:                                               ; preds = %2
  %29 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHIP_R600, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @R600_BIOS_0_SCRATCH, align 4
  %36 = call i32 @RREG32(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @RADEON_BIOS_0_SCRATCH, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %47 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @ATOM_S0_CRT1_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @connector_status_connected, align 4
  store i32 %58, i32* %3, align 4
  br label %121

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %62 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ATOM_S0_CRT2_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @connector_status_connected, align 4
  store i32 %73, i32* %3, align 4
  br label %121

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %60
  %76 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %77 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ATOM_S0_CV_MASK, align 4
  %85 = load i32, i32* @ATOM_S0_CV_MASK_A, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @connector_status_connected, align 4
  store i32 %90, i32* %3, align 4
  br label %121

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %75
  %93 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %94 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ATOM_S0_TV1_COMPOSITE, align 4
  %102 = load i32, i32* @ATOM_S0_TV1_COMPOSITE_A, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @connector_status_connected, align 4
  store i32 %107, i32* %3, align 4
  br label %121

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @ATOM_S0_TV1_SVIDEO, align 4
  %111 = load i32, i32* @ATOM_S0_TV1_SVIDEO_A, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @connector_status_connected, align 4
  store i32 %116, i32* %3, align 4
  br label %121

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %92
  %120 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %115, %106, %89, %72, %57, %25
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @atombios_dac_load_detect(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
