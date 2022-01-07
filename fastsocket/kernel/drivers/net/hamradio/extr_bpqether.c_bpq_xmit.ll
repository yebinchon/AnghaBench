; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bpqdev = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@AX25_BPQ_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bpqether: out of memory\0A\00", align 1
@ETH_P_BPQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bpq_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpqdev*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call i32 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @kfree_skb(%struct.sk_buff* %13)
  %15 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_pull(%struct.sk_buff* %17, i32 1)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @AX25_BPQ_HEADER_LEN, align 4
  %24 = call i64 @skb_cow(%struct.sk_buff* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = call i64 (...) @net_ratelimit()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  %34 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %97

35:                                               ; preds = %16
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i8* @skb_push(%struct.sk_buff* %36, i32 2)
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 5
  %40 = srem i32 %39, 256
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 5
  %46 = sdiv i32 %45, 256
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call %struct.bpqdev* @netdev_priv(%struct.net_device* %50)
  store %struct.bpqdev* %51, %struct.bpqdev** %7, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call %struct.net_device* @bpq_get_ether_dev(%struct.net_device* %52)
  store %struct.net_device* %53, %struct.net_device** %5, align 8
  %54 = icmp eq %struct.net_device* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %35
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  %63 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %97

64:                                               ; preds = %35
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @ax25_type_trans(%struct.sk_buff* %65, %struct.net_device* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_reset_network_header(%struct.sk_buff* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load i32, i32* @ETH_P_BPQ, align 4
  %75 = load %struct.bpqdev*, %struct.bpqdev** %7, align 8
  %76 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_hard_header(%struct.sk_buff* %72, %struct.net_device* %73, i32 %74, i32 %77, i32* null, i32 0)
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @dev_queue_xmit(%struct.sk_buff* %92)
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = call i32 @netif_wake_queue(%struct.net_device* %94)
  %96 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %64, %55, %31, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.bpqdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @bpq_get_ether_dev(%struct.net_device*) #1

declare dso_local i32 @ax25_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
