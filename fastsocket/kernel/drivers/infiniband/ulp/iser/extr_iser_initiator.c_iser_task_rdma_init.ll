; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { i32*, %struct.TYPE_2__*, i64*, i32 }
%struct.TYPE_2__ = type { i64 }

@ISER_TASK_STATUS_INIT = common dso_local global i32 0, align 4
@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_task_rdma_init(%struct.iscsi_iser_task* %0) #0 {
  %2 = alloca %struct.iscsi_iser_task*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %2, align 8
  %3 = load i32, i32* @ISER_TASK_STATUS_INIT, align 4
  %4 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %6, i32 0, i32 2
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @ISER_DIR_IN, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  store i64 0, i64* %10, align 8
  %11 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @ISER_DIR_OUT, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @ISER_DIR_IN, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @ISER_DIR_OUT, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @ISER_DIR_IN, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @ISER_DIR_OUT, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @memset(i32* %38, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
