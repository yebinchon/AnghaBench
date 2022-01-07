; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_get_skb_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_get_skb_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@RX_IP_HDR_OK = common dso_local global i64 0, align 8
@RX_PKT_IS_IPV4 = common dso_local global i64 0, align 8
@RX_PKT_IS_ETHERNETV2 = common dso_local global i64 0, align 8
@RX_PKT_LAYER4_TYPE_MASK = common dso_local global i64 0, align 8
@RX_PKT_IS_VLAN_TAGGED = common dso_local global i64 0, align 8
@RX_PKT_LAYER4_TYPE_TCP_IPV4 = common dso_local global i64 0, align 8
@LRO_IPV4 = common dso_local global i32 0, align 4
@LRO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i8**, i32*, i8*)* @mv643xx_get_skb_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_get_skb_header(%struct.sk_buff* %0, i8** %1, i8** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @RX_IP_HDR_OK, align 8
  %17 = load i64, i64* @RX_PKT_IS_IPV4, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @RX_PKT_IS_ETHERNETV2, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @RX_PKT_LAYER4_TYPE_MASK, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @RX_PKT_IS_VLAN_TAGGED, align 8
  %24 = or i64 %22, %23
  %25 = and i64 %15, %24
  %26 = load i64, i64* @RX_IP_HDR_OK, align 8
  %27 = load i64, i64* @RX_PKT_IS_IPV4, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @RX_PKT_IS_ETHERNETV2, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @RX_PKT_LAYER4_TYPE_TCP_IPV4, align 8
  %32 = or i64 %30, %31
  %33 = icmp ne i64 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %52

35:                                               ; preds = %5
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @skb_reset_network_header(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call i32 @ip_hdrlen(%struct.sk_buff* %39)
  %41 = call i32 @skb_set_transport_header(%struct.sk_buff* %38, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i8* @ip_hdr(%struct.sk_buff* %42)
  %44 = load i8**, i8*** %8, align 8
  store i8* %43, i8** %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i8* @tcp_hdr(%struct.sk_buff* %45)
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @LRO_IPV4, align 4
  %49 = load i32, i32* @LRO_TCP, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %35, %34
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i8* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @tcp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
