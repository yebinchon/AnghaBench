; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_finalize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.iser_regd_buf*, i64*, %struct.TYPE_3__* }
%struct.iser_regd_buf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_task_rdma_finalize(%struct.iscsi_iser_task* %0) #0 {
  %2 = alloca %struct.iscsi_iser_task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_regd_buf*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @ISER_DIR_IN, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %14 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %15 = load i64, i64* @ISER_DIR_IN, align 8
  %16 = call i32 @iser_finalize_rdma_unaligned_sg(%struct.iscsi_iser_task* %14, i64 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %19 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i64, i64* @ISER_DIR_OUT, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  %27 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %28 = load i64, i64* @ISER_DIR_OUT, align 8
  %29 = call i32 @iser_finalize_rdma_unaligned_sg(%struct.iscsi_iser_task* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %32 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @ISER_DIR_IN, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %40 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %39, i32 0, i32 0
  %41 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %40, align 8
  %42 = load i64, i64* @ISER_DIR_IN, align 8
  %43 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %41, i64 %42
  store %struct.iser_regd_buf* %43, %struct.iser_regd_buf** %4, align 8
  %44 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %4, align 8
  %45 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %4, align 8
  %51 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %50, i32 0, i32 0
  %52 = call i32 @iser_unreg_mem(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %49, %38
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %56 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @ISER_DIR_OUT, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %64 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %63, i32 0, i32 0
  %65 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %64, align 8
  %66 = load i64, i64* @ISER_DIR_OUT, align 8
  %67 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %65, i64 %66
  store %struct.iser_regd_buf* %67, %struct.iser_regd_buf** %4, align 8
  %68 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %4, align 8
  %69 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.iser_regd_buf*, %struct.iser_regd_buf** %4, align 8
  %75 = getelementptr inbounds %struct.iser_regd_buf, %struct.iser_regd_buf* %74, i32 0, i32 0
  %76 = call i32 @iser_unreg_mem(%struct.TYPE_4__* %75)
  br label %77

77:                                               ; preds = %73, %62
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %83 = call i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %82)
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @iser_finalize_rdma_unaligned_sg(%struct.iscsi_iser_task*, i64) #1

declare dso_local i32 @iser_unreg_mem(%struct.TYPE_4__*) #1

declare dso_local i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
