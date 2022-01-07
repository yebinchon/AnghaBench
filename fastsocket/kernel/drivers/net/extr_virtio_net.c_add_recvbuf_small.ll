; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_add_recvbuf_small.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_add_recvbuf_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.skb_vnet_hdr = type { i32 }
%struct.scatterlist = type { i32 }

@MAX_PACKET_LEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, i32)* @add_recvbuf_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recvbuf_small(%struct.virtnet_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.skb_vnet_hdr*, align 8
  %8 = alloca [2 x %struct.scatterlist], align 4
  %9 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @MAX_PACKET_LEN, align 8
  %14 = load i64, i64* @NET_IP_ALIGN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call %struct.sk_buff* @netdev_alloc_skb(i32 %12, i64 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i64, i64* @NET_IP_ALIGN, align 8
  %29 = call i32 @skb_reserve(%struct.sk_buff* %27, i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i64, i64* @MAX_PACKET_LEN, align 8
  %32 = call i32 @skb_put(%struct.sk_buff* %30, i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call %struct.skb_vnet_hdr* @skb_vnet_hdr(%struct.sk_buff* %33)
  store %struct.skb_vnet_hdr* %34, %struct.skb_vnet_hdr** %7, align 8
  %35 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %8, i64 0, i64 0
  %36 = load %struct.skb_vnet_hdr*, %struct.skb_vnet_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.skb_vnet_hdr, %struct.skb_vnet_hdr* %36, i32 0, i32 0
  %38 = call i32 @sg_set_buf(%struct.scatterlist* %35, i32* %37, i32 4)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %8, i64 0, i64 0
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i64 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @skb_to_sgvec(%struct.sk_buff* %39, %struct.scatterlist* %41, i32 0, i32 %44)
  %46 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %47 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %8, i64 0, i64 0
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @virtqueue_add_buf(i32 %48, %struct.scatterlist* %49, i32 0, i32 2, %struct.sk_buff* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %26
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %54, %26
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.skb_vnet_hdr* @skb_vnet_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @virtqueue_add_buf(i32, %struct.scatterlist*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
