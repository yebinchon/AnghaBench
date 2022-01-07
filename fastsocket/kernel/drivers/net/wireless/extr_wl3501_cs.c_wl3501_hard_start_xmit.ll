; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wl3501_card = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @wl3501_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl3501_card*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %9)
  store %struct.wl3501_card* %10, %struct.wl3501_card** %7, align 8
  %11 = load %struct.wl3501_card*, %struct.wl3501_card** %7, align 8
  %12 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.wl3501_card*, %struct.wl3501_card** %7, align 8
  %16 = call i32 @wl3501_block_interrupt(%struct.wl3501_card* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @jiffies, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.wl3501_card*, %struct.wl3501_card** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @wl3501_send_pkt(%struct.wl3501_card* %20, i32 %23, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.wl3501_card*, %struct.wl3501_card** %7, align 8
  %32 = call i32 @wl3501_unblock_interrupt(%struct.wl3501_card* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @netif_stop_queue(%struct.net_device* %42)
  br label %70

44:                                               ; preds = %33
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %52
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load %struct.wl3501_card*, %struct.wl3501_card** %7, align 8
  %63 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %69

66:                                               ; preds = %44
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @netif_stop_queue(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %66, %44
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.wl3501_card*, %struct.wl3501_card** %7, align 8
  %72 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %71, i32 0, i32 1
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %75
}

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wl3501_block_interrupt(%struct.wl3501_card*) #1

declare dso_local i32 @wl3501_send_pkt(%struct.wl3501_card*, i32, i64) #1

declare dso_local i32 @wl3501_unblock_interrupt(%struct.wl3501_card*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
