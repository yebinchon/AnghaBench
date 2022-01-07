; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_ni_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_bios.c_ni_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@R600_BUS_CNTL = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D2VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@R600_ROM_CNTL = common dso_local global i32 0, align 4
@R600_BIOS_ROM_DIS = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_MODE_ENABLE = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_TIMING_SELECT = common dso_local global i32 0, align 4
@AVIVO_VGA_VSTATUS_CNTL_MASK = common dso_local global i32 0, align 4
@R600_SCK_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ni_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_read_disabled_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load i32, i32* @R600_BUS_CNTL, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %16 = call i32 @RREG32(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @R600_ROM_CNTL, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @R600_BUS_CNTL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @R600_BIOS_ROM_DIS, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @WREG32(i32 %19, i32 %23)
  %25 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %28 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = call i32 @WREG32(i32 %25, i32 %31)
  %33 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %36 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = call i32 @WREG32(i32 %33, i32 %39)
  %41 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AVIVO_VGA_VSTATUS_CNTL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @WREG32(i32 %41, i32 %45)
  %47 = load i32, i32* @R600_ROM_CNTL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @R600_SCK_OVERWRITE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @WREG32(i32 %47, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = call i32 @radeon_read_bios(%struct.radeon_device* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @R600_BUS_CNTL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  %57 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  %60 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load i32, i32* @R600_ROM_CNTL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
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
