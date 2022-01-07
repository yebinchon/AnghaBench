; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_fill_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_fill_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.skb_shared_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.xen_netif_rx_response = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_info*, %struct.sk_buff*, %struct.sk_buff_head*)* @xennet_fill_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_fill_frags(%struct.netfront_info* %0, %struct.sk_buff* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.skb_shared_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.xen_netif_rx_response*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %13)
  store %struct.skb_shared_info* %14, %struct.skb_shared_info** %7, align 8
  %15 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %16 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %19 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %23 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %10, align 8
  br label %28

28:                                               ; preds = %32, %3
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %30 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %34 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = call %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_4__* %34, i32 %36)
  store %struct.xen_netif_rx_response* %37, %struct.xen_netif_rx_response** %12, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %12, align 8
  %48 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %12, align 8
  %53 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %12, align 8
  %58 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 1
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %28

75:                                               ; preds = %28
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %78 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
