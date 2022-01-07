; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_dma_unmap_task_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_dma_unmap_task_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.iser_data_buf*, i64*, %struct.TYPE_6__* }
%struct.iser_data_buf = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %0) #0 {
  %2 = alloca %struct.iscsi_iser_task*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.iser_data_buf*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %2, align 8
  %5 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  store %struct.ib_device* %13, %struct.ib_device** %3, align 8
  %14 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %15 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @ISER_DIR_IN, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %22, i32 0, i32 0
  %24 = load %struct.iser_data_buf*, %struct.iser_data_buf** %23, align 8
  %25 = load i64, i64* @ISER_DIR_IN, align 8
  %26 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %24, i64 %25
  store %struct.iser_data_buf* %26, %struct.iser_data_buf** %4, align 8
  %27 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %28 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %29 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %32 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %27, i32 %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %21, %1
  %37 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %38 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @ISER_DIR_OUT, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %46 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %45, i32 0, i32 0
  %47 = load %struct.iser_data_buf*, %struct.iser_data_buf** %46, align 8
  %48 = load i64, i64* @ISER_DIR_OUT, align 8
  %49 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %47, i64 %48
  store %struct.iser_data_buf* %49, %struct.iser_data_buf** %4, align 8
  %50 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %51 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %52 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %55 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %50, i32 %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
