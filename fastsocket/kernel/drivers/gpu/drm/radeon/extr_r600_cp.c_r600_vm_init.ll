; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_vm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@R600_MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i64 0, align 8
@R600_MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i64 0, align 8
@R600_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i64 0, align 8
@R600_MCD_L1_TLB = common dso_local global i32 0, align 4
@R600_MCD_L1_FRAG_PROC = common dso_local global i32 0, align 4
@R600_MCD_SYSTEM_ACCESS_MODE_IN_SYS = common dso_local global i32 0, align 4
@R600_MCD_SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@R600_MCD_WAIT_L2_QUERY = common dso_local global i32 0, align 4
@R600_MCD_RD_A_CNTL = common dso_local global i64 0, align 8
@R600_MCD_RD_B_CNTL = common dso_local global i64 0, align 8
@R600_MCD_WR_A_CNTL = common dso_local global i64 0, align 8
@R600_MCD_WR_B_CNTL = common dso_local global i64 0, align 8
@R600_MCD_RD_GFX_CNTL = common dso_local global i64 0, align 8
@R600_MCD_WR_GFX_CNTL = common dso_local global i64 0, align 8
@R600_MCD_RD_SYS_CNTL = common dso_local global i64 0, align 8
@R600_MCD_WR_SYS_CNTL = common dso_local global i64 0, align 8
@R600_MCD_RD_HDP_CNTL = common dso_local global i64 0, align 8
@R600_MCD_L1_STRICT_ORDERING = common dso_local global i32 0, align 4
@R600_MCD_WR_HDP_CNTL = common dso_local global i64 0, align 8
@R600_MCD_RD_PDMA_CNTL = common dso_local global i64 0, align 8
@R600_MCD_WR_PDMA_CNTL = common dso_local global i64 0, align 8
@R600_MCD_RD_SEM_CNTL = common dso_local global i64 0, align 8
@R600_MCD_SEMAPHORE_MODE = common dso_local global i32 0, align 4
@R600_MCD_WR_SEM_CNTL = common dso_local global i64 0, align 8
@R600_VM_L2_CACHE_EN = common dso_local global i32 0, align 4
@R600_VM_L2_FRAG_PROC = common dso_local global i32 0, align 4
@R600_VM_ENABLE_PTE_CACHE_LRU_W = common dso_local global i32 0, align 4
@R600_VM_L2_CNTL = common dso_local global i64 0, align 8
@R600_VM_L2_CNTL2 = common dso_local global i64 0, align 8
@R600_VM_L2_CNTL3 = common dso_local global i64 0, align 8
@R600_VM_ENABLE_CONTEXT = common dso_local global i32 0, align 4
@R600_VM_PAGE_TABLE_DEPTH_FLAT = common dso_local global i32 0, align 4
@R600_VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@R600_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@R600_VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@R600_VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @r600_vm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_vm_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %3, align 8
  %12 = load i64, i64* @R600_MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 12
  %17 = call i32 @RADEON_WRITE(i64 %12, i32 %16)
  %18 = load i64, i64* @R600_MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = sub nsw i32 %25, 1
  %27 = ashr i32 %26, 12
  %28 = call i32 @RADEON_WRITE(i64 %18, i32 %27)
  %29 = load i64, i64* @R600_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 8
  %30 = call i32 @RADEON_WRITE(i64 %29, i32 0)
  %31 = load i32, i32* @R600_MCD_L1_TLB, align 4
  %32 = load i32, i32* @R600_MCD_L1_FRAG_PROC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @R600_MCD_SYSTEM_ACCESS_MODE_IN_SYS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @R600_MCD_SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @R600_MCD_EFFECTIVE_L1_TLB_SIZE(i32 5)
  %39 = or i32 %37, %38
  %40 = call i32 @R600_MCD_EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %41 = or i32 %39, %40
  %42 = load i32, i32* @R600_MCD_WAIT_L2_QUERY, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i64, i64* @R600_MCD_RD_A_CNTL, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @RADEON_WRITE(i64 %44, i32 %45)
  %47 = load i64, i64* @R600_MCD_RD_B_CNTL, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @RADEON_WRITE(i64 %47, i32 %48)
  %50 = load i64, i64* @R600_MCD_WR_A_CNTL, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @RADEON_WRITE(i64 %50, i32 %51)
  %53 = load i64, i64* @R600_MCD_WR_B_CNTL, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @RADEON_WRITE(i64 %53, i32 %54)
  %56 = load i64, i64* @R600_MCD_RD_GFX_CNTL, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @RADEON_WRITE(i64 %56, i32 %57)
  %59 = load i64, i64* @R600_MCD_WR_GFX_CNTL, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @RADEON_WRITE(i64 %59, i32 %60)
  %62 = load i64, i64* @R600_MCD_RD_SYS_CNTL, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @RADEON_WRITE(i64 %62, i32 %63)
  %65 = load i64, i64* @R600_MCD_WR_SYS_CNTL, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @RADEON_WRITE(i64 %65, i32 %66)
  %68 = load i64, i64* @R600_MCD_RD_HDP_CNTL, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @R600_MCD_L1_STRICT_ORDERING, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @RADEON_WRITE(i64 %68, i32 %71)
  %73 = load i64, i64* @R600_MCD_WR_HDP_CNTL, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @RADEON_WRITE(i64 %73, i32 %74)
  %76 = load i64, i64* @R600_MCD_RD_PDMA_CNTL, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @RADEON_WRITE(i64 %76, i32 %77)
  %79 = load i64, i64* @R600_MCD_WR_PDMA_CNTL, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @RADEON_WRITE(i64 %79, i32 %80)
  %82 = load i64, i64* @R600_MCD_RD_SEM_CNTL, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @R600_MCD_SEMAPHORE_MODE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @RADEON_WRITE(i64 %82, i32 %85)
  %87 = load i64, i64* @R600_MCD_WR_SEM_CNTL, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @RADEON_WRITE(i64 %87, i32 %88)
  %90 = load i32, i32* @R600_VM_L2_CACHE_EN, align 4
  %91 = load i32, i32* @R600_VM_L2_FRAG_PROC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @R600_VM_ENABLE_PTE_CACHE_LRU_W, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %7, align 4
  %95 = call i32 @R600_VM_L2_CNTL_QUEUE_SIZE(i32 7)
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i64, i64* @R600_VM_L2_CNTL, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @RADEON_WRITE(i64 %98, i32 %99)
  %101 = load i64, i64* @R600_VM_L2_CNTL2, align 8
  %102 = call i32 @RADEON_WRITE(i64 %101, i32 0)
  %103 = call i32 @R600_VM_L2_CNTL3_BANK_SELECT_0(i32 0)
  %104 = call i32 @R600_VM_L2_CNTL3_BANK_SELECT_1(i32 1)
  %105 = or i32 %103, %104
  %106 = call i32 @R600_VM_L2_CNTL3_CACHE_UPDATE_MODE(i32 2)
  %107 = or i32 %105, %106
  store i32 %107, i32* %8, align 4
  %108 = load i64, i64* @R600_VM_L2_CNTL3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @RADEON_WRITE(i64 %108, i32 %109)
  %111 = load i32, i32* @R600_VM_ENABLE_CONTEXT, align 4
  %112 = load i32, i32* @R600_VM_PAGE_TABLE_DEPTH_FLAT, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %4, align 4
  %114 = load i64, i64* @R600_VM_CONTEXT0_CNTL, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @RADEON_WRITE(i64 %114, i32 %115)
  %117 = load i32, i32* @R600_VM_ENABLE_CONTEXT, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %121

121:                                              ; preds = %132, %1
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 8
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i64, i64* @R600_VM_CONTEXT0_CNTL, align 8
  %126 = load i32, i32* %5, align 4
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @RADEON_WRITE(i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %121

135:                                              ; preds = %121
  %136 = load i64, i64* @R600_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 12
  %142 = call i32 @RADEON_WRITE(i64 %136, i32 %141)
  %143 = load i64, i64* @R600_VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 12
  %148 = call i32 @RADEON_WRITE(i64 %143, i32 %147)
  %149 = load i64, i64* @R600_VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = sub nsw i32 %156, 1
  %158 = ashr i32 %157, 12
  %159 = call i32 @RADEON_WRITE(i64 %149, i32 %158)
  %160 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %161 = call i32 @r600_vm_flush_gart_range(%struct.drm_device* %160)
  ret void
}

declare dso_local i32 @RADEON_WRITE(i64, i32) #1

declare dso_local i32 @R600_MCD_EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @R600_MCD_EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @R600_VM_L2_CNTL_QUEUE_SIZE(i32) #1

declare dso_local i32 @R600_VM_L2_CNTL3_BANK_SELECT_0(i32) #1

declare dso_local i32 @R600_VM_L2_CNTL3_BANK_SELECT_1(i32) #1

declare dso_local i32 @R600_VM_L2_CNTL3_CACHE_UPDATE_MODE(i32) #1

declare dso_local i32 @r600_vm_flush_gart_range(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
