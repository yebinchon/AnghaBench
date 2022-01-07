; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_check_req_qp_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_check_req_qp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.ib_cm_event = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IB_CM_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.ib_cm_event*)* @cma_check_req_qp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_check_req_qp_type(%struct.rdma_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.ib_cm_event*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %4, align 8
  %5 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %6 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IB_CM_REQ_RECEIVED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %12 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %17 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %10, %2
  %21 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %22 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_CM_SIDR_REQ_RECEIVED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_QPT_UD, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %34 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %26, %10
  %39 = phi i1 [ true, %26 ], [ true, %10 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
