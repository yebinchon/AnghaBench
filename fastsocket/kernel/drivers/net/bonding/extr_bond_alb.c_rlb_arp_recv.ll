; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_rlb_arp_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_rlb_arp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.bonding = type { i32 }
%struct.arp_pkt = type { i64 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@IFF_802_1Q_VLAN = common dso_local global i32 0, align 4
@IFF_BONDING = common dso_local global i32 0, align 4
@IFF_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Packet has no ARP data\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Packet is too small to be an ARP\0A\00", align 1
@ARPOP_REPLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Server received an ARP Reply from client\0A\00", align 1
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @rlb_arp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rlb_arp_recv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bonding*, align 8
  %10 = alloca %struct.arp_pkt*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.arp_pkt*
  store %struct.arp_pkt* %15, %struct.arp_pkt** %10, align 8
  %16 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call i32* @dev_net(%struct.net_device* %17)
  %19 = icmp ne i32* %18, @init_net
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %90

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %29, %21
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_802_1Q_VLAN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %30)
  store %struct.net_device* %31, %struct.net_device** %6, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_BONDING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_MASTER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39, %32
  br label %90

47:                                               ; preds = %39
  %48 = load %struct.arp_pkt*, %struct.arp_pkt** %10, align 8
  %49 = icmp ne %struct.arp_pkt* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %90

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %5, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %90

59:                                               ; preds = %52
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = call i32 @arp_hdr_len(%struct.net_device* %61)
  %63 = call i32 @pskb_may_pull(%struct.sk_buff* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %90

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 8
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %90

74:                                               ; preds = %66
  %75 = load %struct.arp_pkt*, %struct.arp_pkt** %10, align 8
  %76 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @ARPOP_REPLY, align 4
  %79 = call i64 @htons(i32 %78)
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = call %struct.bonding* @netdev_priv(%struct.net_device* %82)
  store %struct.bonding* %83, %struct.bonding** %9, align 8
  %84 = load %struct.bonding*, %struct.bonding** %9, align 8
  %85 = load %struct.arp_pkt*, %struct.arp_pkt** %10, align 8
  %86 = call i32 @rlb_update_entry_from_arp(%struct.bonding* %84, %struct.arp_pkt* %85)
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %72, %65, %58, %50, %46, %20
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @dev_kfree_skb(%struct.sk_buff* %91)
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @arp_hdr_len(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rlb_update_entry_from_arp(%struct.bonding*, %struct.arp_pkt*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
