; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @igb_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igb_adapter* %8, %struct.igb_adapter** %6, align 8
  %9 = load i32, i32* @__IGB_DOWN, align 4
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %15)
  %17 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %24)
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 17
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 17, %39
  %41 = call i64 @skb_pad(%struct.sk_buff* %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  store i32 17, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %48, i32 17)
  br label %50

50:                                               ; preds = %45, %27
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @igb_tx_queue_mapping(%struct.igb_adapter* %52, %struct.sk_buff* %53)
  %55 = call i32 @igb_xmit_frame_ring(%struct.sk_buff* %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %43, %23, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @igb_xmit_frame_ring(%struct.sk_buff*, i32) #1

declare dso_local i32 @igb_tx_queue_mapping(%struct.igb_adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
