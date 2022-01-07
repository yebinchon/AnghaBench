; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_hwcsum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_hwcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32, i64 }
%struct.ipv6hdr = type { i64 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@TX_CSUM_TCPIP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@TX_CSUM_UDPIP = common dso_local global i32 0, align 4
@TXPKT_L4CSUM_DIS = common dso_local global i32 0, align 4
@TX_CSUM_TCPIP6 = common dso_local global i32 0, align 4
@TX_CSUM_UDPIP6 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @hwcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwcsum(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %8)
  store %struct.iphdr* %9, %struct.iphdr** %5, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPPROTO_TCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @TX_CSUM_TCPIP, align 4
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_UDP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @TX_CSUM_UDPIP, align 4
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* @TXPKT_L4CSUM_DIS, align 4
  store i32 %32, i32* %2, align 4
  br label %92

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %20
  br label %56

35:                                               ; preds = %1
  %36 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %37 = bitcast %struct.iphdr* %36 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %37, %struct.ipv6hdr** %6, align 8
  %38 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %39 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPPROTO_TCP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TX_CSUM_TCPIP6, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %35
  %46 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %47 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPPROTO_UDP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @TX_CSUM_UDPIP6, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %45
  br label %31

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TX_CSUM_TCPIP, align 4
  %59 = icmp sge i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @TXPKT_CSUM_TYPE(i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @skb_network_header_len(%struct.sk_buff* %66)
  %68 = call i32 @TXPKT_IPHDR_LEN(i32 %67)
  %69 = or i32 %65, %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i64 @skb_network_offset(%struct.sk_buff* %70)
  %72 = load i64, i64* @ETH_HLEN, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i32 @TXPKT_ETHHDR_LEN(i64 %73)
  %75 = or i32 %69, %74
  store i32 %75, i32* %2, align 4
  br label %92

76:                                               ; preds = %56
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i32 @skb_transport_offset(%struct.sk_buff* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @TXPKT_CSUM_TYPE(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @TXPKT_CSUM_START(i32 %81)
  %83 = or i32 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @TXPKT_CSUM_LOC(i64 %89)
  %91 = or i32 %83, %90
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %76, %63, %31
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @TXPKT_CSUM_TYPE(i32) #1

declare dso_local i32 @TXPKT_IPHDR_LEN(i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @TXPKT_ETHHDR_LEN(i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @TXPKT_CSUM_START(i32) #1

declare dso_local i32 @TXPKT_CSUM_LOC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
