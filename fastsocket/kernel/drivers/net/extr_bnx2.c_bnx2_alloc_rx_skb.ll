; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_rx_ring_info = type { i32, %struct.bnx2_rx_bd**, %struct.bnx2_sw_bd* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_bd = type { %struct.l2_fhdr*, %struct.sk_buff* }
%struct.l2_fhdr = type { i32 }
%struct.sk_buff = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BNX2_RX_ALIGN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32)* @bnx2_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_rx_skb(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca %struct.bnx2_rx_ring_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.bnx2_sw_bd*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bnx2_rx_bd*, align 8
  %14 = alloca i64, align 8
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %15, i32 0, i32 2
  %17 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %17, i64 %18
  store %struct.bnx2_sw_bd* %19, %struct.bnx2_sw_bd** %11, align 8
  %20 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %20, i32 0, i32 1
  %22 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @BNX2_RX_RING(i64 %23)
  %25 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %22, i64 %24
  %26 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @BNX2_RX_IDX(i64 %27)
  %29 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %26, i64 %28
  store %struct.bnx2_rx_bd* %29, %struct.bnx2_rx_bd** %13, align 8
  %30 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %32, i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = icmp eq %struct.sk_buff* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %116

43:                                               ; preds = %4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @BNX2_RX_ALIGN, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = and i64 %46, %49
  store i64 %50, i64* %14, align 8
  %51 = call i64 @unlikely(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = load i32, i32* @BNX2_RX_ALIGN, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %14, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @skb_reserve(%struct.sk_buff* %54, i32 %59)
  br label %61

61:                                               ; preds = %53, %43
  %62 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %73 = call i64 @dma_map_single(i32* %65, i64 %68, i32 %71, i32 %72)
  store i64 %73, i64* %12, align 8
  %74 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @dma_mapping_error(i32* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %61
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = call i32 @dev_kfree_skb(%struct.sk_buff* %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %116

86:                                               ; preds = %61
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %89 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %88, i32 0, i32 1
  store %struct.sk_buff* %87, %struct.sk_buff** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.l2_fhdr*
  %94 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %95 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %94, i32 0, i32 0
  store %struct.l2_fhdr* %93, %struct.l2_fhdr** %95, align 8
  %96 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @pci_unmap_addr_set(%struct.bnx2_sw_bd* %96, i64 %97, i64 %98)
  %100 = load i64, i64* %12, align 8
  %101 = trunc i64 %100 to i32
  %102 = ashr i32 %101, 32
  %103 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %104 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %108 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %110 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %113 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %86, %81, %40
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i32, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.bnx2_sw_bd*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
