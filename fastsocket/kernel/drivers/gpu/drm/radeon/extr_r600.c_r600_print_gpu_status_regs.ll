; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_print_gpu_status_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_print_gpu_status_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"  R_008010_GRBM_STATUS      = 0x%08X\0A\00", align 1
@R_008010_GRBM_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"  R_008014_GRBM_STATUS2     = 0x%08X\0A\00", align 1
@R_008014_GRBM_STATUS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"  R_000E50_SRBM_STATUS      = 0x%08X\0A\00", align 1
@R_000E50_SRBM_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"  R_008674_CP_STALLED_STAT1 = 0x%08X\0A\00", align 1
@CP_STALLED_STAT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"  R_008678_CP_STALLED_STAT2 = 0x%08X\0A\00", align 1
@CP_STALLED_STAT2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"  R_00867C_CP_BUSY_STAT     = 0x%08X\0A\00", align 1
@CP_BUSY_STAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"  R_008680_CP_STAT          = 0x%08X\0A\00", align 1
@CP_STAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"  R_00D034_DMA_STATUS_REG   = 0x%08X\0A\00", align 1
@DMA_STATUS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_print_gpu_status_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_print_gpu_status_regs(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @R_008010_GRBM_STATUS, align 4
  %7 = call i32 @RREG32(i32 %6)
  %8 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @R_008014_GRBM_STATUS2, align 4
  %13 = call i32 @RREG32(i32 %12)
  %14 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @R_000E50_SRBM_STATUS, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CP_STALLED_STAT1, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CP_STALLED_STAT2, align 4
  %31 = call i32 @RREG32(i32 %30)
  %32 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CP_BUSY_STAT, align 4
  %37 = call i32 @RREG32(i32 %36)
  %38 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CP_STAT, align 4
  %43 = call i32 @RREG32(i32 %42)
  %44 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_STATUS_REG, align 4
  %49 = call i32 @RREG32(i32 %48)
  %50 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
