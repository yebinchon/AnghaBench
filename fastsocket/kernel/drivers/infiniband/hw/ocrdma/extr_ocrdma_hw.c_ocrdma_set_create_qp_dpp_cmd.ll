; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_dpp_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_dpp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_create_qp_req = type { i32, i32 }
%struct.ocrdma_pd = type { i32 }
%struct.ocrdma_qp = type { i32 }

@OCRDMA_CREATE_QP_REQ_ENABLE_DPP_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_DPP_CREDIT_LIMIT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_DPP_CREDIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_create_qp_req*, %struct.ocrdma_pd*, %struct.ocrdma_qp*, i32, i32)* @ocrdma_set_create_qp_dpp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_set_create_qp_dpp_cmd(%struct.ocrdma_create_qp_req* %0, %struct.ocrdma_pd* %1, %struct.ocrdma_qp* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocrdma_create_qp_req*, align 8
  %7 = alloca %struct.ocrdma_pd*, align 8
  %8 = alloca %struct.ocrdma_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocrdma_create_qp_req* %0, %struct.ocrdma_create_qp_req** %6, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %7, align 8
  store %struct.ocrdma_qp* %2, %struct.ocrdma_qp** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %12 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %8, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* @OCRDMA_CREATE_QP_REQ_ENABLE_DPP_MASK, align 4
  %18 = load %struct.ocrdma_create_qp_req*, %struct.ocrdma_create_qp_req** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_create_qp_req, %struct.ocrdma_create_qp_req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %41

25:                                               ; preds = %5
  %26 = load i32, i32* @OCRDMA_CREATE_QP_REQ_ENABLE_DPP_MASK, align 4
  %27 = load %struct.ocrdma_create_qp_req*, %struct.ocrdma_create_qp_req** %6, align 8
  %28 = getelementptr inbounds %struct.ocrdma_create_qp_req, %struct.ocrdma_create_qp_req* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ocrdma_create_qp_req*, %struct.ocrdma_create_qp_req** %6, align 8
  %33 = getelementptr inbounds %struct.ocrdma_create_qp_req, %struct.ocrdma_create_qp_req* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @OCRDMA_CREATE_QP_REQ_DPP_CREDIT_LIMIT, align 4
  %35 = load i32, i32* @OCRDMA_CREATE_QP_REQ_DPP_CREDIT_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.ocrdma_create_qp_req*, %struct.ocrdma_create_qp_req** %6, align 8
  %38 = getelementptr inbounds %struct.ocrdma_create_qp_req, %struct.ocrdma_create_qp_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %25, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
