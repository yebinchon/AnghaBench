; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_free_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_free_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.iser_rx_desc*, %struct.iser_device* }
%struct.iser_rx_desc = type { i32 }
%struct.iser_device = type { i32 }

@ISER_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_free_rx_descriptors(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_rx_desc*, align 8
  %5 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 1
  %8 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  store %struct.iser_device* %8, %struct.iser_device** %5, align 8
  %9 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 0
  %11 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  %12 = icmp ne %struct.iser_rx_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %16 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %15, i32 0, i32 0
  %17 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %16, align 8
  store %struct.iser_rx_desc* %17, %struct.iser_rx_desc** %4, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %32, %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ISER_QP_MAX_RECV_DTOS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %24 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %27 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @ib_dma_unmap_single(i32 %25, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  %35 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %36 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %35, i32 1
  store %struct.iser_rx_desc* %36, %struct.iser_rx_desc** %4, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %39 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %38, i32 0, i32 0
  %40 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %39, align 8
  %41 = call i32 @kfree(%struct.iser_rx_desc* %40)
  br label %42

42:                                               ; preds = %37, %13
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iser_rx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
