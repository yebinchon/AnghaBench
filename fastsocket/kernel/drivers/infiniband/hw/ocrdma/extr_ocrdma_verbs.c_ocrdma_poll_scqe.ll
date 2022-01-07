; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_scqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_scqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32 }
%struct.ocrdma_cqe = type { i32 }
%struct.ib_wc = type { i32 }

@OCRDMA_CQE_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*)* @ocrdma_poll_scqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_scqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_cqe*, align 8
  %8 = alloca %struct.ib_wc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %6, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %7, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %14 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load i32, i32* @OCRDMA_CQE_STATUS_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @OCRDMA_CQE_STATUS_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @OCRDMA_CQE_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %26 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ocrdma_poll_success_scqe(%struct.ocrdma_qp* %25, %struct.ocrdma_cqe* %26, %struct.ib_wc* %27, i32* %28)
  store i32 %29, i32* %12, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %32 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %33 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @ocrdma_poll_err_scqe(%struct.ocrdma_qp* %31, %struct.ocrdma_cqe* %32, %struct.ib_wc* %33, i32* %34, i32* %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %12, align 4
  ret i32 %38
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocrdma_poll_success_scqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*) #1

declare dso_local i32 @ocrdma_poll_err_scqe(%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
