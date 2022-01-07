; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_refill_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rxq_refill_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bna_rcb = type { i64, i64, i32, i64, %struct.TYPE_4__*, %struct.bnad_rx_unmap_q* }
%struct.TYPE_4__ = type { i32 }
%struct.bnad_rx_unmap_q = type { i64, i64, i64, %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { i64, %struct.TYPE_6__, %struct.page* }
%struct.TYPE_6__ = type { i64 }
%struct.page = type { i32 }
%struct.bna_rxq_entry = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@rxbuf_alloc_failed = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BNAD_RXQ_POST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnad*, %struct.bna_rcb*, i64)* @bnad_rxq_refill_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnad_rxq_refill_page(%struct.bnad* %0, %struct.bna_rcb* %1, i64 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_rcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bnad_rx_unmap_q*, align 8
  %11 = alloca %struct.bnad_rx_unmap*, align 8
  %12 = alloca %struct.bnad_rx_unmap*, align 8
  %13 = alloca %struct.bna_rxq_entry*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_rcb* %1, %struct.bna_rcb** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %19 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %18, i32 0, i32 5
  %20 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %19, align 8
  store %struct.bnad_rx_unmap_q* %20, %struct.bnad_rx_unmap_q** %10, align 8
  %21 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %22 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %25 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %29 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 %27, %30
  store i64 %31, i64* %16, align 8
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %135, %3
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %6, align 8
  %35 = icmp ne i64 %33, 0
  br i1 %35, label %36, label %151

36:                                               ; preds = %32
  %37 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %38 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %37, i32 0, i32 3
  %39 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %39, i64 %40
  store %struct.bnad_rx_unmap* %41, %struct.bnad_rx_unmap** %11, align 8
  %42 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %43 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = load i32, i32* @__GFP_COMP, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %51 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.page* @alloc_pages(i32 %49, i64 %52)
  store %struct.page* %53, %struct.page** %14, align 8
  store i64 0, i64* %15, align 8
  br label %74

54:                                               ; preds = %36
  %55 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %56 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %55, i32 0, i32 3
  %57 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %56, align 8
  %58 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %59 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %57, i64 %60
  store %struct.bnad_rx_unmap* %61, %struct.bnad_rx_unmap** %12, align 8
  %62 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %63 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %62, i32 0, i32 2
  %64 = load %struct.page*, %struct.page** %63, align 8
  store %struct.page* %64, %struct.page** %14, align 8
  %65 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %66 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %69 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  store i64 %71, i64* %15, align 8
  %72 = load %struct.page*, %struct.page** %14, align 8
  %73 = call i32 @get_page(%struct.page* %72)
  br label %74

74:                                               ; preds = %54, %46
  %75 = load %struct.page*, %struct.page** %14, align 8
  %76 = icmp ne %struct.page* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load %struct.bnad*, %struct.bnad** %4, align 8
  %83 = load i32, i32* @rxbuf_alloc_failed, align 4
  %84 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %82, i32 %83)
  %85 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %86 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %85, i32 0, i32 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %152

91:                                               ; preds = %74
  %92 = load %struct.bnad*, %struct.bnad** %4, align 8
  %93 = getelementptr inbounds %struct.bnad, %struct.bnad* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.page*, %struct.page** %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %99 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i32 @dma_map_page(i32* %95, %struct.page* %96, i64 %97, i64 %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.page*, %struct.page** %14, align 8
  %104 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %105 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %104, i32 0, i32 2
  store %struct.page* %103, %struct.page** %105, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %108 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %110 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %109, i32 0, i32 1
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @dma_unmap_addr_set(%struct.TYPE_6__* %110, i32 %111, i32 %112)
  %114 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %115 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %11, align 8
  %118 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %121 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %16, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %91
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %131 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  br label %135

132:                                              ; preds = %91
  %133 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %10, align 8
  %134 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %133, i32 0, i32 1
  store i64 -1, i64* %134, align 8
  br label %135

135:                                              ; preds = %132, %128
  %136 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %137 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.bna_rxq_entry*
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.bna_rxq_entry, %struct.bna_rxq_entry* %139, i64 %140
  store %struct.bna_rxq_entry* %141, %struct.bna_rxq_entry** %13, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.bna_rxq_entry*, %struct.bna_rxq_entry** %13, align 8
  %144 = getelementptr inbounds %struct.bna_rxq_entry, %struct.bna_rxq_entry* %143, i32 0, i32 0
  %145 = call i32 @BNA_SET_DMA_ADDR(i32 %142, i32* %144)
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @BNA_QE_INDX_INC(i64 %146, i64 %147)
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %7, align 8
  br label %32

151:                                              ; preds = %32
  br label %152

152:                                              ; preds = %151, %81
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @likely(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %152
  %157 = load i64, i64* %8, align 8
  %158 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %159 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = call i32 (...) @smp_mb()
  %161 = load i32, i32* @BNAD_RXQ_POST_OK, align 4
  %162 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %163 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %162, i32 0, i32 2
  %164 = call i64 @test_bit(i32 %161, i32* %163)
  %165 = call i64 @likely(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load %struct.bna_rcb*, %struct.bna_rcb** %5, align 8
  %169 = call i32 @bna_rxq_prod_indx_doorbell(%struct.bna_rcb* %168)
  br label %170

170:                                              ; preds = %167, %156
  br label %171

171:                                              ; preds = %170, %152
  %172 = load i64, i64* %7, align 8
  ret i64 %172
}

declare dso_local %struct.page* @alloc_pages(i32, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i64, i64, i32) #1

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
