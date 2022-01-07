; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_skb_from_vnet_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_skb_from_vnet_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.virtio_net_hdr = type { i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i16, i64 }

@VIRTIO_NET_HDR_GSO_NONE = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_ECN = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i16 0, align 2
@SKB_GSO_TCPV6 = common dso_local global i16 0, align 2
@SKB_GSO_UDP = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_TCP_ECN = common dso_local global i16 0, align 2
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.virtio_net_hdr*)* @macvtap_skb_from_vnet_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_skb_from_vnet_hdr(%struct.sk_buff* %0, %struct.virtio_net_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.virtio_net_hdr*, align 8
  %6 = alloca i16, align 2
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.virtio_net_hdr* %1, %struct.virtio_net_hdr** %5, align 8
  store i16 0, i16* %6, align 2
  %7 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %8 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VIRTIO_NET_HDR_GSO_NONE, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  switch i32 %18, label %25 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
  ]

19:                                               ; preds = %12
  %20 = load i16, i16* @SKB_GSO_TCPV4, align 2
  store i16 %20, i16* %6, align 2
  br label %28

21:                                               ; preds = %12
  %22 = load i16, i16* @SKB_GSO_TCPV6, align 2
  store i16 %22, i16* %6, align 2
  br label %28

23:                                               ; preds = %12
  %24 = load i16, i16* @SKB_GSO_UDP, align 2
  store i16 %24, i16* %6, align 2
  br label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %102

28:                                               ; preds = %23, %21, %19
  %29 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i16, i16* @SKB_GSO_TCP_ECN, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %6, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %6, align 2
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %102

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @skb_partial_csum_set(%struct.sk_buff* %59, i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %102

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %51
  %73 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VIRTIO_NET_HDR_GSO_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  %85 = load i16, i16* %6, align 2
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i16 %85, i16* %88, align 8
  %89 = load i16, i16* @SKB_GSO_DODGY, align 2
  %90 = zext i16 %89 to i32
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i16, i16* %93, align 8
  %95 = zext i16 %94 to i32
  %96 = or i32 %95, %90
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %93, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %78, %72
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %68, %47, %25
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @skb_partial_csum_set(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
