; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_yuv_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_yuv_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_encoder = type { i32 }
%struct.radeon_crtc = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@COMMAND = common dso_local global i32 0, align 4
@EnableYUV = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@R600_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_TV1_ACTIVE = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_S3_CV_ACTIVE = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @atombios_yuv_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_yuv_setup(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_crtc*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %19)
  store %struct.radeon_encoder* %20, %struct.radeon_encoder** %7, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %23)
  store %struct.radeon_crtc* %24, %struct.radeon_crtc** %8, align 8
  %25 = load i32, i32* @COMMAND, align 4
  %26 = load i32, i32* @EnableYUV, align 4
  %27 = call i32 @GetIndexIntoMasterTable(i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = call i32 @memset(%struct.TYPE_5__* %9, i32 0, i32 8)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHIP_R600, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @R600_BIOS_3_SCRATCH, align 4
  store i32 %35, i32* %12, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ATOM_S3_TV1_ACTIVE, align 4
  %50 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %51 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 18
  %54 = or i32 %49, %53
  %55 = call i32 @WREG32(i32 %48, i32 %54)
  br label %76

56:                                               ; preds = %38
  %57 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %58 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @ATOM_S3_CV_ACTIVE, align 4
  %66 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %67 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 24
  %70 = or i32 %65, %69
  %71 = call i32 @WREG32(i32 %64, i32 %70)
  br label %75

72:                                               ; preds = %56
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @WREG32(i32 %73, i32 0)
  br label %75

75:                                               ; preds = %72, %63
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @ATOM_ENABLE, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.radeon_crtc*, %struct.radeon_crtc** %8, align 8
  %84 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = bitcast %struct.TYPE_5__* %9 to i32*
  %93 = call i32 @atom_execute_table(i32 %90, i32 %91, i32* %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
