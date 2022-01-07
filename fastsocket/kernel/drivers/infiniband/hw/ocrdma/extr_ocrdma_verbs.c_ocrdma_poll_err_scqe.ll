; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_scqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_scqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i64, i32 }
%struct.ocrdma_cqe = type { i32 }
%struct.ib_wc = type { i32 }

@OCRDMA_CQE_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*)* @ocrdma_poll_err_scqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_err_scqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3, i32* %4) #0 {
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
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %22 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %5
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %26 = call i32 @is_hw_rq_empty(%struct.ocrdma_qp* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %30 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %45 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ocrdma_update_err_rcqe(%struct.ib_wc* %44, %struct.ocrdma_cqe* %45, %struct.ocrdma_qp* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %33, %28
  %50 = load i32*, i32** %9, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 1, i32* %51, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %41
  br label %60

53:                                               ; preds = %24, %5
  %54 = load i32*, i32** %9, align 8
  store i32 1, i32* %54, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %56 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %7, align 8
  %57 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ocrdma_update_err_scqe(%struct.ib_wc* %55, %struct.ocrdma_cqe* %56, %struct.ocrdma_qp* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_update_err_rcqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

declare dso_local i32 @ocrdma_update_err_scqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
