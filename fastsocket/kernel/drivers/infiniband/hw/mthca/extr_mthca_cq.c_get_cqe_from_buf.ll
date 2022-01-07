; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_get_cqe_from_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cq.c_get_cqe_from_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_cqe = type { i32 }
%struct.mthca_cq_buf = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.mthca_cqe* }
%struct.TYPE_4__ = type { %struct.mthca_cqe* }

@MTHCA_CQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mthca_cqe* (%struct.mthca_cq_buf*, i32)* @get_cqe_from_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mthca_cqe* @get_cqe_from_buf(%struct.mthca_cq_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_cqe*, align 8
  %4 = alloca %struct.mthca_cq_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_cq_buf* %0, %struct.mthca_cq_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %4, align 8
  %12 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.mthca_cqe*, %struct.mthca_cqe** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MTHCA_CQ_ENTRY_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %15, i64 %19
  store %struct.mthca_cqe* %20, %struct.mthca_cqe** %3, align 8
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.mthca_cq_buf*, %struct.mthca_cq_buf** %4, align 8
  %23 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MTHCA_CQ_ENTRY_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sdiv i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.mthca_cqe*, %struct.mthca_cqe** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MTHCA_CQ_ENTRY_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = srem i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %34, i64 %40
  store %struct.mthca_cqe* %41, %struct.mthca_cqe** %3, align 8
  br label %42

42:                                               ; preds = %21, %10
  %43 = load %struct.mthca_cqe*, %struct.mthca_cqe** %3, align 8
  ret %struct.mthca_cqe* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
