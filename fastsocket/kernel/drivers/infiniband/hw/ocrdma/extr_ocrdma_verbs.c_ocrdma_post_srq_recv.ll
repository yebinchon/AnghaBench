; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i64, %struct.ib_recv_wr*, i32 }
%struct.ocrdma_srq = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.ocrdma_hdr_wqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocrdma_srq*, align 8
  %10 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %11 = alloca i64, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %13 = call %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq* %12)
  store %struct.ocrdma_srq* %13, %struct.ocrdma_srq** %9, align 8
  %14 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %15 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  br label %18

18:                                               ; preds = %40, %3
  %19 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %20 = icmp ne %struct.ib_recv_wr* %19, null
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  %22 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %23 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %22, i32 0, i32 1
  %24 = call i64 @ocrdma_hwq_free_cnt(%struct.TYPE_4__* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %31 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26, %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %39 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %38, %struct.ib_recv_wr** %39, align 8
  br label %67

40:                                               ; preds = %26
  %41 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %42 = call i64 @ocrdma_srq_get_idx(%struct.ocrdma_srq* %41)
  store i64 %42, i64* %11, align 8
  %43 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %44 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %43, i32 0, i32 1
  %45 = call %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_4__* %44)
  store %struct.ocrdma_hdr_wqe* %45, %struct.ocrdma_hdr_wqe** %10, align 8
  %46 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %47 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @ocrdma_build_rqe(%struct.ocrdma_hdr_wqe* %46, %struct.ib_recv_wr* %47, i64 %48)
  %50 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %54 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = call i32 (...) @wmb()
  %59 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %60 = call i32 @ocrdma_ring_srq_db(%struct.ocrdma_srq* %59)
  %61 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %62 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %61, i32 0, i32 1
  %63 = call i32 @ocrdma_hwq_inc_head(%struct.TYPE_4__* %62)
  %64 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %65 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %64, i32 0, i32 1
  %66 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %65, align 8
  store %struct.ib_recv_wr* %66, %struct.ib_recv_wr** %5, align 8
  br label %18

67:                                               ; preds = %35, %18
  %68 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %9, align 8
  %69 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ocrdma_hwq_free_cnt(%struct.TYPE_4__*) #1

declare dso_local i64 @ocrdma_srq_get_idx(%struct.ocrdma_srq*) #1

declare dso_local %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_4__*) #1

declare dso_local i32 @ocrdma_build_rqe(%struct.ocrdma_hdr_wqe*, %struct.ib_recv_wr*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ocrdma_ring_srq_db(%struct.ocrdma_srq*) #1

declare dso_local i32 @ocrdma_hwq_inc_head(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
