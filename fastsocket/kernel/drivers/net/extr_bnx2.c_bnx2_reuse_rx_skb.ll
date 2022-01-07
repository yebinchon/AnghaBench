; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_reuse_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_reuse_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_rx_ring_info = type { %struct.bnx2_rx_bd**, i32, %struct.bnx2_sw_bd* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_bd = type { %struct.l2_fhdr*, %struct.sk_buff* }
%struct.l2_fhdr = type { i32 }
%struct.sk_buff = type { i64 }

@mapping = common dso_local global i32 0, align 4
@BNX2_RX_OFFSET = common dso_local global i64 0, align 8
@BNX2_RX_COPY_THRESH = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i64, i64)* @bnx2_reuse_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_reuse_rx_skb(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, %struct.sk_buff* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca %struct.bnx2_rx_ring_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2_sw_bd*, align 8
  %12 = alloca %struct.bnx2_sw_bd*, align 8
  %13 = alloca %struct.bnx2_rx_bd*, align 8
  %14 = alloca %struct.bnx2_rx_bd*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %15, i32 0, i32 2
  %17 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %17, i64 %18
  store %struct.bnx2_sw_bd* %19, %struct.bnx2_sw_bd** %11, align 8
  %20 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %20, i32 0, i32 2
  %22 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %22, i64 %23
  store %struct.bnx2_sw_bd* %24, %struct.bnx2_sw_bd** %12, align 8
  %25 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %30 = load i32, i32* @mapping, align 4
  %31 = call i32 @pci_unmap_addr(%struct.bnx2_sw_bd* %29, i32 %30)
  %32 = load i64, i64* @BNX2_RX_OFFSET, align 8
  %33 = load i64, i64* @BNX2_RX_COPY_THRESH, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %36 = call i32 @dma_sync_single_for_device(i32* %28, i32 %31, i64 %34, i32 %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %12, align 8
  %48 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %47, i32 0, i32 1
  store %struct.sk_buff* %46, %struct.sk_buff** %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.l2_fhdr*
  %53 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %12, align 8
  %54 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %53, i32 0, i32 0
  store %struct.l2_fhdr* %52, %struct.l2_fhdr** %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %5
  br label %96

59:                                               ; preds = %5
  %60 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %12, align 8
  %61 = load i32, i32* @mapping, align 4
  %62 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %11, align 8
  %63 = load i32, i32* @mapping, align 4
  %64 = call i32 @pci_unmap_addr(%struct.bnx2_sw_bd* %62, i32 %63)
  %65 = call i32 @pci_unmap_addr_set(%struct.bnx2_sw_bd* %60, i32 %61, i32 %64)
  %66 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %67 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %66, i32 0, i32 0
  %68 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @BNX2_RX_RING(i64 %69)
  %71 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %68, i64 %70
  %72 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @BNX2_RX_IDX(i64 %73)
  %75 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %72, i64 %74
  store %struct.bnx2_rx_bd* %75, %struct.bnx2_rx_bd** %13, align 8
  %76 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %7, align 8
  %77 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %76, i32 0, i32 0
  %78 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @BNX2_RX_RING(i64 %79)
  %81 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %78, i64 %80
  %82 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @BNX2_RX_IDX(i64 %83)
  %85 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %82, i64 %84
  store %struct.bnx2_rx_bd* %85, %struct.bnx2_rx_bd** %14, align 8
  %86 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %87 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %14, align 8
  %90 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %13, align 8
  %92 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %14, align 8
  %95 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %59, %58
  ret void
}

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i64, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.bnx2_sw_bd*, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.bnx2_sw_bd*, i32, i32) #1

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
