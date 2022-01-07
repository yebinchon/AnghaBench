; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.pppoe_hdr = type { i32, i32 }
%struct.pppox_sock = type { i32 }
%struct.pppoe_net = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @pppoe_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.pppoe_hdr*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  %12 = alloca %struct.pppoe_net*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %73

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @pskb_may_pull(%struct.sk_buff* %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %70

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff* %26)
  store %struct.pppoe_hdr* %27, %struct.pppoe_hdr** %10, align 8
  %28 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %10, align 8
  %29 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @skb_pull_rcsum(%struct.sk_buff* %32, i32 8)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %70

40:                                               ; preds = %25
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %70

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i32 @dev_net(%struct.net_device* %47)
  %49 = call %struct.pppoe_net* @pppoe_pernet(i32 %48)
  store %struct.pppoe_net* %49, %struct.pppoe_net** %12, align 8
  %50 = load %struct.pppoe_net*, %struct.pppoe_net** %12, align 8
  %51 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %10, align 8
  %52 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.pppox_sock* @get_item(%struct.pppoe_net* %50, i32 %53, i32 %57, i32 %60)
  store %struct.pppox_sock* %61, %struct.pppox_sock** %11, align 8
  %62 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %63 = icmp ne %struct.pppox_sock* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %46
  br label %70

65:                                               ; preds = %46
  %66 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %67 = call i32 @sk_pppox(%struct.pppox_sock* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @sk_receive_skb(i32 %67, %struct.sk_buff* %68, i32 0)
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %64, %45, %39, %24
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %70, %19
  %74 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %65
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pppoe_hdr* @pppoe_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i32) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.pppox_sock* @get_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @sk_receive_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
