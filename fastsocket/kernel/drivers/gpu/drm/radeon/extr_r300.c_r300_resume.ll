; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_r300_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300.c_r300_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i32, i32 }

@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", align 1
@R_000E40_RBBM_STATUS = common dso_local global i32 0, align 4
@R_0007C0_CP_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r300_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RADEON_IS_PCIE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @rv370_pcie_gart_disable(%struct.radeon_device* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RADEON_IS_PCI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @r100_pci_gart_disable(%struct.radeon_device* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = call i32 @r300_clock_startup(%struct.radeon_device* %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i64 @radeon_asic_reset(%struct.radeon_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @R_000E40_RBBM_STATUS, align 4
  %34 = call i32 @RREG32(i32 %33)
  %35 = load i32, i32* @R_0007C0_CP_STAT, align 4
  %36 = call i32 @RREG32(i32 %35)
  %37 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %29, %23
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @radeon_combios_asic_init(i32 %41)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = call i32 @r300_clock_startup(%struct.radeon_device* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @radeon_surface_init(%struct.radeon_device* %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = call i32 @r300_startup(%struct.radeon_device* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %38
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @rv370_pcie_gart_disable(%struct.radeon_device*) #1

declare dso_local i32 @r100_pci_gart_disable(%struct.radeon_device*) #1

declare dso_local i32 @r300_clock_startup(%struct.radeon_device*) #1

declare dso_local i64 @radeon_asic_reset(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_combios_asic_init(i32) #1

declare dso_local i32 @radeon_surface_init(%struct.radeon_device*) #1

declare dso_local i32 @r300_startup(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
