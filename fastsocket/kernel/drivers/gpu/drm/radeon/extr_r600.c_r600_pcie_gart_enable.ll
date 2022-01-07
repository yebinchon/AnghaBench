; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
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
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %169

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %169

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @radeon_gart_restore(%struct.radeon_device* %27)
  %29 = load i64, i64* @VM_L2_CNTL, align 8
  %30 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %31 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %36 = or i32 %34, %35
  %37 = call i32 @WREG32(i64 %29, i32 %36)
  %38 = load i64, i64* @VM_L2_CNTL2, align 8
  %39 = call i32 @WREG32(i64 %38, i32 0)
  %40 = load i64, i64* @VM_L2_CNTL3, align 8
  %41 = call i32 @BANK_SELECT_0(i32 0)
  %42 = call i32 @BANK_SELECT_1(i32 1)
  %43 = or i32 %41, %42
  %44 = call i32 @WREG32(i64 %40, i32 %43)
  %45 = load i32, i32* @ENABLE_L1_TLB, align 4
  %46 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %51 = or i32 %49, %50
  %52 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ENABLE_WAIT_L2_QUERY, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_SYS_CNTL, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @WREG32(i64 %56, i32 %57)
  %59 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_SYS_CNTL, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @WREG32(i64 %59, i32 %60)
  %62 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_HDP_CNTL, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @ENABLE_L1_STRICT_ORDERING, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @WREG32(i64 %62, i32 %65)
  %67 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_HDP_CNTL, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @WREG32(i64 %67, i32 %68)
  %70 = load i64, i64* @MC_VM_L1_TLB_MCD_RD_A_CNTL, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @WREG32(i64 %70, i32 %71)
  %73 = load i64, i64* @MC_VM_L1_TLB_MCD_WR_A_CNTL, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @WREG32(i64 %73, i32 %74)
  %76 = load i64, i64* @MC_VM_L1_TLB_MCD_RD_B_CNTL, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @WREG32(i64 %76, i32 %77)
  %79 = load i64, i64* @MC_VM_L1_TLB_MCD_WR_B_CNTL, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @WREG32(i64 %79, i32 %80)
  %82 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_GFX_CNTL, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @WREG32(i64 %82, i32 %83)
  %85 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_GFX_CNTL, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @WREG32(i64 %85, i32 %86)
  %88 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_PDMA_CNTL, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @WREG32(i64 %88, i32 %89)
  %91 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_PDMA_CNTL, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @WREG32(i64 %91, i32 %92)
  %94 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_SEM_CNTL, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ENABLE_SEMAPHORE_MODE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @WREG32(i64 %94, i32 %97)
  %99 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_SEM_CNTL, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @ENABLE_SEMAPHORE_MODE, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @WREG32(i64 %99, i32 %102)
  %104 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = ashr i32 %108, 12
  %110 = call i32 @WREG32(i64 %104, i32 %109)
  %111 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 12
  %117 = call i32 @WREG32(i64 %111, i32 %116)
  %118 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = ashr i32 %122, 12
  %124 = call i32 @WREG32(i64 %118, i32 %123)
  %125 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %126 = load i32, i32* @ENABLE_CONTEXT, align 4
  %127 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %128 = or i32 %126, %127
  %129 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @WREG32(i64 %125, i32 %130)
  %132 = load i64, i64* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 8
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 12
  %138 = call i32 @WREG32(i64 %132, i32 %137)
  store i32 1, i32* %6, align 4
  br label %139

139:                                              ; preds = %149, %26
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 7
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %144 = load i32, i32* %6, align 4
  %145 = mul nsw i32 %144, 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %143, %146
  %148 = call i32 @WREG32(i64 %147, i32 0)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %139

152:                                              ; preds = %139
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = call i32 @r600_pcie_gart_tlb_flush(%struct.radeon_device* %153)
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = ashr i32 %158, 20
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %159, i64 %164)
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %152, %24, %12
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT_0(i32) #1

declare dso_local i32 @BANK_SELECT_1(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @r600_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
