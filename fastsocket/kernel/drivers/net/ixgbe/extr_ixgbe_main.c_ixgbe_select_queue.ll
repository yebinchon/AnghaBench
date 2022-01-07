; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_select_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_ring_feature* }
%struct.ixgbe_ring_feature = type { i32, i64 }

@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@ETH_P_FIP = common dso_local global i32 0, align 4
@IXGBE_FLAG_FCOE_ENABLED = common dso_local global i32 0, align 4
@RING_F_FCOE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @ixgbe_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_select_queue(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i64 @skb_rx_queue_recorded(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_get_rx_queue(%struct.sk_buff* %14)
  br label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @smp_processor_id()
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %18
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_tx_hash(%struct.net_device* %45, %struct.sk_buff* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %42
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_rx_queue_recorded(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_rx_queue(%struct.sk_buff*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_tx_hash(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
