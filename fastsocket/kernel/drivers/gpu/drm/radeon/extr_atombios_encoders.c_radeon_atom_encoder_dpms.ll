; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"encoder dpms %d to mode %d, devices %08x, active_devices %08x\0A\00", align 1
@ATOM_ENABLE = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %15)
  store %struct.radeon_encoder* %16, %struct.radeon_encoder** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder* %17)
  store %struct.drm_encoder* %18, %struct.drm_encoder** %8, align 8
  %19 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %90 [
    i32 131, label %33
    i32 134, label %33
    i32 133, label %33
    i32 132, label %33
    i32 139, label %33
    i32 140, label %33
    i32 141, label %33
    i32 137, label %33
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
    i32 135, label %37
    i32 136, label %41
    i32 142, label %70
    i32 138, label %70
  ]

33:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %34, i32 %35)
  br label %91

37:                                               ; preds = %2, %2, %2, %2
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @radeon_atom_encoder_dpms_dig(%struct.drm_encoder* %38, i32 %39)
  br label %91

41:                                               ; preds = %2
  %42 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %43 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  switch i32 %46, label %55 [
    i32 145, label %47
    i32 144, label %51
    i32 143, label %51
    i32 146, label %51
  ]

47:                                               ; preds = %45
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %49 = load i32, i32* @ATOM_ENABLE, align 4
  %50 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %48, i32 %49)
  br label %55

51:                                               ; preds = %45, %45, %45
  %52 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %53 = load i32, i32* @ATOM_DISABLE, align 4
  %54 = call i32 @atombios_dvo_setup(%struct.drm_encoder* %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %51, %47
  br label %69

56:                                               ; preds = %41
  %57 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %58 = call i32 @ASIC_IS_DCE3(%struct.radeon_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @radeon_atom_encoder_dpms_dig(%struct.drm_encoder* %61, i32 %62)
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %55
  br label %91

70:                                               ; preds = %2, %2
  %71 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %72 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  switch i32 %75, label %84 [
    i32 145, label %76
    i32 144, label %80
    i32 143, label %80
    i32 146, label %80
  ]

76:                                               ; preds = %74
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %78 = load i32, i32* @ATOM_ENABLE, align 4
  %79 = call i32 @atombios_dac_setup(%struct.drm_encoder* %77, i32 %78)
  br label %84

80:                                               ; preds = %74, %74, %74
  %81 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %82 = load i32, i32* @ATOM_DISABLE, align 4
  %83 = call i32 @atombios_dac_setup(%struct.drm_encoder* %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %80, %76
  br label %89

85:                                               ; preds = %70
  %86 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %84
  br label %91

90:                                               ; preds = %2
  br label %106

91:                                               ; preds = %89, %69, %37, %33
  %92 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %93 = icmp ne %struct.drm_encoder* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %96 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @radeon_atom_encoder_dpms_ext(%struct.drm_encoder* %95, %struct.drm_encoder* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 145
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = call i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder* %100, i32 %104)
  br label %106

106:                                              ; preds = %99, %90
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @radeon_get_external_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atom_encoder_dpms_dig(%struct.drm_encoder*, i32) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @atombios_dvo_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @atombios_dac_setup(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atom_encoder_dpms_ext(%struct.drm_encoder*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atombios_encoder_dpms_scratch_regs(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
