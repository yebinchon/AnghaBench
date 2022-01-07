; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_get_accessible_vram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_get_accessible_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32 }

@RADEON_CONFIG_APER_SIZE = common dso_local global i32 0, align 4
@CHIP_RV280 = common dso_local global i64 0, align 8
@CHIP_RV350 = common dso_local global i64 0, align 8
@RADEON_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@RADEON_HDP_APER_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Generation 2 PCI interface, using max accessible memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Generation 1 PCI interface in multifunction mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Limiting VRAM to one aperture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r100_get_accessible_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_get_accessible_vram(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load i32, i32* @RADEON_CONFIG_APER_SIZE, align 4
  %7 = call i32 @RREG32(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_RV280, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_RV350, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @RADEON_HOST_PATH_CNTL, align 4
  %21 = load i32, i32* @RADEON_HDP_APER_CNTL, align 4
  %22 = load i32, i32* @RADEON_HDP_APER_CNTL, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @WREG32_P(i32 %20, i32 %21, i32 %23)
  %25 = call i32 @DRM_INFO(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %13
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_read_config_byte(i32 %31, i32 14, i32* %5)
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = call i32 @DRM_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %28
  %41 = load i32, i32* @RADEON_HOST_PATH_CNTL, align 4
  %42 = call i32 @RREG32(i32 %41)
  %43 = load i32, i32* @RADEON_HDP_APER_CNTL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %46, %36, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
