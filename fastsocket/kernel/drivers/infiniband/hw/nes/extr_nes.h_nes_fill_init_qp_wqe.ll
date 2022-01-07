; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.h_nes_fill_init_qp_wqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.h_nes_fill_init_qp_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_hw_qp_wqe = type { i32 }
%struct.nes_qp = type { i32 }

@NES_IWARP_SQ_WQE_COMP_CTX_HIGH_IDX = common dso_local global i32 0, align 4
@NES_IWARP_SQ_WQE_COMP_CTX_LOW_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_hw_qp_wqe*, %struct.nes_qp*, i32)* @nes_fill_init_qp_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_fill_init_qp_wqe(%struct.nes_hw_qp_wqe* %0, %struct.nes_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.nes_hw_qp_wqe*, align 8
  %5 = alloca %struct.nes_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nes_hw_qp_wqe* %0, %struct.nes_hw_qp_wqe** %4, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %9 = ptrtoint %struct.nes_qp* %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %14 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NES_IWARP_SQ_WQE_COMP_CTX_HIGH_IDX, align 4
  %17 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %18 = ptrtoint %struct.nes_qp* %17 to i64
  %19 = call i64 @upper_32_bits(i64 %18)
  %20 = trunc i64 %19 to i32
  %21 = call i32 @set_wqe_32bit_value(i32 %15, i32 %16, i32 %20)
  %22 = load %struct.nes_hw_qp_wqe*, %struct.nes_hw_qp_wqe** %4, align 8
  %23 = getelementptr inbounds %struct.nes_hw_qp_wqe, %struct.nes_hw_qp_wqe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NES_IWARP_SQ_WQE_COMP_CTX_LOW_IDX, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @set_wqe_32bit_value(i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @set_wqe_32bit_value(i32, i32, i32) #1

declare dso_local i64 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
