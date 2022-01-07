; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_bpqether.c_bpq_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethhdr = type { i32 }
%struct.bpqdev = type { i32* }

@init_net = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @bpq_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca %struct.bpqdev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call i32* @dev_net(%struct.net_device* %14)
  %16 = icmp ne i32* %15, @init_net
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %114

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %24, i32* %5, align 4
  br label %117

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @pskb_may_pull(%struct.sk_buff* %26, i32 4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %114

30:                                               ; preds = %25
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %32)
  store %struct.net_device* %33, %struct.net_device** %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = icmp eq %struct.net_device* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @netif_running(%struct.net_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %30
  br label %111

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call %struct.bpqdev* @netdev_priv(%struct.net_device* %42)
  store %struct.bpqdev* %43, %struct.bpqdev** %13, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %44)
  store %struct.ethhdr* %45, %struct.ethhdr** %12, align 8
  %46 = load %struct.bpqdev*, %struct.bpqdev** %13, align 8
  %47 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %41
  %54 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bpqdev*, %struct.bpqdev** %13, align 8
  %58 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i64 @memcmp(i32 %56, i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %111

64:                                               ; preds = %53, %41
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i64 @skb_cow(%struct.sk_buff* %65, i32 4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %111

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 256
  %81 = add nsw i32 %74, %80
  %82 = sub nsw i32 %81, 5
  store i32 %82, i32* %10, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @skb_pull(%struct.sk_buff* %83, i32 2)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @skb_trim(%struct.sk_buff* %85, i32 %86)
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i8* @skb_push(%struct.sk_buff* %99, i32 1)
  store i8* %100, i8** %11, align 8
  %101 = load i8*, i8** %11, align 8
  store i8 0, i8* %101, align 1
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load %struct.net_device*, %struct.net_device** %7, align 8
  %104 = call i32 @ax25_type_trans(%struct.sk_buff* %102, %struct.net_device* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @netif_rx(%struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %111, %69
  %110 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %5, align 4
  br label %117

111:                                              ; preds = %68, %63, %40
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  br label %109

114:                                              ; preds = %29, %17
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %109, %23
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @bpq_get_ax25_dev(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.bpqdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax25_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
