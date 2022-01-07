; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_initialize_bios_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_initialize_bios_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }

@CHIP_R600 = common dso_local global i64 0, align 8
@R600_BIOS_2_SCRATCH = common dso_local global i32 0, align 4
@R600_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_2_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@ATOM_S2_VRI_BRIGHT_ENABLE = common dso_local global i32 0, align 4
@ATOM_S6_ACC_BLOCK_DISPLAY_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atom_initialize_bios_scratch_regs(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  store %struct.radeon_device* %8, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_R600, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @R600_BIOS_2_SCRATCH, align 4
  %16 = call i32 @RREG32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @R600_BIOS_6_SCRATCH, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @RADEON_BIOS_2_SCRATCH, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @ATOM_S2_VRI_BRIGHT_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @ATOM_S6_ACC_BLOCK_DISPLAY_SWITCH, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_R600, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @R600_BIOS_2_SCRATCH, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  %41 = load i32, i32* @R600_BIOS_6_SCRATCH, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %51

44:                                               ; preds = %24
  %45 = load i32, i32* @RADEON_BIOS_2_SCRATCH, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @WREG32(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
