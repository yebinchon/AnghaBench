; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c___pppoe_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c___pppoe_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i64 }
%struct.pppox_sock = type { %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.pppoe_hdr = type { i32, i32, i32, i32, i64 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @__pppoe_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pppoe_xmit(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pppox_sock*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pppoe_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %10)
  store %struct.pppox_sock* %11, %struct.pppox_sock** %6, align 8
  %12 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %13 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load i32, i32* @SOCK_DEAD, align 4
  %20 = call i64 @sock_flag(%struct.sock* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PPPOX_CONNECTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %2
  br label %83

30:                                               ; preds = %22
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %83

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 24, %38
  %40 = call i64 @skb_cow_head(%struct.sk_buff* %35, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %83

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @__skb_push(%struct.sk_buff* %44, i32 24)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_reset_network_header(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff* %48)
  store %struct.pppoe_hdr* %49, %struct.pppoe_hdr** %8, align 8
  %50 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %8, align 8
  %51 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %8, align 8
  %55 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %57 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %8, align 8
  %60 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %8, align 8
  %64 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @ETH_P_PPP_SES, align 4
  %66 = call i32 @cpu_to_be16(i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  store %struct.net_device* %69, %struct.net_device** %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = load i32, i32* @ETH_P_PPP_SES, align 4
  %75 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %76 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_hard_header(%struct.sk_buff* %72, %struct.net_device* %73, i32 %74, i32 %78, i32* null, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @dev_queue_xmit(%struct.sk_buff* %81)
  store i32 1, i32* %3, align 4
  br label %86

83:                                               ; preds = %42, %33, %29
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %43
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
