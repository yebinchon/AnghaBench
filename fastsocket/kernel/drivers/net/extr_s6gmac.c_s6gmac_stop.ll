; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { i64, i64, i64, i64, i32, i32*, i32*, i32 }

@S6_NUM_TX_SKB = common dso_local global i64 0, align 8
@S6_NUM_RX_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @s6gmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6gmac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %5)
  store %struct.s6gmac* %6, %struct.s6gmac** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %10 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @phy_stop(i32 %11)
  %13 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %14 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %13, i32 0, i32 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @s6gmac_init_dmac(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @s6gmac_stop_device(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %29, %1
  %22 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %23 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %26 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %31 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %34 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* @S6_NUM_TX_SKB, align 8
  %38 = urem i64 %35, %37
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_kfree_skb(i32 %40)
  br label %21

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %51, %42
  %44 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %45 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %48 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %53 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %56 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* @S6_NUM_RX_SKB, align 8
  %60 = urem i64 %57, %59
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_kfree_skb(i32 %62)
  br label %43

64:                                               ; preds = %43
  %65 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %66 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %65, i32 0, i32 4
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret i32 0
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s6gmac_init_dmac(%struct.net_device*) #1

declare dso_local i32 @s6gmac_stop_device(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
