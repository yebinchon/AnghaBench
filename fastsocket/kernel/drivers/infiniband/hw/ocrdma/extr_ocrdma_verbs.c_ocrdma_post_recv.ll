; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i64, %struct.ib_recv_wr*, i32 }
%struct.ocrdma_qp = type { i64, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ocrdma_hdr_wqe = type { i32 }

@OCRDMA_QPS_RST = common dso_local global i64 0, align 8
@OCRDMA_QPS_ERR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocrdma_qp*, align 8
  %11 = alloca %struct.ocrdma_hdr_wqe*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %12)
  store %struct.ocrdma_qp* %13, %struct.ocrdma_qp** %10, align 8
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %19 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCRDMA_QPS_RST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %25 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCRDMA_QPS_ERR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23, %3
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 1
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %35 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %34, %struct.ib_recv_wr** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %94

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %61, %38
  %40 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %41 = icmp ne %struct.ib_recv_wr* %40, null
  br i1 %41, label %42, label %88

42:                                               ; preds = %39
  %43 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %44 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %43, i32 0, i32 2
  %45 = call i64 @ocrdma_hwq_free_cnt(%struct.TYPE_4__* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %52 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47, %42
  %57 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %58 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %57, %struct.ib_recv_wr** %58, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %88

61:                                               ; preds = %47
  %62 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %63 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %62, i32 0, i32 2
  %64 = call %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_4__* %63)
  store %struct.ocrdma_hdr_wqe* %64, %struct.ocrdma_hdr_wqe** %11, align 8
  %65 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %11, align 8
  %66 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %67 = call i32 @ocrdma_build_rqe(%struct.ocrdma_hdr_wqe* %65, %struct.ib_recv_wr* %66, i32 0)
  %68 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %72 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %75 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 %70, i32* %78, align 4
  %79 = call i32 (...) @wmb()
  %80 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %81 = call i32 @ocrdma_ring_rq_db(%struct.ocrdma_qp* %80)
  %82 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %83 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %82, i32 0, i32 2
  %84 = call i32 @ocrdma_hwq_inc_head(%struct.TYPE_4__* %83)
  %85 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %85, i32 0, i32 1
  %87 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %86, align 8
  store %struct.ib_recv_wr* %87, %struct.ib_recv_wr** %6, align 8
  br label %39

88:                                               ; preds = %56, %39
  %89 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %10, align 8
  %90 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %89, i32 0, i32 1
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %29
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ocrdma_hwq_free_cnt(%struct.TYPE_4__*) #1

declare dso_local %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_4__*) #1

declare dso_local i32 @ocrdma_build_rqe(%struct.ocrdma_hdr_wqe*, %struct.ib_recv_wr*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ocrdma_ring_rq_db(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_hwq_inc_head(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
