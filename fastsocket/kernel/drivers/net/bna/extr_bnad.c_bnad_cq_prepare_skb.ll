; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cq_prepare_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_cq_prepare_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.bnad_rx_ctrl = type { i32, %struct.bnad* }
%struct.bnad = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnad_rx_unmap_q = type { i32 }
%struct.bnad_rx_unmap = type { %struct.TYPE_6__, %struct.sk_buff*, i32*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@dma_addr = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnad_rx_ctrl*, %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap*, i32, i32)* @bnad_cq_prepare_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnad_cq_prepare_skb(%struct.bnad_rx_ctrl* %0, %struct.bnad_rx_unmap_q* %1, %struct.bnad_rx_unmap* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.bnad_rx_ctrl*, align 8
  %8 = alloca %struct.bnad_rx_unmap_q*, align 8
  %9 = alloca %struct.bnad_rx_unmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnad*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.bnad_rx_ctrl* %0, %struct.bnad_rx_ctrl** %7, align 8
  store %struct.bnad_rx_unmap_q* %1, %struct.bnad_rx_unmap_q** %8, align 8
  store %struct.bnad_rx_unmap* %2, %struct.bnad_rx_unmap** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %7, align 8
  %15 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %14, i32 0, i32 1
  %16 = load %struct.bnad*, %struct.bnad** %15, align 8
  store %struct.bnad* %16, %struct.bnad** %12, align 8
  %17 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %8, align 8
  %18 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @BNAD_RXBUF_IS_PAGE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %5
  %23 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %7, align 8
  %24 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %23, i32 0, i32 0
  %25 = call %struct.sk_buff* @napi_get_frags(i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %13, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %121

33:                                               ; preds = %22
  %34 = load %struct.bnad*, %struct.bnad** %12, align 8
  %35 = getelementptr inbounds %struct.bnad, %struct.bnad* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %39 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %38, i32 0, i32 0
  %40 = load i32, i32* @dma_addr, align 4
  %41 = call i32 @dma_unmap_addr(%struct.TYPE_6__* %39, i32 %40)
  %42 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %43 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_unmap_page(i32* %37, i32 %41, i64 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %50 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %54 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %57 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @skb_fill_page_desc(%struct.sk_buff* %48, i32 %52, i32* %55, i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %77 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %79 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %81, %struct.sk_buff** %6, align 8
  br label %121

82:                                               ; preds = %5
  %83 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %84 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %83, i32 0, i32 1
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  store %struct.sk_buff* %85, %struct.sk_buff** %13, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  %91 = load %struct.bnad*, %struct.bnad** %12, align 8
  %92 = getelementptr inbounds %struct.bnad, %struct.bnad* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %96 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %95, i32 0, i32 0
  %97 = load i32, i32* @dma_addr, align 4
  %98 = call i32 @dma_unmap_addr(%struct.TYPE_6__* %96, i32 %97)
  %99 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %100 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @dma_unmap_single(i32* %94, i32 %98, i64 %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @skb_put(%struct.sk_buff* %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = load %struct.bnad*, %struct.bnad** %12, align 8
  %110 = getelementptr inbounds %struct.bnad, %struct.bnad* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @eth_type_trans(%struct.sk_buff* %108, i32 %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %116 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %115, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %116, align 8
  %117 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %9, align 8
  %118 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %120, %struct.sk_buff** %6, align 8
  br label %121

121:                                              ; preds = %82, %33, %32
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %122
}

declare dso_local i64 @BNAD_RXBUF_IS_PAGE(i32) #1

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
