; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_free_rx_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_free_rx_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { %struct.eth_rx_sge*, %struct.sw_rx_page* }
%struct.eth_rx_sge = type { i64, i64 }
%struct.sw_rx_page = type { %struct.page* }
%struct.page = type { i32 }

@mapping = common dso_local global i32 0, align 4
@SGE_PAGES = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGES_PER_SGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, i64)* @bnx2x_free_rx_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_free_rx_sge(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_fastpath*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sw_rx_page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.eth_rx_sge*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %10, i32 0, i32 1
  %12 = load %struct.sw_rx_page*, %struct.sw_rx_page** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %12, i64 %13
  store %struct.sw_rx_page* %14, %struct.sw_rx_page** %7, align 8
  %15 = load %struct.sw_rx_page*, %struct.sw_rx_page** %7, align 8
  %16 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %15, i32 0, i32 0
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %8, align 8
  %18 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %19 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %18, i32 0, i32 0
  %20 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %20, i64 %21
  store %struct.eth_rx_sge* %22, %struct.eth_rx_sge** %9, align 8
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.sw_rx_page*, %struct.sw_rx_page** %7, align 8
  %32 = load i32, i32* @mapping, align 4
  %33 = call i32 @dma_unmap_addr(%struct.sw_rx_page* %31, i32 %32)
  %34 = load i32, i32* @SGE_PAGES, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_unmap_page(i32* %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %39 = call i32 @__free_pages(%struct.page* %37, i32 %38)
  %40 = load %struct.sw_rx_page*, %struct.sw_rx_page** %7, align 8
  %41 = getelementptr inbounds %struct.sw_rx_page, %struct.sw_rx_page* %40, i32 0, i32 0
  store %struct.page* null, %struct.page** %41, align 8
  %42 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %9, align 8
  %43 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %9, align 8
  %45 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.sw_rx_page*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
