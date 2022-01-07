; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t3_wr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8*, i8*, i64*, i32 }
%struct.ib_send_wr = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@T3_READ_REQ = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ_WITH_INV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t3_wr*, %struct.ib_send_wr*, i32*)* @build_rdma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_read(%union.t3_wr* %0, %struct.ib_send_wr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.t3_wr*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i32*, align 8
  store %union.t3_wr* %0, %union.t3_wr** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %9 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %93

15:                                               ; preds = %3
  %16 = load i32, i32* @T3_READ_REQ, align 4
  %17 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %18 = bitcast %union.t3_wr* %17 to %struct.TYPE_7__*
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  store i32 %16, i32* %19, align 8
  %20 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_WR_RDMA_READ_WITH_INV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %27 = bitcast %union.t3_wr* %26 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %33

29:                                               ; preds = %15
  %30 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %31 = bitcast %union.t3_wr* %30 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %35 = bitcast %union.t3_wr* %34 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 0, i64* %38, align 8
  %39 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %40 = bitcast %union.t3_wr* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %51 = bitcast %union.t3_wr* %50 to %struct.TYPE_7__*
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i8* %49, i8** %52, align 8
  %53 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @cpu_to_be64(i32 %57)
  %59 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %60 = bitcast %union.t3_wr* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i8* %58, i8** %61, align 8
  %62 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_be32(i32 %67)
  %69 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %70 = bitcast %union.t3_wr* %69 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_be32(i32 %77)
  %79 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %80 = bitcast %union.t3_wr* %79 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_be64(i32 %87)
  %89 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %90 = bitcast %union.t3_wr* %89 to %struct.TYPE_7__*
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load i32*, i32** %7, align 8
  store i32 0, i32* %92, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %33, %12
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
