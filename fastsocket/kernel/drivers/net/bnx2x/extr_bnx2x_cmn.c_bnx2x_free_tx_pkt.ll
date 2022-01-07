; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x_fp_txdata = type { %struct.TYPE_3__*, i32, %struct.sw_tx_bd* }
%struct.TYPE_3__ = type { %struct.eth_tx_start_bd, %struct.eth_tx_start_bd }
%struct.eth_tx_start_bd = type { i32 }
%struct.sw_tx_bd = type { i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.eth_tx_bd = type { i32 }

@NETIF_MSG_TX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"fp[%d]: pkt_idx %d  buff @(%p)->skb %p\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BNX2X_TSO_SPLIT_BD = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*, %struct.bnx2x_fp_txdata*, i64)* @bnx2x_free_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_free_tx_pkt(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_fp_txdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sw_tx_bd*, align 8
  %8 = alloca %struct.eth_tx_start_bd*, align 8
  %9 = alloca %struct.eth_tx_bd*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %14, i32 0, i32 2
  %16 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %16, i64 %17
  store %struct.sw_tx_bd* %18, %struct.sw_tx_bd** %7, align 8
  %19 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %20 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %19, i32 0, i32 2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %23 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @TX_BD(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = call i32 @prefetch(i32* %27)
  %29 = load i32, i32* @NETIF_MSG_TX_DONE, align 4
  %30 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = call i32 @DP(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, %struct.sw_tx_bd* %34, %struct.sk_buff* %35)
  %37 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %5, align 8
  %38 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store %struct.eth_tx_start_bd* %42, %struct.eth_tx_start_bd** %8, align 8
  %43 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %8, align 8
  %48 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_start_bd* %47)
  %49 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %8, align 8
  %50 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_start_bd* %49)
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32* %46, i32 %48, i32 %50, i32 %51)
  %53 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %8, align 8
  %54 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %61 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @NEXT_TX_IDX(i64 %64)
  %66 = call i64 @TX_BD(i64 %65)
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %13, align 4
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @NEXT_TX_IDX(i64 %69)
  %71 = call i64 @TX_BD(i64 %70)
  store i64 %71, i64* %11, align 8
  %72 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %73 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BNX2X_TSO_SPLIT_BD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %3
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %13, align 4
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @NEXT_TX_IDX(i64 %81)
  %83 = call i64 @TX_BD(i64 %82)
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %78, %3
  br label %85

85:                                               ; preds = %115, %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %85
  %89 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %5, align 8
  %90 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = bitcast %struct.eth_tx_start_bd* %94 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %95, %struct.eth_tx_bd** %9, align 8
  %96 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %9, align 8
  %101 = bitcast %struct.eth_tx_bd* %100 to %struct.eth_tx_start_bd*
  %102 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_start_bd* %101)
  %103 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %9, align 8
  %104 = bitcast %struct.eth_tx_bd* %103 to %struct.eth_tx_start_bd*
  %105 = call i32 @BD_UNMAP_LEN(%struct.eth_tx_start_bd* %104)
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @dma_unmap_page(i32* %99, i32 %102, i32 %105, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %88
  %112 = load i64, i64* %11, align 8
  %113 = call i64 @NEXT_TX_IDX(i64 %112)
  %114 = call i64 @TX_BD(i64 %113)
  store i64 %114, i64* %11, align 8
  br label %115

115:                                              ; preds = %111, %88
  br label %85

116:                                              ; preds = %85
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @WARN_ON(i32 %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %122)
  %124 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %125 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %7, align 8
  %127 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %126, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %127, align 8
  %128 = load i64, i64* %12, align 8
  ret i64 %128
}

declare dso_local i64 @TX_BD(i64) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, %struct.sw_tx_bd*, %struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @BD_UNMAP_ADDR(%struct.eth_tx_start_bd*) #1

declare dso_local i32 @BD_UNMAP_LEN(%struct.eth_tx_start_bd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @NEXT_TX_IDX(i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
