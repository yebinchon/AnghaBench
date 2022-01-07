; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { %struct.TYPE_5__*, i32, i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@S6_GMAC_HOST_INT_TXBURSTOVER = common dso_local global i32 0, align 4
@S6_GMAC_HOST_INT_TXPREWOVER = common dso_local global i32 0, align 4
@S6_GMAC_HOST_INT_RXBURSTUNDER = common dso_local global i32 0, align 4
@S6_GMAC_HOST_INT_RXPOSTRFULL = common dso_local global i32 0, align 4
@S6_GMAC_HOST_INT_RXPOSTRUNDER = common dso_local global i32 0, align 4
@S6_GMAC_HOST_INTMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @s6gmac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6gmac_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %5)
  store %struct.s6gmac* %6, %struct.s6gmac** %3, align 8
  %7 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %8 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = call i32 @phy_read_status(%struct.TYPE_5__* %9)
  %11 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %12 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %16 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %20 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @s6gmac_linkisup(%struct.net_device* %18, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @s6gmac_init_device(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @s6gmac_init_stats(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @s6gmac_init_dmac(%struct.net_device* %29)
  %31 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %32 = call i32 @s6gmac_rx_fillfifo(%struct.s6gmac* %31)
  %33 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %34 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %37 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @s6dmac_enable_chan(i32 %35, i32 %38, i32 2, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 7, i32 -1, i32 2, i32 0, i32 1)
  %40 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %41 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %44 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @s6dmac_enable_chan(i32 %42, i32 %45, i32 2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 7, i32 -1, i32 2, i32 0, i32 1)
  %47 = load i32, i32* @S6_GMAC_HOST_INT_TXBURSTOVER, align 4
  %48 = shl i32 0, %47
  %49 = load i32, i32* @S6_GMAC_HOST_INT_TXPREWOVER, align 4
  %50 = shl i32 0, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @S6_GMAC_HOST_INT_RXBURSTUNDER, align 4
  %53 = shl i32 0, %52
  %54 = or i32 %51, %53
  %55 = load i32, i32* @S6_GMAC_HOST_INT_RXPOSTRFULL, align 4
  %56 = shl i32 0, %55
  %57 = or i32 %54, %56
  %58 = load i32, i32* @S6_GMAC_HOST_INT_RXPOSTRUNDER, align 4
  %59 = shl i32 0, %58
  %60 = or i32 %57, %59
  %61 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %62 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @S6_GMAC_HOST_INTMASK, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %68 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %67, i32 0, i32 1
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %72 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @phy_start(%struct.TYPE_5__* %73)
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @netif_start_queue(%struct.net_device* %75)
  ret i32 0
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_read_status(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s6gmac_linkisup(%struct.net_device*, i32) #1

declare dso_local i32 @s6gmac_init_device(%struct.net_device*) #1

declare dso_local i32 @s6gmac_init_stats(%struct.net_device*) #1

declare dso_local i32 @s6gmac_init_dmac(%struct.net_device*) #1

declare dso_local i32 @s6gmac_rx_fillfifo(%struct.s6gmac*) #1

declare dso_local i32 @s6dmac_enable_chan(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @phy_start(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
