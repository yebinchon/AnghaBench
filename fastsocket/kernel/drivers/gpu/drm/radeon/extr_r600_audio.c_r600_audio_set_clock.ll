; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_audio.c_r600_audio_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_audio.c_r600_audio_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32, %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i32 }
%struct.radeon_crtc = type { i32 }

@R600_AUDIO_TIMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unsupported encoder type 0x%02X\0A\00", align 1
@EVERGREEN_AUDIO_PLL1_MUL = common dso_local global i32 0, align 4
@EVERGREEN_AUDIO_PLL1_DIV = common dso_local global i32 0, align 4
@EVERGREEN_AUDIO_PLL1_UNK = common dso_local global i32 0, align 4
@R600_AUDIO_PLL1_MUL = common dso_local global i32 0, align 4
@R600_AUDIO_PLL1_DIV = common dso_local global i32 0, align 4
@R600_AUDIO_CLK_SRCSEL = common dso_local global i32 0, align 4
@R600_AUDIO_PLL2_MUL = common dso_local global i32 0, align 4
@R600_AUDIO_PLL2_DIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unsupported DIG on encoder 0x%02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_audio_set_clock(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %6, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %7, align 8
  %19 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 1
  %21 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %20, align 8
  store %struct.radeon_encoder_atom_dig* %21, %struct.radeon_encoder_atom_dig** %8, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.radeon_crtc* @to_radeon_crtc(i32 %24)
  store %struct.radeon_crtc* %25, %struct.radeon_crtc** %9, align 8
  store i32 48000, i32* %10, align 4
  %26 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %35 [
    i32 132, label %29
    i32 131, label %29
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
    i32 133, label %32
  ]

29:                                               ; preds = %2, %2
  %30 = load i32, i32* @R600_AUDIO_TIMING, align 4
  %31 = call i32 @WREG32_P(i32 %30, i32 0, i32 -770)
  br label %43

32:                                               ; preds = %2, %2, %2, %2
  %33 = load i32, i32* @R600_AUDIO_TIMING, align 4
  %34 = call i32 @WREG32_P(i32 %33, i32 256, i32 -770)
  br label %43

35:                                               ; preds = %2
  %36 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %97

43:                                               ; preds = %32, %29
  %44 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %45 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, i32* @EVERGREEN_AUDIO_PLL1_MUL, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 10
  %51 = call i32 @WREG32(i32 %48, i32 %50)
  %52 = load i32, i32* @EVERGREEN_AUDIO_PLL1_DIV, align 4
  %53 = load i32, i32* %4, align 4
  %54 = mul nsw i32 %53, 10
  %55 = call i32 @WREG32(i32 %52, i32 %54)
  %56 = load i32, i32* @EVERGREEN_AUDIO_PLL1_UNK, align 4
  %57 = call i32 @WREG32(i32 %56, i32 113)
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WREG32(i32 1452, i32 %60)
  br label %97

62:                                               ; preds = %43
  %63 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %64 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %88 [
    i32 0, label %66
    i32 1, label %77
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @R600_AUDIO_PLL1_MUL, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %68, 50
  %70 = call i32 @WREG32(i32 %67, i32 %69)
  %71 = load i32, i32* @R600_AUDIO_PLL1_DIV, align 4
  %72 = load i32, i32* %4, align 4
  %73 = mul nsw i32 %72, 100
  %74 = call i32 @WREG32(i32 %71, i32 %73)
  %75 = load i32, i32* @R600_AUDIO_CLK_SRCSEL, align 4
  %76 = call i32 @WREG32(i32 %75, i32 0)
  br label %96

77:                                               ; preds = %62
  %78 = load i32, i32* @R600_AUDIO_PLL2_MUL, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %79, 50
  %81 = call i32 @WREG32(i32 %78, i32 %80)
  %82 = load i32, i32* @R600_AUDIO_PLL2_DIV, align 4
  %83 = load i32, i32* %4, align 4
  %84 = mul nsw i32 %83, 100
  %85 = call i32 @WREG32(i32 %82, i32 %84)
  %86 = load i32, i32* @R600_AUDIO_CLK_SRCSEL, align 4
  %87 = call i32 @WREG32(i32 %86, i32 1)
  br label %96

88:                                               ; preds = %62
  %89 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %93 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %97

96:                                               ; preds = %77, %66
  br label %97

97:                                               ; preds = %35, %88, %96, %47
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
