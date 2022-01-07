; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_lacpdu_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_lacpdu_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.bonding = type { i32 }
%struct.slave = type { i32 }
%struct.lacpdu = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@IFF_MASTER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_3ad_lacpdu_recv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bonding*, align 8
  %10 = alloca %struct.slave*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.bonding* @netdev_priv(%struct.net_device* %12)
  store %struct.bonding* %13, %struct.bonding** %9, align 8
  store %struct.slave* null, %struct.slave** %10, align 8
  %14 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32* @dev_net(%struct.net_device* %15)
  %17 = icmp ne i32* %16, @init_net
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %65

19:                                               ; preds = %4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_MASTER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %65

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %65

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %65

39:                                               ; preds = %34
  %40 = load %struct.bonding*, %struct.bonding** %9, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 0
  %42 = call i32 @read_lock(i32* %41)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call %struct.bonding* @netdev_priv(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call %struct.slave* @bond_get_slave_by_dev(%struct.bonding* %44, %struct.net_device* %45)
  store %struct.slave* %46, %struct.slave** %10, align 8
  %47 = load %struct.slave*, %struct.slave** %10, align 8
  %48 = icmp ne %struct.slave* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %61

50:                                               ; preds = %39
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.lacpdu*
  %55 = load %struct.slave*, %struct.slave** %10, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bond_3ad_rx_indication(%struct.lacpdu* %54, %struct.slave* %55, i32 %58)
  %60 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %50, %49
  %62 = load %struct.bonding*, %struct.bonding** %9, align 8
  %63 = getelementptr inbounds %struct.bonding, %struct.bonding* %62, i32 0, i32 0
  %64 = call i32 @read_unlock(i32* %63)
  br label %65

65:                                               ; preds = %61, %38, %33, %26, %18
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* %11, align 4
  ret i32 %68
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.slave* @bond_get_slave_by_dev(%struct.bonding*, %struct.net_device*) #1

declare dso_local i32 @bond_3ad_rx_indication(%struct.lacpdu*, %struct.slave*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
