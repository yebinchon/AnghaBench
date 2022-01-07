; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_refill_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, i32, %struct.TYPE_2__*, %struct.sk_buff** }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@TSI108_RXRING_LEN = common dso_local global i32 0, align 4
@TSI108_RXBUF_SIZE = common dso_local global i64 0, align 8
@TSI108_RX_SKB_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TSI108_RX_OWN = common dso_local global i32 0, align 4
@TSI108_RX_INT = common dso_local global i32 0, align 4
@TSI108_EC_RXSTAT = common dso_local global i32 0, align 4
@TSI108_EC_RXSTAT_QUEUE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tsi108_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_refill_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi108_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.tsi108_prv_data* %10, %struct.tsi108_prv_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %13 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %88

23:                                               ; preds = %21
  %24 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %25 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i64, i64* @TSI108_RXBUF_SIZE, align 8
  %29 = add nsw i64 %28, 2
  %30 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %27, i64 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %32 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %31, i32 0, i32 3
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %35
  store %struct.sk_buff* %30, %struct.sk_buff** %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %88

40:                                               ; preds = %23
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @skb_reserve(%struct.sk_buff* %41, i32 2)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TSI108_RX_SKB_SIZE, align 4
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_map_single(i32* null, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %50 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %48, i32* %55, align 4
  %56 = load i32, i32* @TSI108_RX_SKB_SIZE, align 4
  %57 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %58 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* @TSI108_RX_OWN, align 4
  %65 = load i32, i32* @TSI108_RX_INT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %68 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  %74 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %75 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %79 = srem i32 %77, %78
  %80 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %81 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %83 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %11

88:                                               ; preds = %39, %21
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* @TSI108_EC_RXSTAT, align 4
  %93 = call i32 @TSI_READ(i32 %92)
  %94 = load i32, i32* @TSI108_EC_RXSTAT_QUEUE0, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @tsi108_restart_rx(%struct.tsi108_prv_data* %98, %struct.net_device* %99)
  br label %101

101:                                              ; preds = %97, %91, %88
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @TSI_READ(i32) #1

declare dso_local i32 @tsi108_restart_rx(%struct.tsi108_prv_data*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
