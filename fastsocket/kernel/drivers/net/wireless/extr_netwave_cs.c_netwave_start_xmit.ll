; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_netwave_cs.c_netwave_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_netwave_cs.c_netwave_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16, i8* }
%struct.net_device = type { i32 }

@ETH_ZLEN = common dso_local global i16 0, align 2
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @netwave_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netwave_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load i16, i16* @ETH_ZLEN, align 2
  %10 = sext i16 %9 to i32
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 8
  %20 = sext i16 %19 to i32
  br label %24

21:                                               ; preds = %2
  %22 = load i16, i16* @ETH_ZLEN, align 2
  %23 = sext i16 %22 to i32
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %20, %16 ], [ %23, %21 ]
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %5, align 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i16, i16* %5, align 2
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netwave_hw_xmit(i8* %30, i16 signext %31, %struct.net_device* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_start_queue(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %44
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netwave_hw_xmit(i8*, i16 signext, %struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
