; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_rcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_err_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i64, i32 }
%struct.ocrdma_cqe = type { i32 }
%struct.ib_wc = type { i32 }

@OCRDMA_CQE_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*, i32*, i32*, i32)* @ocrdma_poll_err_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_poll_err_rcqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.ocrdma_qp*, align 8
  %8 = alloca %struct.ocrdma_cqe*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %7, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %8, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %15 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %6
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %19 = call i32 @is_hw_sq_empty(%struct.ocrdma_qp* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %23 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %28 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32*, i32** %10, align 8
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %38 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %8, align 8
  %39 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ocrdma_update_err_scqe(%struct.ib_wc* %37, %struct.ocrdma_cqe* %38, %struct.ocrdma_qp* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %26, %21
  %43 = load i32*, i32** %10, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 1, i32* %44, align 4
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %53

46:                                               ; preds = %17, %6
  %47 = load i32*, i32** %10, align 8
  store i32 1, i32* %47, align 4
  %48 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %49 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %8, align 8
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ocrdma_update_err_rcqe(%struct.ib_wc* %48, %struct.ocrdma_cqe* %49, %struct.ocrdma_qp* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %45
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i64 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_update_err_scqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

declare dso_local i32 @ocrdma_update_err_rcqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
