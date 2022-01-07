; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_ud_rcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_ud_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32, i32, i32, i32 }
%struct.ocrdma_cqe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@OCRDMA_CQE_UD_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_SRCQP_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_PKEY_MASK = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_XFER_LEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_wc*, %struct.ocrdma_cqe*)* @ocrdma_update_ud_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_update_ud_rcqe(%struct.ib_wc* %0, %struct.ocrdma_cqe* %1) #0 {
  %3 = alloca %struct.ib_wc*, align 8
  %4 = alloca %struct.ocrdma_cqe*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_wc* %0, %struct.ib_wc** %3, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %4, align 8
  %6 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %7 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  %10 = load i32, i32* @OCRDMA_CQE_UD_STATUS_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @OCRDMA_CQE_UD_STATUS_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %15 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load i32, i32* @OCRDMA_CQE_SRCQP_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %21 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load i32, i32* @OCRDMA_CQE_PKEY_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @IB_WC_GRH, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %35 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load i32, i32* @OCRDMA_CQE_UD_XFER_LEN_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
