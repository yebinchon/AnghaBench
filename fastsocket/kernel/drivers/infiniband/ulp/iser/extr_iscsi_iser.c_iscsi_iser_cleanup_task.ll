; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.TYPE_3__*, %struct.iscsi_iser_task* }
%struct.TYPE_3__ = type { %struct.iscsi_iser_conn* }
%struct.iscsi_iser_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }
%struct.iscsi_iser_task = type { i64, %struct.iser_tx_desc }
%struct.iser_tx_desc = type { i32 }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_TASK_STATUS_STARTED = common dso_local global i64 0, align 8
@ISER_TASK_STATUS_COMPLETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @iscsi_iser_cleanup_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_iser_task*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca %struct.iscsi_iser_conn*, align 8
  %6 = alloca %struct.iser_device*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 2
  %9 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %8, align 8
  store %struct.iscsi_iser_task* %9, %struct.iscsi_iser_task** %3, align 8
  %10 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %10, i32 0, i32 1
  store %struct.iser_tx_desc* %11, %struct.iser_tx_desc** %4, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %15, align 8
  store %struct.iscsi_iser_conn* %16, %struct.iscsi_iser_conn** %5, align 8
  %17 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.iser_device*, %struct.iser_device** %20, align 8
  store %struct.iser_device* %21, %struct.iser_device** %6, align 8
  %22 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %23 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %26 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @ib_dma_unmap_single(i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %32 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ISER_TASK_STATUS_STARTED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i64, i64* @ISER_TASK_STATUS_COMPLETED, align 8
  %44 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %47 = call i32 @iser_task_rdma_finalize(%struct.iscsi_iser_task* %46)
  br label %48

48:                                               ; preds = %35, %42, %36
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @iser_task_rdma_finalize(%struct.iscsi_iser_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
