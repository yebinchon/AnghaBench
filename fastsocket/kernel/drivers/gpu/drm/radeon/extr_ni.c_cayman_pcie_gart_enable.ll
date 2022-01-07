; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL2 = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cayman_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cayman_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %187

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
  br label %187

25:                                               ; preds = %18
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @radeon_gart_restore(%struct.radeon_device* %26)
  %28 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %29 = load i32, i32* @ENABLE_L1_TLB, align 4
  %30 = or i32 1280, %29
  %31 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @WREG32(i32 %28, i32 %38)
  %40 = load i32, i32* @VM_L2_CNTL, align 4
  %41 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %42 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %47 = or i32 %45, %46
  %48 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %49 = or i32 %47, %48
  %50 = call i32 @WREG32(i32 %40, i32 %49)
  %51 = load i32, i32* @VM_L2_CNTL2, align 4
  %52 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %53 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @WREG32(i32 %51, i32 %54)
  %56 = load i32, i32* @VM_L2_CNTL3, align 4
  %57 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %58 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 6)
  %59 = or i32 %57, %58
  %60 = call i32 @WREG32(i32 %56, i32 %59)
  %61 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 12
  %67 = call i32 @WREG32(i32 %61, i32 %66)
  %68 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 12
  %74 = call i32 @WREG32(i32 %68, i32 %73)
  %75 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 12
  %81 = call i32 @WREG32(i32 %75, i32 %80)
  %82 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 12
  %88 = call i32 @WREG32(i32 %82, i32 %87)
  %89 = load i32, i32* @VM_CONTEXT0_CNTL2, align 4
  %90 = call i32 @WREG32(i32 %89, i32 0)
  %91 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %92 = load i32, i32* @ENABLE_CONTEXT, align 4
  %93 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %94 = or i32 %92, %93
  %95 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @WREG32(i32 %91, i32 %96)
  %98 = call i32 @WREG32(i32 5588, i32 0)
  %99 = call i32 @WREG32(i32 5592, i32 0)
  %100 = call i32 @WREG32(i32 5596, i32 0)
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %129, %25
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %132

104:                                              ; preds = %101
  %105 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %106 = load i32, i32* %4, align 4
  %107 = shl i32 %106, 2
  %108 = add nsw i32 %105, %107
  %109 = call i32 @WREG32(i32 %108, i32 0)
  %110 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %111 = load i32, i32* %4, align 4
  %112 = shl i32 %111, 2
  %113 = add nsw i32 %110, %112
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @WREG32(i32 %113, i32 %117)
  %119 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %120 = load i32, i32* %4, align 4
  %121 = shl i32 %120, 2
  %122 = add nsw i32 %119, %121
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 12
  %128 = call i32 @WREG32(i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %104
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %101

132:                                              ; preds = %101
  %133 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 12
  %139 = call i32 @WREG32(i32 %133, i32 %138)
  %140 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %141 = call i32 @WREG32(i32 %140, i32 4)
  %142 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %143 = load i32, i32* @ENABLE_CONTEXT, align 4
  %144 = call i32 @PAGE_TABLE_DEPTH(i32 1)
  %145 = or i32 %143, %144
  %146 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @WREG32(i32 %142, i32 %169)
  %171 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %172 = call i32 @cayman_pcie_gart_tlb_flush(%struct.radeon_device* %171)
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = ashr i32 %176, 20
  %178 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %177, i64 %182)
  %184 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %132, %23, %11
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32) #1

declare dso_local i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @cayman_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
