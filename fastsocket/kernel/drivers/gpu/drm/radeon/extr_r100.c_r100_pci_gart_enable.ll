; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_pci_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_pci_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@RADEON_AIC_CNTL = common dso_local global i32 0, align 4
@RADEON_DIS_OUT_OF_PCI_GART_ACCESS = common dso_local global i32 0, align 4
@RADEON_AIC_LO_ADDR = common dso_local global i32 0, align 4
@RADEON_AIC_HI_ADDR = common dso_local global i32 0, align 4
@RADEON_AIC_PT_BASE = common dso_local global i32 0, align 4
@RADEON_PCIGART_TRANSLATE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"PCI GART of %uM enabled (table at 0x%016llX).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_pci_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call i32 @radeon_gart_restore(%struct.radeon_device* %4)
  %6 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %7 = call i32 @RREG32(i32 %6)
  %8 = load i32, i32* @RADEON_DIS_OUT_OF_PCI_GART_ACCESS, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @WREG32(i32 %10, i32 %11)
  %13 = load i32, i32* @RADEON_AIC_LO_ADDR, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @WREG32(i32 %13, i32 %17)
  %19 = load i32, i32* @RADEON_AIC_HI_ADDR, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WREG32(i32 %19, i32 %23)
  %25 = load i32, i32* @RADEON_AIC_PT_BASE, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WREG32(i32 %25, i32 %29)
  %31 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %32 = call i32 @RREG32(i32 %31)
  %33 = load i32, i32* @RADEON_PCIGART_TRANSLATE_EN, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = call i32 @r100_pci_gart_tlb_flush(%struct.radeon_device* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 20
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  ret i32 0
}

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @r100_pci_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
