; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cayman_pcie_gart_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cayman_pcie_gart_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %4 = call i32 @WREG32(i32 %3, i32 0)
  %5 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %6 = call i32 @WREG32(i32 %5, i32 0)
  %7 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %8 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %9 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @WREG32(i32 %7, i32 %12)
  %14 = load i32, i32* @VM_L2_CNTL, align 4
  %15 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %16 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %19 = or i32 %17, %18
  %20 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %21 = or i32 %19, %20
  %22 = call i32 @WREG32(i32 %14, i32 %21)
  %23 = load i32, i32* @VM_L2_CNTL2, align 4
  %24 = call i32 @WREG32(i32 %23, i32 0)
  %25 = load i32, i32* @VM_L2_CNTL3, align 4
  %26 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %27 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 6)
  %28 = or i32 %26, %27
  %29 = call i32 @WREG32(i32 %25, i32 %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = call i32 @radeon_gart_table_vram_unpin(%struct.radeon_device* %30)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32) #1

declare dso_local i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32) #1

declare dso_local i32 @radeon_gart_table_vram_unpin(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
