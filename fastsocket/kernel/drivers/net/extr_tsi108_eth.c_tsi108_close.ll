; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tsi108_eth.c_tsi108_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.sk_buff**, i32, i32, %struct.sk_buff**, i32, i32 }
%struct.sk_buff = type { i32 }

@TSI108_EC_INTMASK = common dso_local global i32 0, align 4
@TSI108_MAC_CFG1 = common dso_local global i32 0, align 4
@TSI108_TXRING_LEN = common dso_local global i32 0, align 4
@TSI108_RXRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tsi108_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tsi108_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %8)
  store %struct.tsi108_prv_data* %9, %struct.tsi108_prv_data** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %12, i32 0, i32 13
  %14 = call i32 @napi_disable(i32* %13)
  %15 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %16 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %15, i32 0, i32 12
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @tsi108_stop_ethernet(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @tsi108_kill_phy(%struct.net_device* %20)
  %22 = load i32, i32* @TSI108_EC_INTMASK, align 4
  %23 = call i32 @TSI_WRITE(i32 %22, i32 -1)
  %24 = load i32, i32* @TSI108_MAC_CFG1, align 4
  %25 = call i32 @TSI_WRITE(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %41, %1
  %27 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %28 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %36 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i1 [ true, %26 ], [ %38, %31 ]
  br i1 %40, label %41, label %66

41:                                               ; preds = %39
  %42 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %43 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  %45 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %45, i32 0, i32 11
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %5, align 8
  %52 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %53 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* @TSI108_TXRING_LEN, align 4
  %57 = srem i32 %55, %56
  %58 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %59 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %61 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @dev_kfree_skb(%struct.sk_buff* %64)
  br label %26

66:                                               ; preds = %39
  %67 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %68 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @free_irq(i32 %69, %struct.net_device* %70)
  br label %72

72:                                               ; preds = %77, %66
  %73 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %74 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %79 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %6, align 4
  %81 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %82 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %81, i32 0, i32 8
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %83, i64 %85
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %7, align 8
  %88 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %89 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %93 = srem i32 %91, %92
  %94 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %95 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %97 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = call i32 @dev_kfree_skb(%struct.sk_buff* %100)
  br label %72

102:                                              ; preds = %72
  %103 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %108 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %111 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dma_free_coherent(i32 0, i32 %106, i32 %109, i32 %112)
  %114 = load i32, i32* @TSI108_TXRING_LEN, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %119 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %3, align 8
  %122 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dma_free_coherent(i32 0, i32 %117, i32 %120, i32 %123)
  ret i32 0
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @tsi108_stop_ethernet(%struct.net_device*) #1

declare dso_local i32 @tsi108_kill_phy(%struct.net_device*) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
