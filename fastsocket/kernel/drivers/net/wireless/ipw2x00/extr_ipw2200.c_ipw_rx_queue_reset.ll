; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_rx_queue_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_rx_queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }
%struct.ipw_rx_queue = type { i32, i64, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@IPW_RX_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, %struct.ipw_rx_queue*)* @ipw_rx_queue_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_rx_queue_reset(%struct.ipw_priv* %0, %struct.ipw_rx_queue* %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.ipw_rx_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store %struct.ipw_rx_queue* %1, %struct.ipw_rx_queue** %4, align 8
  %7 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %11, i32 0, i32 6
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %75, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %20 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %17
  %24 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %25 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %23
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IPW_RX_BUF_SIZE, align 4
  %46 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %47 = call i32 @pci_unmap_single(i32 %36, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @dev_kfree_skb(i32* %55)
  %57 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %58 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %57, i32 0, i32 5
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %33, %23
  %65 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %66 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %73 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %72, i32 0, i32 4
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %82 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %84 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %86 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %85, i32 0, i32 0
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
