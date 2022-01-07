; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_pcie_gart_enable.c"
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
@VM_CONTEXT1_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_pcie_gart_enable(%struct.radeon_device* %0) #0 {
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
  br label %195

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %195

25:                                               ; preds = %18
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @radeon_gart_restore(%struct.radeon_device* %26)
  %28 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %29 = load i32, i32* @ENABLE_L1_TLB, align 4
  %30 = or i32 1280, %29
  %31 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @WREG32(i32 %28, i32 %36)
  %38 = load i32, i32* @VM_L2_CNTL, align 4
  %39 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %40 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %45 = or i32 %43, %44
  %46 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %47 = or i32 %45, %46
  %48 = call i32 @WREG32(i32 %38, i32 %47)
  %49 = load i32, i32* @VM_L2_CNTL2, align 4
  %50 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %51 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @WREG32(i32 %49, i32 %52)
  %54 = load i32, i32* @VM_L2_CNTL3, align 4
  %55 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %56 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 0)
  %57 = or i32 %55, %56
  %58 = call i32 @WREG32(i32 %54, i32 %57)
  %59 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 12
  %65 = call i32 @WREG32(i32 %59, i32 %64)
  %66 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 12
  %72 = call i32 @WREG32(i32 %66, i32 %71)
  %73 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 12
  %79 = call i32 @WREG32(i32 %73, i32 %78)
  %80 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 12
  %86 = call i32 @WREG32(i32 %80, i32 %85)
  %87 = load i32, i32* @VM_CONTEXT0_CNTL2, align 4
  %88 = call i32 @WREG32(i32 %87, i32 0)
  %89 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %90 = load i32, i32* @ENABLE_CONTEXT, align 4
  %91 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @WREG32(i32 %89, i32 %94)
  %96 = call i32 @WREG32(i32 5588, i32 0)
  %97 = call i32 @WREG32(i32 5592, i32 0)
  %98 = call i32 @WREG32(i32 5596, i32 0)
  %99 = load i32, i32* @VM_CONTEXT1_PAGE_TABLE_START_ADDR, align 4
  %100 = call i32 @WREG32(i32 %99, i32 0)
  %101 = load i32, i32* @VM_CONTEXT1_PAGE_TABLE_END_ADDR, align 4
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @WREG32(i32 %101, i32 %105)
  store i32 1, i32* %5, align 4
  br label %107

107:                                              ; preds = %137, %25
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 16
  br i1 %109, label %110, label %140

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %115 = load i32, i32* %5, align 4
  %116 = shl i32 %115, 2
  %117 = add nsw i32 %114, %116
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = ashr i32 %121, 12
  %123 = call i32 @WREG32(i32 %117, i32 %122)
  br label %136

124:                                              ; preds = %110
  %125 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %126, 8
  %128 = shl i32 %127, 2
  %129 = add nsw i32 %125, %128
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = ashr i32 %133, 12
  %135 = call i32 @WREG32(i32 %129, i32 %134)
  br label %136

136:                                              ; preds = %124, %113
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %107

140:                                              ; preds = %107
  %141 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 12
  %147 = call i32 @WREG32(i32 %141, i32 %146)
  %148 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %149 = call i32 @WREG32(i32 %148, i32 4)
  %150 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %151 = load i32, i32* @ENABLE_CONTEXT, align 4
  %152 = call i32 @PAGE_TABLE_DEPTH(i32 1)
  %153 = or i32 %151, %152
  %154 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @WREG32(i32 %150, i32 %177)
  %179 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %180 = call i32 @si_pcie_gart_tlb_flush(%struct.radeon_device* %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = ashr i32 %184, 20
  %186 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %185, i64 %190)
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i32 1, i32* %194, align 4
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %140, %23, %11
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @radeon_gart_restore(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32) #1

declare dso_local i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @si_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
