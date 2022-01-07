; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_r700_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_r700_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@RADEON_VIPH_CONTROL = common dso_local global i32 0, align 4
@R600_BUS_CNTL = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D2VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@R600_ROM_CNTL = common dso_local global i32 0, align 4
@RADEON_VIPH_EN = common dso_local global i32 0, align 4
@R600_BIOS_ROM_DIS = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_MODE_ENABLE = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_TIMING_SELECT = common dso_local global i32 0, align 4
@AVIVO_VGA_VSTATUS_CNTL_MASK = common dso_local global i32 0, align 4
@CHIP_RV730 = common dso_local global i64 0, align 8
@R600_CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@R600_SPLL_BYPASS_EN = common dso_local global i32 0, align 4
@R600_SPLL_CHG_STATUS = common dso_local global i32 0, align 4
@R600_CG_SPLL_STATUS = common dso_local global i32 0, align 4
@R600_SCK_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r700_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r700_read_disabled_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @R600_BUS_CNTL, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @R600_ROM_CNTL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @RADEON_VIPH_EN, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @WREG32(i32 %24, i32 %28)
  %30 = load i32, i32* @R600_BUS_CNTL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @R600_BIOS_ROM_DIS, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @WREG32(i32 %30, i32 %34)
  %36 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %39 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  %43 = call i32 @WREG32(i32 %36, i32 %42)
  %44 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %47 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = call i32 @WREG32(i32 %44, i32 %50)
  %52 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @AVIVO_VGA_VSTATUS_CNTL_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @WREG32(i32 %52, i32 %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_RV730, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %1
  %64 = load i32, i32* @R600_CG_SPLL_FUNC_CNTL, align 4
  %65 = call i32 @RREG32(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @R600_CG_SPLL_FUNC_CNTL, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @R600_SPLL_BYPASS_EN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @WREG32(i32 %66, i32 %69)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %77, %63
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @R600_SPLL_CHG_STATUS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @R600_CG_SPLL_STATUS, align 4
  %79 = call i32 @RREG32(i32 %78)
  store i32 %79, i32* %10, align 4
  br label %71

80:                                               ; preds = %71
  %81 = load i32, i32* @R600_ROM_CNTL, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @R600_SCK_OVERWRITE, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @WREG32(i32 %81, i32 %85)
  br label %93

87:                                               ; preds = %1
  %88 = load i32, i32* @R600_ROM_CNTL, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @R600_SCK_OVERWRITE, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @WREG32(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = call i32 @radeon_read_bios(%struct.radeon_device* %94)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CHIP_RV730, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %93
  %102 = load i32, i32* @R600_CG_SPLL_FUNC_CNTL, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @WREG32(i32 %102, i32 %103)
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %111, %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @R600_SPLL_CHG_STATUS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @R600_CG_SPLL_STATUS, align 4
  %113 = call i32 @RREG32(i32 %112)
  store i32 %113, i32* %10, align 4
  br label %105

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %93
  %116 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  %119 = load i32, i32* @R600_BUS_CNTL, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @WREG32(i32 %119, i32 %120)
  %122 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @WREG32(i32 %122, i32 %123)
  %125 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @WREG32(i32 %125, i32 %126)
  %128 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @WREG32(i32 %128, i32 %129)
  %131 = load i32, i32* @R600_ROM_CNTL, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  %134 = load i32, i32* %11, align 4
  ret i32 %134
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_read_bios(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
