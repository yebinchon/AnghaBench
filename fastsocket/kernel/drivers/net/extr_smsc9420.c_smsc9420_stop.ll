; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32*, i32, i32 }

@INT_CFG = common dso_local global i32 0, align 4
@INT_CFG_IRQ_EN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.smsc9420_pdata* %7, %struct.smsc9420_pdata** %3, align 8
  %8 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %9 = icmp ne %struct.smsc9420_pdata* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %21 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %20, i32 0, i32 3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @spin_lock_irqsave(i32* %21, i32 %22)
  %24 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %25 = load i32, i32* @INT_CFG, align 4
  %26 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %24, i32 %25)
  %27 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %31 = load i32, i32* @INT_CFG, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %30, i32 %31, i32 %32)
  %34 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %35 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %34, i32 0, i32 3
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @netif_tx_disable(%struct.net_device* %38)
  %40 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %41 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %40, i32 0, i32 2
  %42 = call i32 @napi_disable(i32* %41)
  %43 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %44 = call i32 @smsc9420_stop_tx(%struct.smsc9420_pdata* %43)
  %45 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %46 = call i32 @smsc9420_free_tx_ring(%struct.smsc9420_pdata* %45)
  %47 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %48 = call i32 @smsc9420_stop_rx(%struct.smsc9420_pdata* %47)
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %50 = call i32 @smsc9420_free_rx_ring(%struct.smsc9420_pdata* %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %55 = call i32 @free_irq(i32 %53, %struct.smsc9420_pdata* %54)
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %57 = call i32 @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata* %56)
  %58 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %59 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @phy_stop(i32* %60)
  %62 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %63 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @phy_disconnect(i32* %64)
  %66 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %67 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %69 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mdiobus_unregister(i32 %70)
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %73 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mdiobus_free(i32 %74)
  ret i32 0
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @smsc9420_stop_tx(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_free_tx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_stop_rx(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_free_rx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @free_irq(i32, %struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata*) #1

declare dso_local i32 @phy_stop(i32*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
