; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_type_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.eth1394hdr = type { i32*, i32 }

@ETH1394_HLEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ether1394_type_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.eth1394hdr*, align 8
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_reset_mac_header(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @ETH1394_HLEN, align 4
  %12 = call i32 @skb_pull(%struct.sk_buff* %10, i32 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.eth1394hdr* @eth1394_hdr(%struct.sk_buff* %13)
  store %struct.eth1394hdr* %14, %struct.eth1394hdr** %6, align 8
  %15 = load %struct.eth1394hdr*, %struct.eth1394hdr** %6, align 8
  %16 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.eth1394hdr*, %struct.eth1394hdr** %6, align 8
  %23 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @memcmp(i32* %24, i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @PACKET_BROADCAST, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %21
  br label %55

38:                                               ; preds = %2
  %39 = load %struct.eth1394hdr*, %struct.eth1394hdr** %6, align 8
  %40 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @memcmp(i32* %41, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* @PACKET_OTHERHOST, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %38
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.eth1394hdr*, %struct.eth1394hdr** %6, align 8
  %57 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ntohs(i32 %58)
  %60 = icmp sge i32 %59, 1536
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.eth1394hdr*, %struct.eth1394hdr** %6, align 8
  %63 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %55
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = bitcast i8* %69 to i16*
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %72, 65535
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @ETH_P_802_3, align 4
  %76 = call i32 @htons(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %65
  %78 = load i32, i32* @ETH_P_802_2, align 4
  %79 = call i32 @htons(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %74, %61
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.eth1394hdr* @eth1394_hdr(%struct.sk_buff*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
