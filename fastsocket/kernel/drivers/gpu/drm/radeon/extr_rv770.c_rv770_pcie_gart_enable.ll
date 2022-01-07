; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
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
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@CHIP_RV740 = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv770_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %152

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
  br label %152

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
  %41 = call i32 @BANK_SELECT(i32 0)
  %42 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %43 = or i32 %41, %42
  %44 = call i32 @WREG32(i64 %40, i32 %43)
  %45 = load i32, i32* @ENABLE_L1_TLB, align 4
  %46 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %53 = or i32 %51, %52
  %54 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i64, i64* @MC_VM_MD_L1_TLB0_CNTL, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @WREG32(i64 %56, i32 %57)
  %59 = load i64, i64* @MC_VM_MD_L1_TLB1_CNTL, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @WREG32(i64 %59, i32 %60)
  %62 = load i64, i64* @MC_VM_MD_L1_TLB2_CNTL, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @WREG32(i64 %62, i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CHIP_RV740, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %26
  %71 = load i64, i64* @MC_VM_MD_L1_TLB3_CNTL, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @WREG32(i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %26
  %75 = load i64, i64* @MC_VM_MB_L1_TLB0_CNTL, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @WREG32(i64 %75, i32 %76)
  %78 = load i64, i64* @MC_VM_MB_L1_TLB1_CNTL, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @WREG32(i64 %78, i32 %79)
  %81 = load i64, i64* @MC_VM_MB_L1_TLB2_CNTL, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @WREG32(i64 %81, i32 %82)
  %84 = load i64, i64* @MC_VM_MB_L1_TLB3_CNTL, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @WREG32(i64 %84, i32 %85)
  %87 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %88 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 12
  %93 = call i32 @WREG32(i64 %87, i32 %92)
  %94 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 12
  %100 = call i32 @WREG32(i64 %94, i32 %99)
  %101 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 12
  %107 = call i32 @WREG32(i64 %101, i32 %106)
  %108 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %109 = load i32, i32* @ENABLE_CONTEXT, align 4
  %110 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @WREG32(i64 %108, i32 %113)
  %115 = load i64, i64* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 8
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 12
  %121 = call i32 @WREG32(i64 %115, i32 %120)
  store i32 1, i32* %6, align 4
  br label %122

122:                                              ; preds = %132, %74
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 7
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %127 = load i32, i32* %6, align 4
  %128 = mul nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %126, %129
  %131 = call i32 @WREG32(i64 %130, i32 0)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %122

135:                                              ; preds = %122
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = call i32 @r600_pcie_gart_tlb_flush(%struct.radeon_device* %136)
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = ashr i32 %141, 20
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %142, i64 %147)
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %135, %24, %12
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @CACHE_UPDATE_MODE(i32) #1

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
