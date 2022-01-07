; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_receive_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_q_vector = type { i32, %struct.ixgbevf_adapter* }
%struct.ixgbevf_adapter = type { i32, i64 }
%struct.sk_buff = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IXGBE_RXD_STAT_VP = common dso_local global i32 0, align 4
@IXGBE_FLAG_IN_NETPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_q_vector*, %struct.sk_buff*, i32, %union.ixgbe_adv_rx_desc*)* @ixgbevf_receive_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_receive_skb(%struct.ixgbevf_q_vector* %0, %struct.sk_buff* %1, i32 %2, %union.ixgbe_adv_rx_desc* %3) #0 {
  %5 = alloca %struct.ixgbevf_q_vector*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %9 = alloca %struct.ixgbevf_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbevf_q_vector* %0, %struct.ixgbevf_q_vector** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.ixgbe_adv_rx_desc* %3, %union.ixgbe_adv_rx_desc** %8, align 8
  %12 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %12, i32 0, i32 1
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %13, align 8
  store %struct.ixgbevf_adapter* %14, %struct.ixgbevf_adapter** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IXGBE_RXD_STAT_VP, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %8, align 8
  %19 = bitcast %union.ixgbe_adv_rx_desc* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %9, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IXGBE_FLAG_IN_NETPOLL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %4
  %31 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %9, align 8
  %32 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %39, i32 0, i32 0
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %9, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @vlan_gro_receive(i32* %40, i64 %43, i32 %44, %struct.sk_buff* %45)
  br label %52

47:                                               ; preds = %35, %30
  %48 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %48, i32 0, i32 0
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @napi_gro_receive(i32* %49, %struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %47, %38
  br label %56

53:                                               ; preds = %4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @netif_rx(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @vlan_gro_receive(i32*, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
