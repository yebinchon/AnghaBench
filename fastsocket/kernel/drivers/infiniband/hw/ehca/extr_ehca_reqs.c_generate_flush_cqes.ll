; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_reqs.c_generate_flush_cqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_reqs.c_generate_flush_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_qp = type { i32, i32, %struct.ehca_queue_map, %struct.ehca_queue_map }
%struct.ehca_queue_map = type { i64, %struct.ehca_qmap_entry*, i32 }
%struct.ehca_qmap_entry = type { i32, i32 }
%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32*, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ipz_queue = type { i32 }
%struct.ehca_wqe = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Invalid wqe offset=%#llx on qp_num=%#x\00", align 1
@IB_WC_SEND = common dso_local global i32 0, align 4
@IB_WC_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WC_RDMA_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid optype=%x\00", align 1
@IB_WC_RECV = common dso_local global i32 0, align 4
@WQE_WRFLAG_IMM_DATA_PRESENT = common dso_local global i32 0, align 4
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_qp*, %struct.ib_cq*, %struct.ib_wc*, i32, %struct.ipz_queue*, i32)* @generate_flush_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_flush_cqes(%struct.ehca_qp* %0, %struct.ib_cq* %1, %struct.ib_wc* %2, i32 %3, %struct.ipz_queue* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehca_qp*, align 8
  %9 = alloca %struct.ib_cq*, align 8
  %10 = alloca %struct.ib_wc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipz_queue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ehca_wqe*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ehca_queue_map*, align 8
  %18 = alloca %struct.ehca_qmap_entry*, align 8
  store %struct.ehca_qp* %0, %struct.ehca_qp** %8, align 8
  store %struct.ib_cq* %1, %struct.ib_cq** %9, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ipz_queue* %4, %struct.ipz_queue** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.ehca_qp*, %struct.ehca_qp** %8, align 8
  %23 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %22, i32 0, i32 3
  store %struct.ehca_queue_map* %23, %struct.ehca_queue_map** %17, align 8
  br label %27

24:                                               ; preds = %6
  %25 = load %struct.ehca_qp*, %struct.ehca_qp** %8, align 8
  %26 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %25, i32 0, i32 2
  store %struct.ehca_queue_map* %26, %struct.ehca_queue_map** %17, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %29 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %28, i32 0, i32 1
  %30 = load %struct.ehca_qmap_entry*, %struct.ehca_qmap_entry** %29, align 8
  %31 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %32 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ehca_qmap_entry, %struct.ehca_qmap_entry* %30, i64 %33
  store %struct.ehca_qmap_entry* %34, %struct.ehca_qmap_entry** %18, align 8
  br label %35

35:                                               ; preds = %135, %27
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ehca_qmap_entry*, %struct.ehca_qmap_entry** %18, align 8
  %41 = getelementptr inbounds %struct.ehca_qmap_entry, %struct.ehca_qmap_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %167

46:                                               ; preds = %44
  %47 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %48 = call i32 @memset(%struct.ib_wc* %47, i32 0, i32 32)
  %49 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %50 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ipz_queue*, %struct.ipz_queue** %12, align 8
  %53 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %51, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load %struct.ipz_queue*, %struct.ipz_queue** %12, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @ipz_qeit_calc(%struct.ipz_queue* %58, i32 %59)
  %61 = inttoptr i64 %60 to %struct.ehca_wqe*
  store %struct.ehca_wqe* %61, %struct.ehca_wqe** %15, align 8
  %62 = load %struct.ehca_wqe*, %struct.ehca_wqe** %15, align 8
  %63 = icmp ne %struct.ehca_wqe* %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %46
  %65 = load %struct.ib_cq*, %struct.ib_cq** %9, align 8
  %66 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.ehca_qp*, %struct.ehca_qp** %8, align 8
  %70 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ehca_err(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %7, align 4
  br label %169

74:                                               ; preds = %46
  %75 = load %struct.ehca_wqe*, %struct.ehca_wqe** %15, align 8
  %76 = getelementptr inbounds %struct.ehca_wqe, %struct.ehca_wqe* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ehca_qmap_entry*, %struct.ehca_qmap_entry** %18, align 8
  %79 = getelementptr inbounds %struct.ehca_qmap_entry, %struct.ehca_qmap_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @replace_wr_id(i32 %77, i32 %80)
  %82 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %83 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %74
  %87 = load %struct.ehca_wqe*, %struct.ehca_wqe** %15, align 8
  %88 = getelementptr inbounds %struct.ehca_wqe, %struct.ehca_wqe* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %102 [
    i32 128, label %90
    i32 129, label %94
    i32 130, label %98
  ]

90:                                               ; preds = %86
  %91 = load i32, i32* @IB_WC_SEND, align 4
  %92 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %93 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  br label %111

94:                                               ; preds = %86
  %95 = load i32, i32* @IB_WC_RDMA_WRITE, align 4
  %96 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %97 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  br label %111

98:                                               ; preds = %86
  %99 = load i32, i32* @IB_WC_RDMA_READ, align 4
  %100 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %101 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  br label %111

102:                                              ; preds = %86
  %103 = load %struct.ib_cq*, %struct.ib_cq** %9, align 8
  %104 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ehca_wqe*, %struct.ehca_wqe** %15, align 8
  %107 = getelementptr inbounds %struct.ehca_wqe, %struct.ehca_wqe* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, i32, ...) @ehca_err(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %7, align 4
  br label %169

111:                                              ; preds = %98, %94, %90
  br label %116

112:                                              ; preds = %74
  %113 = load i32, i32* @IB_WC_RECV, align 4
  %114 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %115 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %111
  %117 = load %struct.ehca_wqe*, %struct.ehca_wqe** %15, align 8
  %118 = getelementptr inbounds %struct.ehca_wqe, %struct.ehca_wqe* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @WQE_WRFLAG_IMM_DATA_PRESENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load %struct.ehca_wqe*, %struct.ehca_wqe** %15, align 8
  %125 = getelementptr inbounds %struct.ehca_wqe, %struct.ehca_wqe* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %128 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %131 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %132 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %123, %116
  %136 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %137 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %138 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ehca_qp*, %struct.ehca_qp** %8, align 8
  %140 = getelementptr inbounds %struct.ehca_qp, %struct.ehca_qp* %139, i32 0, i32 0
  %141 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %142 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %141, i32 0, i32 0
  store i32* %140, i32** %142, align 8
  %143 = load %struct.ehca_qmap_entry*, %struct.ehca_qmap_entry** %18, align 8
  %144 = getelementptr inbounds %struct.ehca_qmap_entry, %struct.ehca_qmap_entry* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  %145 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %146 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %150 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @next_index(i32 %148, i32 %151)
  %153 = sext i32 %152 to i64
  %154 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %155 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %157 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %156, i32 0, i32 1
  %158 = load %struct.ehca_qmap_entry*, %struct.ehca_qmap_entry** %157, align 8
  %159 = load %struct.ehca_queue_map*, %struct.ehca_queue_map** %17, align 8
  %160 = getelementptr inbounds %struct.ehca_queue_map, %struct.ehca_queue_map* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.ehca_qmap_entry, %struct.ehca_qmap_entry* %158, i64 %161
  store %struct.ehca_qmap_entry* %162, %struct.ehca_qmap_entry** %18, align 8
  %163 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %164 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %163, i32 1
  store %struct.ib_wc* %164, %struct.ib_wc** %10, align 8
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %35

167:                                              ; preds = %44
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %167, %102, %64
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i64 @ipz_qeit_calc(%struct.ipz_queue*, i32) #1

declare dso_local i32 @ehca_err(i32, i8*, i32, ...) #1

declare dso_local i32 @replace_wr_id(i32, i32) #1

declare dso_local i32 @next_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
