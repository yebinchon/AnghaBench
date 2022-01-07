; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iser_initialize_task_headers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iser_initialize_task_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.iscsi_iser_task*, %struct.TYPE_5__* }
%struct.iscsi_iser_task = type { %struct.iscsi_iser_conn* }
%struct.iscsi_iser_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.iscsi_iser_conn* }
%struct.iser_tx_desc = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_initialize_task_headers(%struct.iscsi_task* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca %struct.iscsi_iser_conn*, align 8
  %7 = alloca %struct.iser_device*, align 8
  %8 = alloca %struct.iscsi_iser_task*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %5, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %13, align 8
  store %struct.iscsi_iser_conn* %14, %struct.iscsi_iser_conn** %6, align 8
  %15 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.iser_device*, %struct.iser_device** %18, align 8
  store %struct.iser_device* %19, %struct.iser_device** %7, align 8
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 0
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %21, align 8
  store %struct.iscsi_iser_task* %22, %struct.iscsi_iser_task** %8, align 8
  %23 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %24 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %27 = bitcast %struct.iser_tx_desc* %26 to i8*
  %28 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @ib_dma_map_single(i32 %25, i8* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %32 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @ib_dma_mapping_error(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %43 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %45 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %48 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %53 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %54 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  %58 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %59 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %64 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %6, align 8
  %69 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %8, align 8
  %70 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %69, i32 0, i32 0
  store %struct.iscsi_iser_conn* %68, %struct.iscsi_iser_conn** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %40, %37
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
