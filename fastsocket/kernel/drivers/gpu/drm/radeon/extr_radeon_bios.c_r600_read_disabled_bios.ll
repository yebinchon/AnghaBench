; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_r600_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_r600_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_VIPH_CONTROL = common dso_local global i32 0, align 4
@R600_BUS_CNTL = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D2VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@R600_ROM_CNTL = common dso_local global i32 0, align 4
@R600_GENERAL_PWRMGT = common dso_local global i32 0, align 4
@R600_LOW_VID_LOWER_GPIO_CNTL = common dso_local global i32 0, align 4
@R600_MEDIUM_VID_LOWER_GPIO_CNTL = common dso_local global i32 0, align 4
@R600_HIGH_VID_LOWER_GPIO_CNTL = common dso_local global i32 0, align 4
@R600_CTXSW_VID_LOWER_GPIO_CNTL = common dso_local global i32 0, align 4
@R600_LOWER_GPIO_ENABLE = common dso_local global i32 0, align 4
@RADEON_VIPH_EN = common dso_local global i32 0, align 4
@R600_BIOS_ROM_DIS = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_MODE_ENABLE = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_TIMING_SELECT = common dso_local global i32 0, align 4
@AVIVO_VGA_VSTATUS_CNTL_MASK = common dso_local global i32 0, align 4
@R600_SCK_PRESCALE_CRYSTAL_CLK_MASK = common dso_local global i32 0, align 4
@R600_SCK_PRESCALE_CRYSTAL_CLK_SHIFT = common dso_local global i32 0, align 4
@R600_SCK_OVERWRITE = common dso_local global i32 0, align 4
@R600_OPEN_DRAIN_PADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_read_disabled_bios(%struct.radeon_device* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %16 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @R600_BUS_CNTL, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @R600_ROM_CNTL, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @R600_GENERAL_PWRMGT, align 4
  %29 = call i32 @RREG32(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @R600_LOW_VID_LOWER_GPIO_CNTL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @R600_MEDIUM_VID_LOWER_GPIO_CNTL, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @R600_HIGH_VID_LOWER_GPIO_CNTL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @R600_CTXSW_VID_LOWER_GPIO_CNTL, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* @R600_LOWER_GPIO_ENABLE, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @RADEON_VIPH_EN, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @WREG32(i32 %40, i32 %44)
  %46 = load i32, i32* @R600_BUS_CNTL, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @R600_BIOS_ROM_DIS, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @WREG32(i32 %46, i32 %50)
  %52 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %55 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = call i32 @WREG32(i32 %52, i32 %58)
  %60 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %63 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = call i32 @WREG32(i32 %60, i32 %66)
  %68 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AVIVO_VGA_VSTATUS_CNTL_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @WREG32(i32 %68, i32 %72)
  %74 = load i32, i32* @R600_ROM_CNTL, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @R600_SCK_PRESCALE_CRYSTAL_CLK_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* @R600_SCK_PRESCALE_CRYSTAL_CLK_SHIFT, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @R600_SCK_OVERWRITE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @WREG32(i32 %74, i32 %83)
  %85 = load i32, i32* @R600_GENERAL_PWRMGT, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @R600_OPEN_DRAIN_PADS, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = call i32 @WREG32(i32 %85, i32 %89)
  %91 = load i32, i32* @R600_LOW_VID_LOWER_GPIO_CNTL, align 4
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, -1025
  %94 = call i32 @WREG32(i32 %91, i32 %93)
  %95 = load i32, i32* @R600_MEDIUM_VID_LOWER_GPIO_CNTL, align 4
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, -1025
  %98 = call i32 @WREG32(i32 %95, i32 %97)
  %99 = load i32, i32* @R600_HIGH_VID_LOWER_GPIO_CNTL, align 4
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, -1025
  %102 = call i32 @WREG32(i32 %99, i32 %101)
  %103 = load i32, i32* @R600_CTXSW_VID_LOWER_GPIO_CNTL, align 4
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %104, -1025
  %106 = call i32 @WREG32(i32 %103, i32 %105)
  %107 = load i32, i32* @R600_LOWER_GPIO_ENABLE, align 4
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, 1024
  %110 = call i32 @WREG32(i32 %107, i32 %109)
  %111 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %112 = call i32 @radeon_read_bios(%struct.radeon_device* %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @WREG32(i32 %113, i32 %114)
  %116 = load i32, i32* @R600_BUS_CNTL, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  %119 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @WREG32(i32 %119, i32 %120)
  %122 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @WREG32(i32 %122, i32 %123)
  %125 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @WREG32(i32 %125, i32 %126)
  %128 = load i32, i32* @R600_ROM_CNTL, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @WREG32(i32 %128, i32 %129)
  %131 = load i32, i32* @R600_GENERAL_PWRMGT, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  %134 = load i32, i32* @R600_LOW_VID_LOWER_GPIO_CNTL, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @WREG32(i32 %134, i32 %135)
  %137 = load i32, i32* @R600_MEDIUM_VID_LOWER_GPIO_CNTL, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @WREG32(i32 %137, i32 %138)
  %140 = load i32, i32* @R600_HIGH_VID_LOWER_GPIO_CNTL, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @WREG32(i32 %140, i32 %141)
  %143 = load i32, i32* @R600_CTXSW_VID_LOWER_GPIO_CNTL, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @WREG32(i32 %143, i32 %144)
  %146 = load i32, i32* @R600_LOWER_GPIO_ENABLE, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @WREG32(i32 %146, i32 %147)
  %149 = load i32, i32* %15, align 4
  ret i32 %149
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
