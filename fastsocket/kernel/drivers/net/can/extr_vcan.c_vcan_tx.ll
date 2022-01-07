; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_vcan.c_vcan_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_vcan.c_vcan_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sock*, i64 }
%struct.sock = type { i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@echo = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vcan_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcan_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %6, align 8
  %11 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %12 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PACKET_LOOPBACK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @echo, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  br label %49

49:                                               ; preds = %35, %32
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %79

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load %struct.sock*, %struct.sock** %58, align 8
  store %struct.sock* %59, %struct.sock** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %60, i32 %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %56
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store %struct.sock* %68, %struct.sock** %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @vcan_rx(%struct.sk_buff* %71, %struct.net_device* %72)
  br label %77

74:                                               ; preds = %53
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %65, %49
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @vcan_rx(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
