; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.h_nes_fill_init_cqp_wqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.h_nes_fill_init_cqp_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_hw_cqp_wqe = type { i64* }
%struct.nes_device = type { i32 }

@NES_CQP_WQE_COMP_CTX_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQP_WQE_COMP_CTX_HIGH_IDX = common dso_local global i64 0, align 8
@NES_CQP_WQE_COMP_SCRATCH_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQP_WQE_COMP_SCRATCH_HIGH_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PBL_LEN_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_LEN_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PA_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PA_HIGH_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_hw_cqp_wqe*, %struct.nes_device*)* @nes_fill_init_cqp_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %0, %struct.nes_device* %1) #0 {
  %3 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %4 = alloca %struct.nes_device*, align 8
  store %struct.nes_hw_cqp_wqe* %0, %struct.nes_hw_cqp_wqe** %3, align 8
  store %struct.nes_device* %1, %struct.nes_device** %4, align 8
  %5 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %6 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @NES_CQP_WQE_COMP_CTX_LOW_IDX, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %11 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @NES_CQP_WQE_COMP_CTX_HIGH_IDX, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  %15 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %16 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @NES_CQP_WQE_COMP_SCRATCH_LOW_IDX, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %21 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @NES_CQP_WQE_COMP_SCRATCH_HIGH_IDX, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %26 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %31 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @NES_CQP_STAG_WQE_PBL_LEN_IDX, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %36 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @NES_CQP_STAG_WQE_LEN_LOW_IDX, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 0, i64* %39, align 8
  %40 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %41 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @NES_CQP_STAG_WQE_PA_LOW_IDX, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 0, i64* %44, align 8
  %45 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %3, align 8
  %46 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @NES_CQP_STAG_WQE_PA_HIGH_IDX, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 0, i64* %49, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
