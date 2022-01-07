; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_tso_put_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_tso_put_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.efx_tx_buffer = type { i32, i64, i64, i32, i32 }

@EFX_TX_BUF_HEAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_TX_BUF_MAP_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.efx_tx_buffer*, i32*)* @efx_tso_put_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_tso_put_header(%struct.efx_tx_queue* %0, %struct.efx_tx_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca %struct.efx_tx_buffer*, align 8
  %7 = alloca i32*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store %struct.efx_tx_buffer* %1, %struct.efx_tx_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %9 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EFX_TX_BUF_HEAP, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %3
  %16 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %17 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_map_single(i32* %21, i32* %22, i64 %25, i32 %26)
  %28 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %31 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_mapping_error(i32* %35, i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %15
  %43 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %15
  %54 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %55 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @EFX_TX_BUF_MAP_SINGLE, align 4
  %60 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %53, %3
  %65 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %66 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %42
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
