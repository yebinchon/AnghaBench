; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { i64, i64, %struct.sk_buff**, i32, i32, i64 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }

@S6_NUM_RX_SKB = common dso_local global i64 0, align 8
@S6_GMAC_BURST_POSTRD = common dso_local global i64 0, align 8
@S6_GMAC_BURST_POSTRD_DROP = common dso_local global i32 0, align 4
@S6_GMAC_BURST_POSTRD_LEN = common dso_local global i32 0, align 4
@S6_GMAC_BURST_POSTRD_LEN_MASK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @s6gmac_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_rx_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %6)
  store %struct.s6gmac* %7, %struct.s6gmac** %3, align 8
  br label %8

8:                                                ; preds = %71, %1
  %9 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %10 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %13 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %17 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %20 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @s6dmac_pending_count(i32 %18, i32 %21)
  %23 = icmp sgt i64 %15, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %8
  %25 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %26 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %25, i32 0, i32 2
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %29 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* @S6_NUM_RX_SKB, align 8
  %33 = urem i64 %30, %32
  %34 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %5, align 8
  %36 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %37 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S6_GMAC_BURST_POSTRD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @S6_GMAC_BURST_POSTRD_DROP, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %24
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %48)
  br label %71

50:                                               ; preds = %24
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @S6_GMAC_BURST_POSTRD_LEN, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* @S6_GMAC_BURST_POSTRD_LEN_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @skb_put(%struct.sk_buff* %51, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 2
  store %struct.net_device* %58, %struct.net_device** %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @eth_type_trans(%struct.sk_buff* %61, %struct.net_device* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @netif_rx(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %50, %47
  br label %8

72:                                               ; preds = %8
  ret void
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @s6dmac_pending_count(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
