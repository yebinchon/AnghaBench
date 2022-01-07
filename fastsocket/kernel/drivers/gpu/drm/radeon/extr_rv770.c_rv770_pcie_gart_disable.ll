; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gart_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@VM_L2_CNTL = common dso_local global i64 0, align 8
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i64 0, align 8
@VM_L2_CNTL3 = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_pcie_gart_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_pcie_gart_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i32 @WREG32(i64 %13, i32 0)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %5

18:                                               ; preds = %5
  %19 = load i64, i64* @VM_L2_CNTL, align 8
  %20 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %21 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %22 = or i32 %20, %21
  %23 = call i32 @WREG32(i64 %19, i32 %22)
  %24 = load i64, i64* @VM_L2_CNTL2, align 8
  %25 = call i32 @WREG32(i64 %24, i32 0)
  %26 = load i64, i64* @VM_L2_CNTL3, align 8
  %27 = call i32 @BANK_SELECT(i32 0)
  %28 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %29 = or i32 %27, %28
  %30 = call i32 @WREG32(i64 %26, i32 %29)
  %31 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %32 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i64, i64* @MC_VM_MD_L1_TLB0_CNTL, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @WREG32(i64 %34, i32 %35)
  %37 = load i64, i64* @MC_VM_MD_L1_TLB1_CNTL, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  %40 = load i64, i64* @MC_VM_MD_L1_TLB2_CNTL, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @WREG32(i64 %40, i32 %41)
  %43 = load i64, i64* @MC_VM_MB_L1_TLB0_CNTL, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WREG32(i64 %43, i32 %44)
  %46 = load i64, i64* @MC_VM_MB_L1_TLB1_CNTL, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32(i64 %46, i32 %47)
  %49 = load i64, i64* @MC_VM_MB_L1_TLB2_CNTL, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @WREG32(i64 %49, i32 %50)
  %52 = load i64, i64* @MC_VM_MB_L1_TLB3_CNTL, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @WREG32(i64 %52, i32 %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = call i32 @radeon_gart_table_vram_unpin(%struct.radeon_device* %55)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @CACHE_UPDATE_MODE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @radeon_gart_table_vram_unpin(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
