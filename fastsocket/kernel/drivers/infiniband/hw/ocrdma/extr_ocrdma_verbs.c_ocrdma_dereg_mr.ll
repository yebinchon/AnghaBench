; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ocrdma_mr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_dereg_mr(%struct.ib_mr* %0) #0 {
  %2 = alloca %struct.ib_mr*, align 8
  %3 = alloca %struct.ocrdma_mr*, align 8
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %2, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %2, align 8
  %7 = call %struct.ocrdma_mr* @get_ocrdma_mr(%struct.ib_mr* %6)
  store %struct.ocrdma_mr* %7, %struct.ocrdma_mr** %3, align 8
  %8 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %9 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  store %struct.ocrdma_dev* %11, %struct.ocrdma_dev** %4, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %13 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %14 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %18 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ocrdma_mbx_dealloc_lkey(%struct.ocrdma_dev* %12, i64 %16, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %23 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %29 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %30 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %29, i32 0, i32 1
  %31 = call i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev* %28, %struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %34 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %39 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ib_umem_release(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %3, align 8
  %44 = call i32 @kfree(%struct.ocrdma_mr* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.ocrdma_mr* @get_ocrdma_mr(%struct.ib_mr*) #1

declare dso_local i32 @ocrdma_mbx_dealloc_lkey(%struct.ocrdma_dev*, i64, i32) #1

declare dso_local i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.ocrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
