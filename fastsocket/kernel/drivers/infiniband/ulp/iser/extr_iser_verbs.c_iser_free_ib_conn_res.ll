; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_free_ib_conn_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_free_ib_conn_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i64, i64, %struct.TYPE_5__*, i64, i64, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iser_cq_desc = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"freeing conn %p cma_id %p fmr pool %p qp %p\0A\00", align 1
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_conn*)* @iser_free_ib_conn_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_free_ib_conn_res(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %4 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %5 = icmp eq %struct.iser_conn* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %9 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %16 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @iser_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %8, i32 %11, i32* %14, %struct.TYPE_6__* %17)
  %19 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %25 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ib_destroy_fmr_pool(i32* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %30 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %29, i32 0, i32 5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %35 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.iser_cq_desc*
  %42 = getelementptr inbounds %struct.iser_cq_desc, %struct.iser_cq_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  %44 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %55 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rdma_destroy_qp(i32 %56)
  br label %58

58:                                               ; preds = %33, %28
  %59 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %60 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %59, i32 0, i32 6
  store i32* null, i32** %60, align 8
  %61 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %62 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %61, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %64 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @kfree(i64 %65)
  %67 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %68 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %58
  %72 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %73 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %78 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %83 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %86 = load i32, i32* @DMA_TO_DEVICE, align 4
  %87 = call i32 @ib_dma_unmap_single(i32 %81, i64 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %71
  %89 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %90 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %95 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %100 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @ib_dma_unmap_single(i32 %98, i64 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %88
  %106 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %107 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @kfree(i64 %108)
  br label %110

110:                                              ; preds = %105, %58
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iser_info(i8*, %struct.iser_conn*, i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ib_destroy_fmr_pool(i32*) #1

declare dso_local i32 @rdma_destroy_qp(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
