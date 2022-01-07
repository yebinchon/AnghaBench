; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cq.c_cqe_completes_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cq.c_cqe_completes_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cqe = type { i32 }
%struct.t4_wq = type { i32 }

@FW_RI_TERMINATE = common dso_local global i64 0, align 8
@FW_RI_RDMA_WRITE = common dso_local global i64 0, align 8
@FW_RI_READ_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cqe*, %struct.t4_wq*)* @cqe_completes_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqe_completes_wr(%struct.t4_cqe* %0, %struct.t4_wq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t4_cqe*, align 8
  %5 = alloca %struct.t4_wq*, align 8
  store %struct.t4_cqe* %0, %struct.t4_cqe** %4, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %5, align 8
  %6 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %7 = call i64 @CQE_OPCODE(%struct.t4_cqe* %6)
  %8 = load i64, i64* @FW_RI_TERMINATE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %13 = call i64 @CQE_OPCODE(%struct.t4_cqe* %12)
  %14 = load i64, i64* @FW_RI_RDMA_WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %18 = call i64 @RQ_TYPE(%struct.t4_cqe* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

21:                                               ; preds = %16, %11
  %22 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %23 = call i64 @CQE_OPCODE(%struct.t4_cqe* %22)
  %24 = load i64, i64* @FW_RI_READ_RESP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %28 = call i64 @SQ_TYPE(%struct.t4_cqe* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %45

31:                                               ; preds = %26, %21
  %32 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %33 = call i64 @CQE_SEND_OPCODE(%struct.t4_cqe* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.t4_cqe*, %struct.t4_cqe** %4, align 8
  %37 = call i64 @RQ_TYPE(%struct.t4_cqe* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %41 = call i64 @t4_rq_empty(%struct.t4_wq* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %45

44:                                               ; preds = %39, %35, %31
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %30, %20, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i64 @RQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @SQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_SEND_OPCODE(%struct.t4_cqe*) #1

declare dso_local i64 @t4_rq_empty(%struct.t4_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
