; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.stmmac_priv = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @stmmac_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.stmmac_priv* %5, %struct.stmmac_priv** %3, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @phy_stop(i32* %13)
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @phy_disconnect(i32* %17)
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_stop_queue(%struct.net_device* %22)
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 1
  %26 = call i32 @napi_disable(i32* %25)
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %28 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %27, i32 0, i32 0
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @stmmac_dma_stop_tx(i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @stmmac_dma_stop_rx(i32 %41)
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %44 = call i32 @free_dma_desc_resources(%struct.stmmac_priv* %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @stmmac_mac_disable_tx(i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @stmmac_mac_disable_rx(i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @netif_carrier_off(%struct.net_device* %53)
  ret i32 0
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @stmmac_dma_stop_tx(i32) #1

declare dso_local i32 @stmmac_dma_stop_rx(i32) #1

declare dso_local i32 @free_dma_desc_resources(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_mac_disable_tx(i32) #1

declare dso_local i32 @stmmac_mac_disable_rx(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
