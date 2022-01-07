; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_err_scqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_err_scqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32 }
%struct.ocrdma_cqe = type { i32 }
%struct.ocrdma_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32)* @ocrdma_update_err_scqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_update_err_scqe(%struct.ib_wc* %0, %struct.ocrdma_cqe* %1, %struct.ocrdma_qp* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.ocrdma_cqe*, align 8
  %7 = alloca %struct.ocrdma_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_wc* %0, %struct.ib_wc** %5, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %6, align 8
  store %struct.ocrdma_qp* %2, %struct.ocrdma_qp** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %10 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %11 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %12 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ocrdma_update_wc(%struct.ocrdma_qp* %9, %struct.ib_wc* %10, i32 %14)
  %16 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %17 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %16, i32 0, i32 0
  %18 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_2__* %17)
  %19 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %20 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ocrdma_update_err_cqe(%struct.ib_wc* %19, %struct.ocrdma_cqe* %20, %struct.ocrdma_qp* %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @ocrdma_update_wc(%struct.ocrdma_qp*, %struct.ib_wc*, i32) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_2__*) #1

declare dso_local i32 @ocrdma_update_err_cqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
