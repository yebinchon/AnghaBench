; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_success_scqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_success_scqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_cqe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_wc = type { i32*, i64, i32 }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@OCRDMA_CQE_WQEIDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*)* @ocrdma_poll_success_scqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_success_scqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3) #0 {
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_cqe*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %5, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %6, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  store i32 0, i32* %26, align 4
  br label %42

27:                                               ; preds = %4
  %28 = load i32, i32* @IB_WC_SUCCESS, align 4
  %29 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %33, i32 0, i32 1
  %35 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %38 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ocrdma_update_wc(%struct.ocrdma_qp* %37, %struct.ib_wc* %38, i32 %39)
  %41 = load i32*, i32** %8, align 8
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %27, %25
  %43 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %44 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load i32, i32* @OCRDMA_CQE_WQEIDX_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %56 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %55, i32 0, i32 0
  %57 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_6__* %56)
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @ocrdma_update_wc(%struct.ocrdma_qp*, %struct.ib_wc*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
