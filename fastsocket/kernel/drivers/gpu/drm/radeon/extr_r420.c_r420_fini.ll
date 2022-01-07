; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r420.c_r420_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r420.c_r420_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32*, i64 }

@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r420_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @r100_cp_fini(%struct.radeon_device* %3)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @radeon_wb_fini(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @radeon_ib_pool_fini(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = call i32 @radeon_gem_fini(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RADEON_IS_PCIE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @rv370_pcie_gart_fini(%struct.radeon_device* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RADEON_IS_PCI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = call i32 @r100_pci_gart_fini(%struct.radeon_device* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = call i32 @radeon_agp_fini(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = call i32 @radeon_irq_kms_fini(%struct.radeon_device* %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @radeon_fence_driver_fini(%struct.radeon_device* %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = call i32 @radeon_bo_fini(%struct.radeon_device* %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = call i32 @radeon_atombios_fini(%struct.radeon_device* %44)
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = call i32 @radeon_combios_fini(%struct.radeon_device* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  ret void
}

declare dso_local i32 @r100_cp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_pool_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gem_fini(%struct.radeon_device*) #1

declare dso_local i32 @rv370_pcie_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @r100_pci_gart_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_agp_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_kms_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_combios_fini(%struct.radeon_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
