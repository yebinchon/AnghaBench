; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_get_recv_wqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_qp.c_get_recv_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_qp = type { %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mthca_qp*, i32)* @get_recv_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_recv_wqe(%struct.mthca_qp* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mthca_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_qp* %0, %struct.mthca_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %12 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %18 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %16, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %15, i64 %22
  store i8* %23, i8** %3, align 8
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %26 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %31 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %29, %33
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %43 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %41, %45
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %40, i64 %50
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %24, %10
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
