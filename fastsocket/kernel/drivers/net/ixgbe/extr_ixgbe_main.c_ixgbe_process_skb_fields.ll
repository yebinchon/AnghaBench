; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_VP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbe_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_process_skb_fields(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @ixgbe_update_rsc_stats(%struct.ixgbe_ring* %12, %struct.sk_buff* %13)
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %16 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @ixgbe_rx_hash(%struct.ixgbe_ring* %15, %union.ixgbe_adv_rx_desc* %16, %struct.sk_buff* %17)
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %20 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @ixgbe_rx_checksum(%struct.ixgbe_ring* %19, %union.ixgbe_adv_rx_desc* %20, %struct.sk_buff* %21)
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %3
  %30 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %31 = load i32, i32* @IXGBE_RXD_STAT_VP, align 4
  %32 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %36 = bitcast %union.ixgbe_adv_rx_desc* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %29, %3
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @skb_record_rx_queue(%struct.sk_buff* %45, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = call i32 @eth_type_trans(%struct.sk_buff* %50, %struct.net_device* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @ixgbe_update_rsc_stats(%struct.ixgbe_ring*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_hash(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_checksum(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
