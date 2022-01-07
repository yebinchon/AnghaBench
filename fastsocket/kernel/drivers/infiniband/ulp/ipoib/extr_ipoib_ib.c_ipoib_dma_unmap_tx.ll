; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_unmap_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_unmap_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ipoib_tx_buf = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.ipoib_tx_buf*)* @ipoib_dma_unmap_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_dma_unmap_tx(%struct.ib_device* %0, %struct.ipoib_tx_buf* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ipoib_tx_buf*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ipoib_tx_buf* %1, %struct.ipoib_tx_buf** %4, align 8
  %10 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %4, align 8
  %14 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i64 @skb_headlen(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @skb_headlen(%struct.sk_buff* %24)
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @ib_dma_unmap_single(%struct.ib_device* %20, i32 %23, i64 %25, i32 %26)
  store i32 1, i32* %8, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %19
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %9, align 8
  %45 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @ib_dma_unmap_page(%struct.ib_device* %45, i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %30

61:                                               ; preds = %30
  ret void
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ib_dma_unmap_page(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
