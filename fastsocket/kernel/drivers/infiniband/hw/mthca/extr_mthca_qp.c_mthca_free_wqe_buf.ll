; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_free_wqe_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_free_wqe_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_qp = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_qp*)* @mthca_free_wqe_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_free_wqe_buf(%struct.mthca_dev* %0, %struct.mthca_qp* %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_qp*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store %struct.mthca_qp* %1, %struct.mthca_qp** %4, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %10 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %14 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %8, %18
  %20 = call i32 @PAGE_ALIGN(i64 %19)
  %21 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %22 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %21, i32 0, i32 3
  %23 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %24 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %27 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %26, i32 0, i32 1
  %28 = call i32 @mthca_buf_free(%struct.mthca_dev* %5, i32 %20, i32* %22, i32 %25, i32* %27)
  %29 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %30 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  ret void
}

declare dso_local i32 @mthca_buf_free(%struct.mthca_dev*, i32, i32*, i32, i32*) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
