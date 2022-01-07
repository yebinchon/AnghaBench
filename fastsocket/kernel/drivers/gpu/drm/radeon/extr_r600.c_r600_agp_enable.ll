; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_agp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_agp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VM_L2_CNTL = common dso_local global i64 0, align 8
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i64 0, align 8
@VM_L2_CNTL3 = common dso_local global i64 0, align 8
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@ENABLE_WAIT_L2_QUERY = common dso_local global i32 0, align 4
@MC_VM_L1_TLB_MCB_RD_SYS_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_SYS_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_HDP_CNTL = common dso_local global i64 0, align 8
@ENABLE_L1_STRICT_ORDERING = common dso_local global i32 0, align 4
@MC_VM_L1_TLB_MCB_WR_HDP_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_RD_A_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_WR_A_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_RD_B_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_WR_B_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_GFX_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_GFX_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_PDMA_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_PDMA_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_SEM_CNTL = common dso_local global i64 0, align 8
@ENABLE_SEMAPHORE_MODE = common dso_local global i32 0, align 4
@MC_VM_L1_TLB_MCB_WR_SEM_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_agp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_agp_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i64, i64* @VM_L2_CNTL, align 8
  %6 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %7 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %12 = or i32 %10, %11
  %13 = call i32 @WREG32(i64 %5, i32 %12)
  %14 = load i64, i64* @VM_L2_CNTL2, align 8
  %15 = call i32 @WREG32(i64 %14, i32 0)
  %16 = load i64, i64* @VM_L2_CNTL3, align 8
  %17 = call i32 @BANK_SELECT_0(i32 0)
  %18 = call i32 @BANK_SELECT_1(i32 1)
  %19 = or i32 %17, %18
  %20 = call i32 @WREG32(i64 %16, i32 %19)
  %21 = load i32, i32* @ENABLE_L1_TLB, align 4
  %22 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %27 = or i32 %25, %26
  %28 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ENABLE_WAIT_L2_QUERY, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_SYS_CNTL, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @WREG32(i64 %32, i32 %33)
  %35 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_SYS_CNTL, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @WREG32(i64 %35, i32 %36)
  %38 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_HDP_CNTL, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ENABLE_L1_STRICT_ORDERING, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @WREG32(i64 %38, i32 %41)
  %43 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_HDP_CNTL, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WREG32(i64 %43, i32 %44)
  %46 = load i64, i64* @MC_VM_L1_TLB_MCD_RD_A_CNTL, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32(i64 %46, i32 %47)
  %49 = load i64, i64* @MC_VM_L1_TLB_MCD_WR_A_CNTL, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @WREG32(i64 %49, i32 %50)
  %52 = load i64, i64* @MC_VM_L1_TLB_MCD_RD_B_CNTL, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @WREG32(i64 %52, i32 %53)
  %55 = load i64, i64* @MC_VM_L1_TLB_MCD_WR_B_CNTL, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @WREG32(i64 %55, i32 %56)
  %58 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_GFX_CNTL, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @WREG32(i64 %58, i32 %59)
  %61 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_GFX_CNTL, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @WREG32(i64 %61, i32 %62)
  %64 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_PDMA_CNTL, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @WREG32(i64 %64, i32 %65)
  %67 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_PDMA_CNTL, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WREG32(i64 %67, i32 %68)
  %70 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_SEM_CNTL, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @ENABLE_SEMAPHORE_MODE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @WREG32(i64 %70, i32 %73)
  %75 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_SEM_CNTL, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @ENABLE_SEMAPHORE_MODE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @WREG32(i64 %75, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %90, %1
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 7
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %85 = load i32, i32* %4, align 4
  %86 = mul nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @WREG32(i64 %88, i32 0)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %80

93:                                               ; preds = %80
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT_0(i32) #1

declare dso_local i32 @BANK_SELECT_1(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
