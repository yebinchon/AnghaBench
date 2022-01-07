; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_dequeue_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_dequeue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.efx_tx_buffer = type { i32, i64, i32, i64, i64, i64 }
%struct.sk_buff = type { i32 }

@EFX_TX_BUF_MAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFX_TX_BUF_SKB = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TX queue %d transmission id %x complete\0A\00", align 1
@EFX_TX_BUF_HEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, %struct.efx_tx_buffer*)* @efx_dequeue_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_dequeue_buffer(%struct.efx_tx_queue* %0, %struct.efx_tx_buffer* %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca %struct.efx_tx_buffer*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store %struct.efx_tx_buffer* %1, %struct.efx_tx_buffer** %4, align 8
  %7 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %13 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EFX_TX_BUF_MAP_SINGLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %11
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_unmap_single(%struct.device* %36, i64 %37, i64 %40, i32 %41)
  br label %51

43:                                               ; preds = %11
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @dma_unmap_page(%struct.device* %44, i64 %45, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %2
  %55 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EFX_TX_BUF_SKB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %54
  %62 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %63 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.sk_buff*
  %66 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %65)
  %67 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %68 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @tx_done, align 4
  %71 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %72 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %77 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %80 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_vdbg(%struct.TYPE_4__* %69, i32 %70, i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81)
  br label %96

83:                                               ; preds = %54
  %84 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %85 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @EFX_TX_BUF_HEAP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %92 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @kfree(i32 %93)
  br label %95

95:                                               ; preds = %90, %83
  br label %96

96:                                               ; preds = %95, %61
  %97 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %100 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netif_vdbg(%struct.TYPE_4__*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
