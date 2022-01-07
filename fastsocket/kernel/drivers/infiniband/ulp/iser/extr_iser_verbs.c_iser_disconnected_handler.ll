; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_disconnected_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_disconnected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.iser_conn = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISER_CONN_UP = common dso_local global i32 0, align 4
@ISER_CONN_TERMINATING = common dso_local global i32 0, align 4
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@ISER_CONN_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @iser_disconnected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_disconnected_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %5 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %6 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.iser_conn*
  store %struct.iser_conn* %8, %struct.iser_conn** %3, align 8
  %9 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %10 = load i32, i32* @ISER_CONN_UP, align 4
  %11 = load i32, i32* @ISER_CONN_TERMINATING, align 4
  %12 = call i64 @iser_conn_state_comp_exch(%struct.iser_conn* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %16 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %21 = call i32 @iscsi_conn_failure(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %29 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %28, i32 0, i32 3
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @ISER_CONN_DOWN, align 4
  %34 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %35 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %37 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %36, i32 0, i32 1
  %38 = call i32 @wake_up_interruptible(i32* %37)
  br label %39

39:                                               ; preds = %32, %27, %22
  %40 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %41 = call i32 @iser_conn_put(%struct.iser_conn* %40, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @iser_conn_state_comp_exch(%struct.iser_conn*, i32, i32) #1

declare dso_local i32 @iscsi_conn_failure(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @iser_conn_put(%struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
