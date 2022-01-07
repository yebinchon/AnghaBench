; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_rv370_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_rv370_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_START_LO = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_END_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_START_HI = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_END_HI = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_BASE = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_DISCARD_RD_ADDR_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_DISCARD_RD_ADDR_HI = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_ERROR = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv370_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @radeon_gart_restore(%struct.radeon_device* %27)
  %29 = load i32, i32* @RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WREG32_PCIE(i32 %30, i32 %31)
  %33 = load i32, i32* @RADEON_PCIE_TX_GART_START_LO, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @WREG32_PCIE(i32 %33, i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RADEON_GPU_PAGE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @RADEON_PCIE_TX_GART_END_LO, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @WREG32_PCIE(i32 %46, i32 %47)
  %49 = load i32, i32* @RADEON_PCIE_TX_GART_START_HI, align 4
  %50 = call i32 @WREG32_PCIE(i32 %49, i32 0)
  %51 = load i32, i32* @RADEON_PCIE_TX_GART_END_HI, align 4
  %52 = call i32 @WREG32_PCIE(i32 %51, i32 0)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @RADEON_PCIE_TX_GART_BASE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @WREG32_PCIE(i32 %57, i32 %58)
  %60 = load i32, i32* @RADEON_PCIE_TX_DISCARD_RD_ADDR_LO, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @WREG32_PCIE(i32 %60, i32 %64)
  %66 = load i32, i32* @RADEON_PCIE_TX_DISCARD_RD_ADDR_HI, align 4
  %67 = call i32 @WREG32_PCIE(i32 %66, i32 0)
  %68 = load i32, i32* @RADEON_PCIE_TX_GART_ERROR, align 4
  %69 = call i32 @WREG32_PCIE(i32 %68, i32 0)
  %70 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %71 = call i32 @RREG32_PCIE(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @RADEON_PCIE_TX_GART_EN, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @WREG32_PCIE(i32 %78, i32 %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = call i32 @rv370_pcie_gart_tlb_flush(%struct.radeon_device* %81)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 20
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %87, i64 %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %26, %24, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @rv370_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
