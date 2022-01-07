; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_success_rcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_poll_success_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64, %struct.TYPE_8__, i32*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ocrdma_cqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_5__, i32, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i8*, i8* }

@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_WITH_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_cqe*, %struct.ib_wc*)* @ocrdma_poll_success_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_poll_success_rcqe(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_cqe*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %5, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %7 = load i32, i32* @IB_WC_RECV, align 4
  %8 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %9 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %10, i32 0, i32 3
  %12 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %13 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 6
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %13, align 8
  %14 = load i32, i32* @IB_WC_SUCCESS, align 4
  %15 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %16 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_QPT_UD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %24 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_QPT_GSI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %3
  %29 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %30 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %31 = call i32 @ocrdma_update_ud_rcqe(%struct.ib_wc* %29, %struct.ocrdma_cqe* %30)
  br label %40

32:                                               ; preds = %22
  %33 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %32, %28
  %41 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %42 = call i64 @is_cqe_imm(%struct.ocrdma_cqe* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %46 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = call i8* @htonl(i8* %49)
  %51 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %52 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %101

59:                                               ; preds = %40
  %60 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %61 = call i64 @is_cqe_wr_imm(%struct.ocrdma_cqe* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32, i32* @IB_WC_RECV_RDMA_WITH_IMM, align 4
  %65 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %68 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = call i8* @htonl(i8* %71)
  %73 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %77 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %100

81:                                               ; preds = %59
  %82 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %83 = call i64 @is_cqe_invalidated(%struct.ocrdma_cqe* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %87 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %92 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* @IB_WC_WITH_INVALIDATE, align 4
  %95 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %96 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %85, %81
  br label %100

100:                                              ; preds = %99, %63
  br label %101

101:                                              ; preds = %100, %44
  %102 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %103 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %109 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %5, align 8
  %110 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %111 = call i32 @ocrdma_update_free_srq_cqe(%struct.ib_wc* %108, %struct.ocrdma_cqe* %109, %struct.ocrdma_qp* %110)
  br label %127

112:                                              ; preds = %101
  %113 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %114 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %117 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %123 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %125 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %124, i32 0, i32 1
  %126 = call i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %112, %107
  ret void
}

declare dso_local i32 @ocrdma_update_ud_rcqe(%struct.ib_wc*, %struct.ocrdma_cqe*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @is_cqe_imm(%struct.ocrdma_cqe*) #1

declare dso_local i8* @htonl(i8*) #1

declare dso_local i64 @is_cqe_wr_imm(%struct.ocrdma_cqe*) #1

declare dso_local i64 @is_cqe_invalidated(%struct.ocrdma_cqe*) #1

declare dso_local i32 @ocrdma_update_free_srq_cqe(%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_hwq_inc_tail(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
