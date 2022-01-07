; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32, i32, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_PKT_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@TDESC1_EOF = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@REG_TXDENQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ep93xx_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ep93xx_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ep93xx_priv* %9, %struct.ep93xx_priv** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX_PKT_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @dev_kfree_skb(%struct.sk_buff* %24)
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %110

27:                                               ; preds = %2
  %28 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @TDESC1_EOF, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %40, %42
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 4095
  %48 = or i32 %43, %47
  %49 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %48, i32* %57, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %60 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %58, i32 %65)
  %67 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i32 @dma_sync_single_for_cpu(i32* null, i32 %76, i32 %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @dev_kfree_skb(%struct.sk_buff* %82)
  %84 = load i32, i32* @jiffies, align 4
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %88 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %87, i32 0, i32 2
  %89 = call i32 @spin_lock_irq(i32* %88)
  %90 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %91 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %95 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %27
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = call i32 @netif_stop_queue(%struct.net_device* %100)
  br label %102

102:                                              ; preds = %99, %27
  %103 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %104 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock_irq(i32* %104)
  %106 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %6, align 8
  %107 = load i32, i32* @REG_TXDENQ, align 4
  %108 = call i32 @wrl(%struct.ep93xx_priv* %106, i32 %107, i32 1)
  %109 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %102, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
