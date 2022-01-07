; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_meth.c_meth_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meth_private = type { i32*, i64*, i64* }

@RX_RING_ENTRIES = common dso_local global i32 0, align 4
@METH_RX_BUFF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meth_private*)* @meth_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meth_free_rx_ring(%struct.meth_private* %0) #0 {
  %2 = alloca %struct.meth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.meth_private* %0, %struct.meth_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RX_RING_ENTRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %10 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @METH_RX_BUFF_SIZE, align 4
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = call i32 @dma_unmap_single(i32* null, i64 %15, i32 %16, i32 %17)
  %19 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %20 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %26 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 0, i64* %30, align 8
  %31 = load %struct.meth_private*, %struct.meth_private** %2, align 8
  %32 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree_skb(i32 %37)
  br label %39

39:                                               ; preds = %8
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %4
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
