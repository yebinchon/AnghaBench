; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_skb_to_vnet_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_skb_to_vnet_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.virtio_net_hdr = type { i32, i32, i64, i32, i32, i32 }
%struct.skb_shared_info = type { i32, i32 }

@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_UDP = common dso_local global i32 0, align 4
@SKB_GSO_TCP_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_NONE = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@VIRTIO_NET_HDR_F_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.virtio_net_hdr*)* @macvtap_skb_to_vnet_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_skb_to_vnet_hdr(%struct.sk_buff* %0, %struct.virtio_net_hdr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.virtio_net_hdr*, align 8
  %5 = alloca %struct.skb_shared_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.virtio_net_hdr* %1, %struct.virtio_net_hdr** %4, align 8
  %6 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %7 = call i32 @memset(%struct.virtio_net_hdr* %6, i32 0, i32 32)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i64 @skb_is_gso(%struct.sk_buff* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %12)
  store %struct.skb_shared_info* %13, %struct.skb_shared_info** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @skb_headlen(%struct.sk_buff* %14)
  %16 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %19 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %24 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load i32, i32* @VIRTIO_NET_HDR_GSO_TCPV4, align 4
  %31 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %59

33:                                               ; preds = %11
  %34 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %35 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @VIRTIO_NET_HDR_GSO_TCPV6, align 4
  %42 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %43 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %58

44:                                               ; preds = %33
  %45 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %46 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SKB_GSO_UDP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @VIRTIO_NET_HDR_GSO_UDP, align 4
  %53 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %57

55:                                               ; preds = %44
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %61 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SKB_GSO_TCP_ECN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %68 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %69 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %59
  br label %77

73:                                               ; preds = %2
  %74 = load i32, i32* @VIRTIO_NET_HDR_GSO_NONE, align 4
  %75 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %76 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %85 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %86 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %91 = call i64 @skb_headroom(%struct.sk_buff* %90)
  %92 = sub nsw i64 %89, %91
  %93 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %94 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %99 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %111

100:                                              ; preds = %77
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @VIRTIO_NET_HDR_F_DATA_VALID, align 4
  %108 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %4, align 8
  %109 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110, %83
  ret i32 0
}

declare dso_local i32 @memset(%struct.virtio_net_hdr*, i32, i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
