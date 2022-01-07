; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_refill_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_refill_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bna_rcb = type { i64, i64, i32, i64, %struct.TYPE_4__*, %struct.bnad_rx_unmap_q* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.bnad_rx_unmap_q = type { %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { %struct.TYPE_6__, %struct.sk_buff* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.bna_rxq_entry = type { i32 }

@rxbuf_alloc_failed = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BNAD_RXQ_POST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, %struct.bna_rcb*, i64)* @bnad_rxq_refill_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_rxq_refill_skb(%struct.bnad* %0, %struct.bna_rcb* %1, i64 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_rcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnad_rx_unmap_q*, align 8
  %12 = alloca %struct.bnad_rx_unmap*, align 8
  %13 = alloca %struct.bna_rxq_entry*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %17 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %16, i32 0, i32 5
  %18 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %17, align 8
  store %struct.bnad_rx_unmap_q* %18, %struct.bnad_rx_unmap_q** %11, align 8
  %19 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %20 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %25 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %28 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %61, %3
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %6, align 8
  %33 = icmp ne i64 %31, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %30
  %35 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %11, align 8
  %36 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %35, i32 0, i32 0
  %37 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %37, i64 %38
  store %struct.bnad_rx_unmap* %39, %struct.bnad_rx_unmap** %12, align 8
  %40 = load %struct.bnad*, %struct.bnad** %4, align 8
  %41 = getelementptr inbounds %struct.bnad, %struct.bnad* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %42, i64 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %14, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.bnad*, %struct.bnad** %4, align 8
  %53 = load i32, i32* @rxbuf_alloc_failed, align 4
  %54 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %52, i32 %53)
  %55 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %56 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %100

61:                                               ; preds = %34
  %62 = load %struct.bnad*, %struct.bnad** %4, align 8
  %63 = getelementptr inbounds %struct.bnad, %struct.bnad* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %71 = call i32 @dma_map_single(i32* %65, i32 %68, i64 %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %73 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %74 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %73, i32 0, i32 1
  store %struct.sk_buff* %72, %struct.sk_buff** %74, align 8
  %75 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %76 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %75, i32 0, i32 0
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @dma_unmap_addr_set(%struct.TYPE_6__* %76, i32 %77, i32 %78)
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %82 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %85 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.bna_rxq_entry*
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.bna_rxq_entry, %struct.bna_rxq_entry* %87, i64 %88
  store %struct.bna_rxq_entry* %89, %struct.bna_rxq_entry** %13, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.bna_rxq_entry*, %struct.bna_rxq_entry** %13, align 8
  %92 = getelementptr inbounds %struct.bna_rxq_entry, %struct.bna_rxq_entry* %91, i32 0, i32 0
  %93 = call i32 @BNA_SET_DMA_ADDR(i32 %90, i32* %92)
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @BNA_QE_INDX_INC(i64 %94, i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %7, align 8
  br label %30

99:                                               ; preds = %30
  br label %100

100:                                              ; preds = %99, %51
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @likely(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %107 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = call i32 (...) @smp_mb()
  %109 = load i32, i32* @BNAD_RXQ_POST_OK, align 4
  %110 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %111 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %110, i32 0, i32 2
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = call i64 @likely(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %117 = call i32 @bna_rxq_prod_indx_doorbell(%struct.bna_rcb* %116)
  br label %118

118:                                              ; preds = %115, %104
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i64, i64* %7, align 8
  ret i64 %120
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, i32*) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i64) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bna_rxq_prod_indx_doorbell(%struct.bna_rcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
