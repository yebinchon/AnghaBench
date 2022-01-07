; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_rx_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_rx_ring_info = type { %struct.bnx2_rx_bd**, %struct.bnx2_sw_pg* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_pg = type { %struct.page* }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32)* @bnx2_alloc_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_rx_page(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca %struct.bnx2_rx_ring_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2_sw_pg*, align 8
  %12 = alloca %struct.bnx2_rx_bd*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %14, i32 0, i32 1
  %16 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %16, i64 %17
  store %struct.bnx2_sw_pg* %18, %struct.bnx2_sw_pg** %11, align 8
  %19 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %19, i32 0, i32 0
  %21 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @BNX2_RX_RING(i64 %22)
  %24 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %21, i64 %23
  %25 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @BNX2_RX_IDX(i64 %26)
  %28 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %25, i64 %27
  store %struct.bnx2_rx_bd* %28, %struct.bnx2_rx_bd** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.page* @alloc_page(i32 %29)
  store %struct.page* %30, %struct.page** %13, align 8
  %31 = load %struct.page*, %struct.page** %13, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %74

36:                                               ; preds = %4
  %37 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.page*, %struct.page** %13, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %44 = call i64 @dma_map_page(i32* %40, %struct.page* %41, i32 0, i32 %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @dma_mapping_error(i32* %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.page*, %struct.page** %13, align 8
  %54 = call i32 @__free_page(%struct.page* %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %36
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %11, align 8
  %60 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %59, i32 0, i32 0
  store %struct.page* %58, %struct.page** %60, align 8
  %61 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @pci_unmap_addr_set(%struct.bnx2_sw_pg* %61, i64 %62, i64 %63)
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = ashr i32 %66, 32
  %68 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %69 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* %10, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %73 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %57, %52, %33
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @dma_map_page(i32*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.bnx2_sw_pg*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
