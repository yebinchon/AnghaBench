; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_rx_queue_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_rx_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.il_rx_queue = type { i32*, i32*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_rx_queue_free(%struct.il_priv* %0, %struct.il_rx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_queue* %1, %struct.il_rx_queue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %60, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %9 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %10 = add nsw i32 %8, %9
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %6
  %13 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %12
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %27 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %34, %38
  %40 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %41 = call i32 @pci_unmap_page(%struct.TYPE_6__* %25, i32 %33, i32 %39, i32 %40)
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %44 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @__il_free_pages(%struct.il_priv* %42, i32* %50)
  %52 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %53 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %52, i32 0, i32 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %22, %12
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %6

63:                                               ; preds = %6
  %64 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %69 = mul nsw i32 4, %68
  %70 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %71 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %74 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dma_free_coherent(i32* %67, i32 %69, i32* %72, i32 %75)
  %77 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %82 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %85 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dma_free_coherent(i32* %80, i32 4, i32* %83, i32 %86)
  %88 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  ret void
}

declare dso_local i32 @pci_unmap_page(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @__il_free_pages(%struct.il_priv*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
