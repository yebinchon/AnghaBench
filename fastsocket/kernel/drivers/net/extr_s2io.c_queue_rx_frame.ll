; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_queue_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_queue_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.s2io_nic = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i64)* @queue_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_rx_frame(%struct.sk_buff* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.s2io_nic*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.s2io_nic* %11, %struct.s2io_nic** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @eth_type_trans(%struct.sk_buff* %12, %struct.net_device* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %18 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %26 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %31 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %38 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %36, i64 %39, i64 %40)
  br label %49

42:                                               ; preds = %29
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %45 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @vlan_hwaccel_rx(%struct.sk_buff* %43, i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %63

50:                                               ; preds = %24, %21, %2
  %51 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %52 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = call i32 @netif_receive_skb(%struct.sk_buff* %57)
  br label %62

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @netif_rx(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %49
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @vlan_hwaccel_rx(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
