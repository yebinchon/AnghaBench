; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_get_skb_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_get_skb_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i64, i32 }

@XCT_MACRX_HTY_M = common dso_local global i32 0, align 4
@XCT_MACRX_HTY_IPV4_OK = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@LRO_IPV4 = common dso_local global i32 0, align 4
@LRO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i8**, i32*, i8*)* @get_skb_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_skb_hdr(%struct.sk_buff* %0, i8** %1, i8** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @XCT_MACRX_HTY_M, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @XCT_MACRX_HTY_IPV4_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %62

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @skb_reset_network_header(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %26)
  store %struct.iphdr* %27, %struct.iphdr** %14, align 8
  %28 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IPPROTO_TCP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @ip_hdrlen(%struct.sk_buff* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @skb_set_transport_header(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i8* @tcp_hdr(%struct.sk_buff* %40)
  %42 = load i8**, i8*** %9, align 8
  store i8* %41, i8** %42, align 8
  %43 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ntohs(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i64 @tcp_hdrlen(%struct.sk_buff* %49)
  %51 = add nsw i64 %48, %50
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %62

54:                                               ; preds = %34
  %55 = load i32, i32* @LRO_IPV4, align 4
  %56 = load i32, i32* @LRO_TCP, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %60 = bitcast %struct.iphdr* %59 to i8*
  %61 = load i8**, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %53, %33, %22
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i8* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @tcp_hdrlen(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
