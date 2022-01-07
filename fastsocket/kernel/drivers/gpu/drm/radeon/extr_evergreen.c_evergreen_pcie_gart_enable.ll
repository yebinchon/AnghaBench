; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@FUS_MC_VM_MD_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@FUS_MC_VM_MD_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@FUS_MC_VM_MD_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@CHIP_JUNIPER = common dso_local global i64 0, align 8
@CHIP_CYPRESS = common dso_local global i64 0, align 8
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@CHIP_BARTS = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB3_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @evergreen_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %175

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %175

25:                                               ; preds = %18
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @radeon_gart_restore(%struct.radeon_device* %26)
  %28 = load i32, i32* @VM_L2_CNTL, align 4
  %29 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %30 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %35 = or i32 %33, %34
  %36 = call i32 @WREG32(i32 %28, i32 %35)
  %37 = load i32, i32* @VM_L2_CNTL2, align 4
  %38 = call i32 @WREG32(i32 %37, i32 0)
  %39 = load i32, i32* @VM_L2_CNTL3, align 4
  %40 = call i32 @BANK_SELECT(i32 0)
  %41 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %42 = or i32 %40, %41
  %43 = call i32 @WREG32(i32 %39, i32 %42)
  %44 = load i32, i32* @ENABLE_L1_TLB, align 4
  %45 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %52 = or i32 %50, %51
  %53 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %54 = or i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RADEON_IS_IGP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %25
  %62 = load i32, i32* @FUS_MC_VM_MD_L1_TLB0_CNTL, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load i32, i32* @FUS_MC_VM_MD_L1_TLB1_CNTL, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @WREG32(i32 %65, i32 %66)
  %68 = load i32, i32* @FUS_MC_VM_MD_L1_TLB2_CNTL, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @WREG32(i32 %68, i32 %69)
  br label %109

71:                                               ; preds = %25
  %72 = load i32, i32* @MC_VM_MD_L1_TLB0_CNTL, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load i32, i32* @MC_VM_MD_L1_TLB1_CNTL, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load i32, i32* @MC_VM_MD_L1_TLB2_CNTL, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_JUNIPER, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %104, label %86

86:                                               ; preds = %71
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CHIP_CYPRESS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CHIP_HEMLOCK, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CHIP_BARTS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98, %92, %86, %71
  %105 = load i32, i32* @MC_VM_MD_L1_TLB3_CNTL, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @WREG32(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %108, %61
  %110 = load i32, i32* @MC_VM_MB_L1_TLB0_CNTL, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @WREG32(i32 %110, i32 %111)
  %113 = load i32, i32* @MC_VM_MB_L1_TLB1_CNTL, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @WREG32(i32 %113, i32 %114)
  %116 = load i32, i32* @MC_VM_MB_L1_TLB2_CNTL, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  %119 = load i32, i32* @MC_VM_MB_L1_TLB3_CNTL, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @WREG32(i32 %119, i32 %120)
  %122 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 12
  %128 = call i32 @WREG32(i32 %122, i32 %127)
  %129 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 12
  %135 = call i32 @WREG32(i32 %129, i32 %134)
  %136 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = ashr i32 %140, 12
  %142 = call i32 @WREG32(i32 %136, i32 %141)
  %143 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %144 = load i32, i32* @ENABLE_CONTEXT, align 4
  %145 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %146 = or i32 %144, %145
  %147 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @WREG32(i32 %143, i32 %148)
  %150 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 12
  %156 = call i32 @WREG32(i32 %150, i32 %155)
  %157 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %158 = call i32 @WREG32(i32 %157, i32 0)
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = call i32 @evergreen_pcie_gart_tlb_flush(%struct.radeon_device* %159)
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 20
  %166 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %165, i64 %170)
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %109, %23, %11
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @CACHE_UPDATE_MODE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @evergreen_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
