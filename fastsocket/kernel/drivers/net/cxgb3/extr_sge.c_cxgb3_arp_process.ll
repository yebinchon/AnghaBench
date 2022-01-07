; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_cxgb3_arp_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_cxgb3_arp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.arphdr = type { i64 }

@ARPOP_REQUEST = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*, %struct.sk_buff*)* @cxgb3_arp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb3_arp_process(%struct.port_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.arphdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.port_info* %0, %struct.port_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_reset_network_header(%struct.sk_buff* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %20)
  store %struct.arphdr* %21, %struct.arphdr** %6, align 8
  %22 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %23 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ARPOP_REQUEST, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %71

29:                                               ; preds = %17
  %30 = load %struct.arphdr*, %struct.arphdr** %6, align 8
  %31 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %30, i64 1
  %32 = bitcast %struct.arphdr* %31 to i8*
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %8, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @memcpy(i64* %9, i8* %40, i32 8)
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  store i8* %43, i8** %7, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @memcpy(i64* %10, i8* %50, i32 8)
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.port_info*, %struct.port_info** %3, align 8
  %54 = getelementptr inbounds %struct.port_info, %struct.port_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %29
  br label %71

58:                                               ; preds = %29
  %59 = load i32, i32* @ARPOP_REPLY, align 4
  %60 = load i32, i32* @ETH_P_ARP, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.port_info*, %struct.port_info** %3, align 8
  %66 = getelementptr inbounds %struct.port_info, %struct.port_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @arp_send(i32 %59, i32 %60, i64 %61, %struct.net_device* %62, i64 %63, i8* %64, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %58, %57, %28, %16
  ret void
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @arp_send(i32, i32, i64, %struct.net_device*, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
