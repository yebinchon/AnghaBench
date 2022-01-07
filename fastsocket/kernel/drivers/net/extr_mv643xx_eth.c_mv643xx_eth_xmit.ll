; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32, i32 }
%struct.mv643xx_eth_private = type { %struct.tx_queue* }
%struct.tx_queue = type { i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"failed to linearize skb with tiny unaligned fragment\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tx queue full?!\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mv643xx_eth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_queue*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %11)
  store %struct.mv643xx_eth_private* %12, %struct.mv643xx_eth_private** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %16 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %15, i32 0, i32 0
  %17 = load %struct.tx_queue*, %struct.tx_queue** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %17, i64 %19
  store %struct.tx_queue* %20, %struct.tx_queue** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %21, i32 %22)
  store %struct.netdev_queue* %23, %struct.netdev_queue** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i64 @has_tiny_unaligned_frags(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i64 @__skb_linearize(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %33 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = call i32 @dev_printk(i32 %36, i32* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %103

41:                                               ; preds = %27, %2
  %42 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %43 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %46 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %50 = add nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %41
  %53 = call i64 (...) @net_ratelimit()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = call i32 @dev_printk(i32 %56, i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %103

64:                                               ; preds = %41
  %65 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @txq_submit_skb(%struct.tx_queue* %65, %struct.sk_buff* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %101, label %69

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %74 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %80 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @jiffies, align 4
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %87 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tx_queue*, %struct.tx_queue** %8, align 8
  %90 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %69
  %98 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %99 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %98)
  br label %100

100:                                              ; preds = %97, %69
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %60, %31
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @has_tiny_unaligned_frags(%struct.sk_buff*) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @txq_submit_skb(%struct.tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
