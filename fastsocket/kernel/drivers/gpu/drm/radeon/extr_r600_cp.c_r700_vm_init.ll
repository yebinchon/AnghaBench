; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r700_vm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r700_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@R700_MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i64 0, align 8
@R700_MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i64 0, align 8
@R700_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i64 0, align 8
@R700_ENABLE_L1_TLB = common dso_local global i32 0, align 4
@R700_ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@R700_SYSTEM_ACCESS_MODE_IN_SYS = common dso_local global i32 0, align 4
@R700_SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@R700_MC_VM_MD_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@R700_MC_VM_MD_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@R700_MC_VM_MD_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@R700_MC_VM_MB_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@R700_MC_VM_MB_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@R700_MC_VM_MB_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@R700_MC_VM_MB_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@R600_VM_L2_CACHE_EN = common dso_local global i32 0, align 4
@R600_VM_L2_FRAG_PROC = common dso_local global i32 0, align 4
@R600_VM_ENABLE_PTE_CACHE_LRU_W = common dso_local global i32 0, align 4
@R600_VM_L2_CNTL = common dso_local global i64 0, align 8
@R600_VM_L2_CNTL2 = common dso_local global i64 0, align 8
@R600_VM_L2_CNTL3 = common dso_local global i64 0, align 8
@R600_VM_ENABLE_CONTEXT = common dso_local global i32 0, align 4
@R600_VM_PAGE_TABLE_DEPTH_FLAT = common dso_local global i32 0, align 4
@R600_VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@R700_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@R700_VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@R700_VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @r700_vm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r700_vm_init(%struct.drm_device* %0) #0 {
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
  %12 = load i64, i64* @R700_MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 12
  %17 = call i32 @RADEON_WRITE(i64 %12, i32 %16)
  %18 = load i64, i64* @R700_MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 8
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
  %29 = load i64, i64* @R700_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 8
  %30 = call i32 @RADEON_WRITE(i64 %29, i32 0)
  %31 = load i32, i32* @R700_ENABLE_L1_TLB, align 4
  %32 = load i32, i32* @R700_ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @R700_SYSTEM_ACCESS_MODE_IN_SYS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @R700_SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @R700_EFFECTIVE_L1_TLB_SIZE(i32 5)
  %39 = or i32 %37, %38
  %40 = call i32 @R700_EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i64, i64* @R700_MC_VM_MD_L1_TLB0_CNTL, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @RADEON_WRITE(i64 %42, i32 %43)
  %45 = load i64, i64* @R700_MC_VM_MD_L1_TLB1_CNTL, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @RADEON_WRITE(i64 %45, i32 %46)
  %48 = load i64, i64* @R700_MC_VM_MD_L1_TLB2_CNTL, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @RADEON_WRITE(i64 %48, i32 %49)
  %51 = load i64, i64* @R700_MC_VM_MB_L1_TLB0_CNTL, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @RADEON_WRITE(i64 %51, i32 %52)
  %54 = load i64, i64* @R700_MC_VM_MB_L1_TLB1_CNTL, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @RADEON_WRITE(i64 %54, i32 %55)
  %57 = load i64, i64* @R700_MC_VM_MB_L1_TLB2_CNTL, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @RADEON_WRITE(i64 %57, i32 %58)
  %60 = load i64, i64* @R700_MC_VM_MB_L1_TLB3_CNTL, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @RADEON_WRITE(i64 %60, i32 %61)
  %63 = load i32, i32* @R600_VM_L2_CACHE_EN, align 4
  %64 = load i32, i32* @R600_VM_L2_FRAG_PROC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @R600_VM_ENABLE_PTE_CACHE_LRU_W, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = call i32 @R700_VM_L2_CNTL_QUEUE_SIZE(i32 7)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i64, i64* @R600_VM_L2_CNTL, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @RADEON_WRITE(i64 %71, i32 %72)
  %74 = load i64, i64* @R600_VM_L2_CNTL2, align 8
  %75 = call i32 @RADEON_WRITE(i64 %74, i32 0)
  %76 = call i32 @R700_VM_L2_CNTL3_BANK_SELECT(i32 0)
  %77 = call i32 @R700_VM_L2_CNTL3_CACHE_UPDATE_MODE(i32 2)
  %78 = or i32 %76, %77
  store i32 %78, i32* %8, align 4
  %79 = load i64, i64* @R600_VM_L2_CNTL3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @RADEON_WRITE(i64 %79, i32 %80)
  %82 = load i32, i32* @R600_VM_ENABLE_CONTEXT, align 4
  %83 = load i32, i32* @R600_VM_PAGE_TABLE_DEPTH_FLAT, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %4, align 4
  %85 = load i64, i64* @R600_VM_CONTEXT0_CNTL, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @RADEON_WRITE(i64 %85, i32 %86)
  %88 = load i32, i32* @R600_VM_ENABLE_CONTEXT, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %103, %1
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* @R600_VM_CONTEXT0_CNTL, align 8
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @RADEON_WRITE(i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load i64, i64* @R700_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 12
  %113 = call i32 @RADEON_WRITE(i64 %107, i32 %112)
  %114 = load i64, i64* @R700_VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 12
  %119 = call i32 @RADEON_WRITE(i64 %114, i32 %118)
  %120 = load i64, i64* @R700_VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %123, %126
  %128 = sub nsw i32 %127, 1
  %129 = ashr i32 %128, 12
  %130 = call i32 @RADEON_WRITE(i64 %120, i32 %129)
  %131 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %132 = call i32 @r600_vm_flush_gart_range(%struct.drm_device* %131)
  ret void
}

declare dso_local i32 @RADEON_WRITE(i64, i32) #1

declare dso_local i32 @R700_EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @R700_EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @R700_VM_L2_CNTL_QUEUE_SIZE(i32) #1

declare dso_local i32 @R700_VM_L2_CNTL3_BANK_SELECT(i32) #1

declare dso_local i32 @R700_VM_L2_CNTL3_CACHE_UPDATE_MODE(i32) #1

declare dso_local i32 @r600_vm_flush_gart_range(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
