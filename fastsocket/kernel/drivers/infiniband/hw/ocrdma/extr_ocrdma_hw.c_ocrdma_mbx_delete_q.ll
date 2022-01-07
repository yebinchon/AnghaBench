; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_delete_q.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_delete_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__, %struct.ocrdma_delete_q_req* }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_delete_q_req = type { i32, i32 }
%struct.ocrdma_queue_info = type { i32, i32 }

@OCRDMA_CMD_DELETE_MQ = common dso_local global i32 0, align 4
@OCRDMA_CMD_DELETE_CQ = common dso_local global i32 0, align 4
@OCRDMA_CMD_DELETE_EQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_queue_info*, i32)* @ocrdma_mbx_delete_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev* %0, %struct.ocrdma_queue_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_queue_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_delete_q_req*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %10, i32 0, i32 1
  %12 = load %struct.ocrdma_delete_q_req*, %struct.ocrdma_delete_q_req** %11, align 8
  store %struct.ocrdma_delete_q_req* %12, %struct.ocrdma_delete_q_req** %9, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 130, label %16
    i32 129, label %18
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @OCRDMA_CMD_DELETE_MQ, align 4
  store i32 %15, i32* %7, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @OCRDMA_CMD_DELETE_CQ, align 4
  store i32 %17, i32* %7, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @OCRDMA_CMD_DELETE_EQ, align 4
  store i32 %19, i32* %7, align 4
  br label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  %23 = load %struct.ocrdma_delete_q_req*, %struct.ocrdma_delete_q_req** %9, align 8
  %24 = call i32 @memset(%struct.ocrdma_delete_q_req* %23, i32 0, i32 8)
  %25 = load %struct.ocrdma_delete_q_req*, %struct.ocrdma_delete_q_req** %9, align 8
  %26 = getelementptr inbounds %struct.ocrdma_delete_q_req, %struct.ocrdma_delete_q_req* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %29 = call i32 @ocrdma_init_mch(i32* %26, i32 %27, i32 %28, i32 8)
  %30 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %31 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ocrdma_delete_q_req*, %struct.ocrdma_delete_q_req** %9, align 8
  %34 = getelementptr inbounds %struct.ocrdma_delete_q_req, %struct.ocrdma_delete_q_req* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %36 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ocrdma_delete_q_req*, %struct.ocrdma_delete_q_req** %9, align 8
  %40 = call i32 @be_roce_mcc_cmd(i32 %38, %struct.ocrdma_delete_q_req* %39, i32 8, i32* null, i32* null)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %22
  %44 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %45 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %22
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(%struct.ocrdma_delete_q_req*, i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(i32*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_delete_q_req*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
