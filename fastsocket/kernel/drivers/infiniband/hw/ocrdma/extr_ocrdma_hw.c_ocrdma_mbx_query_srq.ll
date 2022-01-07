; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.ocrdma_query_srq = type { i32 }
%struct.ocrdma_query_srq_rsp = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_CREATE_SRQ = common dso_local global i32 0, align 4
@OCRDMA_QUERY_SRQ_RSP_MAX_SGE_RECV_MASK = common dso_local global i32 0, align 4
@OCRDMA_QUERY_SRQ_RSP_MAX_RQE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QUERY_SRQ_RSP_SRQ_LIMIT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_query_srq(%struct.ocrdma_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_query_srq*, align 8
  %8 = alloca %struct.ocrdma_query_srq_rsp*, align 8
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @OCRDMA_CMD_CREATE_SRQ, align 4
  %12 = call %struct.ocrdma_query_srq* @ocrdma_init_emb_mqe(i32 %11, i32 4)
  store %struct.ocrdma_query_srq* %12, %struct.ocrdma_query_srq** %7, align 8
  %13 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %14 = icmp ne %struct.ocrdma_query_srq* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %19 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %23 = getelementptr inbounds %struct.ocrdma_query_srq, %struct.ocrdma_query_srq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %25 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %28 = bitcast %struct.ocrdma_query_srq* %27 to %struct.ocrdma_mqe*
  %29 = call i32 @ocrdma_mbx_cmd(i32 %26, %struct.ocrdma_mqe* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %17
  %33 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %34 = bitcast %struct.ocrdma_query_srq* %33 to %struct.ocrdma_query_srq_rsp*
  store %struct.ocrdma_query_srq_rsp* %34, %struct.ocrdma_query_srq_rsp** %8, align 8
  %35 = load %struct.ocrdma_query_srq_rsp*, %struct.ocrdma_query_srq_rsp** %8, align 8
  %36 = getelementptr inbounds %struct.ocrdma_query_srq_rsp, %struct.ocrdma_query_srq_rsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OCRDMA_QUERY_SRQ_RSP_MAX_SGE_RECV_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ocrdma_query_srq_rsp*, %struct.ocrdma_query_srq_rsp** %8, align 8
  %43 = getelementptr inbounds %struct.ocrdma_query_srq_rsp, %struct.ocrdma_query_srq_rsp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OCRDMA_QUERY_SRQ_RSP_MAX_RQE_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ocrdma_query_srq_rsp*, %struct.ocrdma_query_srq_rsp** %8, align 8
  %50 = getelementptr inbounds %struct.ocrdma_query_srq_rsp, %struct.ocrdma_query_srq_rsp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OCRDMA_QUERY_SRQ_RSP_SRQ_LIMIT_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %32, %17
  %57 = load %struct.ocrdma_query_srq*, %struct.ocrdma_query_srq** %7, align 8
  %58 = call i32 @kfree(%struct.ocrdma_query_srq* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ocrdma_query_srq* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(i32, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_query_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
