; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_ud_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_ud_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, i32 }
%struct.ocrdma_hdr_wqe = type { i32 }
%struct.ib_send_wr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ocrdma_ewqe_ud_hdr = type { i32, i32, i32 }
%struct.ocrdma_ah = type { i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*)* @ocrdma_build_ud_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_ud_hdr(%struct.ocrdma_qp* %0, %struct.ocrdma_hdr_wqe* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ocrdma_ewqe_ud_hdr*, align 8
  %8 = alloca %struct.ocrdma_ah*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_hdr_wqe* %1, %struct.ocrdma_hdr_wqe** %5, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %6, align 8
  %9 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %10 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %9, i64 1
  %11 = bitcast %struct.ocrdma_hdr_wqe* %10 to %struct.ocrdma_ewqe_ud_hdr*
  store %struct.ocrdma_ewqe_ud_hdr* %11, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocrdma_ah* @get_ocrdma_ah(i32 %16)
  store %struct.ocrdma_ah* %17, %struct.ocrdma_ah** %8, align 8
  %18 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %19 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %26 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_QPT_GSI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %32 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %8, align 8
  %46 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ocrdma_ewqe_ud_hdr*, %struct.ocrdma_ewqe_ud_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ocrdma_ewqe_ud_hdr, %struct.ocrdma_ewqe_ud_hdr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local %struct.ocrdma_ah* @get_ocrdma_ah(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
