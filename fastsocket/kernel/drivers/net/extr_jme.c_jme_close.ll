; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @jme_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.jme_adapter* %5, %struct.jme_adapter** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_carrier_off(%struct.net_device* %8)
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %11 = call i32 @jme_stop_irq(%struct.jme_adapter* %10)
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %13 = call i32 @jme_free_irq(%struct.jme_adapter* %12)
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %15 = call i32 @JME_NAPI_DISABLE(%struct.jme_adapter* %14)
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %16, i32 0, i32 4
  %18 = call i32 @tasklet_disable(i32* %17)
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 3
  %21 = call i32 @tasklet_disable(i32* %20)
  %22 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %22, i32 0, i32 2
  %24 = call i32 @tasklet_disable(i32* %23)
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %25, i32 0, i32 1
  %27 = call i32 @tasklet_disable(i32* %26)
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %29 = call i32 @jme_reset_ghc_speed(%struct.jme_adapter* %28)
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %31 = call i32 @jme_disable_rx_engine(%struct.jme_adapter* %30)
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %33 = call i32 @jme_disable_tx_engine(%struct.jme_adapter* %32)
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %35 = call i32 @jme_reset_mac_processor(%struct.jme_adapter* %34)
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %37 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %36)
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %39 = call i32 @jme_free_tx_resources(%struct.jme_adapter* %38)
  %40 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %43 = call i32 @jme_phy_off(%struct.jme_adapter* %42)
  ret i32 0
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @jme_stop_irq(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_irq(%struct.jme_adapter*) #1

declare dso_local i32 @JME_NAPI_DISABLE(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @jme_reset_ghc_speed(%struct.jme_adapter*) #1

declare dso_local i32 @jme_disable_rx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_disable_tx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_reset_mac_processor(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_tx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_phy_off(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
