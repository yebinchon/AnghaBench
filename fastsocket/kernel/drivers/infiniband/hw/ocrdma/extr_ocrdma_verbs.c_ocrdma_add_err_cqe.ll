; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_add_err_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_add_err_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_cq = type { i32 }
%struct.ocrdma_qp = type { %struct.TYPE_2__, i32*, %struct.ocrdma_cq*, %struct.TYPE_2__, %struct.ocrdma_cq* }
%struct.TYPE_2__ = type { i64 }
%struct.ib_wc = type { i32, i64, i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_cq*, i32, %struct.ocrdma_qp*, %struct.ib_wc*)* @ocrdma_add_err_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_add_err_cqe(%struct.ocrdma_cq* %0, i32 %1, %struct.ocrdma_qp* %2, %struct.ib_wc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_qp*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca i32, align 4
  store %struct.ocrdma_cq* %0, %struct.ocrdma_cq** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ocrdma_qp* %2, %struct.ocrdma_qp** %8, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %72, %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %11
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %16 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %20 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %84

23:                                               ; preds = %18, %14
  %24 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %25 = call i64 @is_hw_sq_empty(%struct.ocrdma_qp* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %29 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %28, i32 0, i32 4
  %30 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %29, align 8
  %31 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %32 = icmp eq %struct.ocrdma_cq* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %35 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %36 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %37 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ocrdma_update_wc(%struct.ocrdma_qp* %34, %struct.ib_wc* %35, i64 %39)
  %41 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %42 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %41, i32 0, i32 3
  %43 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_2__* %42)
  br label %72

44:                                               ; preds = %27, %23
  %45 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %46 = call i64 @is_hw_rq_empty(%struct.ocrdma_qp* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %50 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %49, i32 0, i32 2
  %51 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %50, align 8
  %52 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %6, align 8
  %53 = icmp eq %struct.ocrdma_cq* %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %56 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %59 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %67 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %66, i32 0, i32 0
  %68 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_2__* %67)
  br label %71

69:                                               ; preds = %48, %44
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %86

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %33
  %73 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %76 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %79 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %78, i64 1
  store %struct.ib_wc* %79, %struct.ib_wc** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %11

84:                                               ; preds = %22, %11
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %69
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i64 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_update_wc(%struct.ocrdma_qp*, %struct.ib_wc*, i64) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
