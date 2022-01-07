; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cqe_completes_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cqe_completes_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3_cqe = type { i32 }
%struct.t3_wq = type { i32, i32 }

@T3_TERMINATE = common dso_local global i64 0, align 8
@T3_RDMA_WRITE = common dso_local global i64 0, align 8
@T3_READ_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3_cqe*, %struct.t3_wq*)* @cqe_completes_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqe_completes_wr(%struct.t3_cqe* %0, %struct.t3_wq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.t3_cqe*, align 8
  %5 = alloca %struct.t3_wq*, align 8
  store %struct.t3_cqe* %0, %struct.t3_cqe** %4, align 8
  store %struct.t3_wq* %1, %struct.t3_wq** %5, align 8
  %6 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %7 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @CQE_OPCODE(i32 %8)
  %10 = load i64, i64* @T3_TERMINATE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %15 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CQE_OPCODE(i32 %16)
  %18 = load i64, i64* @T3_RDMA_WRITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %22 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @RQ_TYPE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %64

27:                                               ; preds = %20, %13
  %28 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %29 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @CQE_OPCODE(i32 %30)
  %32 = load i64, i64* @T3_READ_RESP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %36 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SQ_TYPE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %64

41:                                               ; preds = %34, %27
  %42 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %43 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CQE_SEND_OPCODE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  %49 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @RQ_TYPE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %55 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.t3_wq*, %struct.t3_wq** %5, align 8
  %58 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @Q_EMPTY(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %53, %47, %41
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %40, %26, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @CQE_OPCODE(i32) #1

declare dso_local i64 @RQ_TYPE(i32) #1

declare dso_local i64 @SQ_TYPE(i32) #1

declare dso_local i64 @CQE_SEND_OPCODE(i32) #1

declare dso_local i64 @Q_EMPTY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
