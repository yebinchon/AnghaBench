; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_baycom_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_baycom_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64*, i32 }
%struct.net_device = type { i32 }
%struct.baycom_state = type { %struct.sk_buff* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_LOCKED = common dso_local global i32 0, align 4
@HDLCDRV_MAXFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @baycom_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_send_packet(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.baycom_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %7)
  store %struct.baycom_state* %8, %struct.baycom_state** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @do_kiss_params(%struct.baycom_state* %16, i64* %19, i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @dev_kfree_skb(%struct.sk_buff* %24)
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %29 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @NETDEV_TX_LOCKED, align 4
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HDLCDRV_MAXFLEN, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @dev_kfree_skb(%struct.sk_buff* %47)
  %49 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %55 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %54, i32 0, i32 0
  store %struct.sk_buff* %53, %struct.sk_buff** %55, align 8
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %46, %32, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @do_kiss_params(%struct.baycom_state*, i64*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
