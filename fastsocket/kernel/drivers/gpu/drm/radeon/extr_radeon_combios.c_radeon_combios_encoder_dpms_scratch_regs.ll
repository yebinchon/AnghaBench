; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_encoder_dpms_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_encoder_dpms_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { i32 }

@RADEON_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@RADEON_TV_DPMS_ON = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@RADEON_CRT_DPMS_ON = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@RADEON_LCD_DPMS_ON = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@RADEON_DFP_DPMS_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_combios_encoder_dpms_scratch_regs(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca i32, align 4
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
  %17 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @RADEON_TV_DPMS_ON, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @RADEON_TV_DPMS_ON, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @RADEON_CRT_DPMS_ON, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @RADEON_CRT_DPMS_ON, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @RADEON_LCD_DPMS_ON, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %77

72:                                               ; preds = %65
  %73 = load i32, i32* @RADEON_LCD_DPMS_ON, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72, %68
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %80 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @RADEON_DFP_DPMS_ON, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %97

92:                                               ; preds = %85
  %93 = load i32, i32* @RADEON_DFP_DPMS_ON, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %92, %88
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
