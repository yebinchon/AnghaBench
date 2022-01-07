; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_reset_sending_psn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_reset_sending_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i64, i64, i64 }
%struct.qib_swqe = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, i64)* @reset_sending_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_sending_psn(%struct.qib_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qib_swqe*, align 8
  %6 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %8 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %55, %2
  %11 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %11, i64 %12)
  store %struct.qib_swqe* %13, %struct.qib_swqe** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %16 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @qib_cmp24(i64 %14, i64 %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %10
  %21 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %22 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.qib_swqe*, %struct.qib_swqe** %5, align 8
  %29 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %33 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  br label %39

34:                                               ; preds = %20
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %38 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %27
  br label %56

40:                                               ; preds = %10
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %6, align 8
  %43 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %44 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %51 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %56

55:                                               ; preds = %48
  br label %10

56:                                               ; preds = %54, %39
  ret void
}

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

declare dso_local i64 @qib_cmp24(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
