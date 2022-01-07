; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_rx_queue_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_rx_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }
%struct.ipw_rx_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@IPW_RX_BUF_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, %struct.ipw_rx_queue*)* @ipw_rx_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_rx_queue_free(%struct.ipw_priv* %0, %struct.ipw_rx_queue* %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.ipw_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store %struct.ipw_rx_queue* %1, %struct.ipw_rx_queue** %4, align 8
  %6 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %7 = icmp ne %struct.ipw_rx_queue* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %57

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %51, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %13 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %14 = add nsw i32 %12, %13
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %18 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %16
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %31 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IPW_RX_BUF_SIZE, align 4
  %39 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %40 = call i32 @pci_unmap_single(i32 %29, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dev_kfree_skb(i32* %48)
  br label %50

50:                                               ; preds = %26, %16
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %56 = call i32 @kfree(%struct.ipw_rx_queue* %55)
  br label %57

57:                                               ; preds = %54, %8
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @kfree(%struct.ipw_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
