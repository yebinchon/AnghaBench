; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { i32, i32, i64, i32*, i64 }

@S6_NUM_TX_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @s6gmac_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_tx_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %4)
  store %struct.s6gmac* %5, %struct.s6gmac** %3, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %8 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %11 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %15 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %18 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @s6dmac_pending_count(i32 %16, i32 %19)
  %21 = icmp sgt i64 %13, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %6
  %23 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %24 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %27 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* @S6_NUM_TX_SKB, align 8
  %31 = urem i64 %28, %30
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_kfree_skb_irq(i32 %33)
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %37 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %40 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @s6dmac_fifo_full(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @netif_wake_queue(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %44, %35
  ret void
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @s6dmac_pending_count(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32) #1

declare dso_local i32 @s6dmac_fifo_full(i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
