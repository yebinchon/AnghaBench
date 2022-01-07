; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32 }
%struct.netx_eth_priv = type { i32, i64 }

@netx_eth_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NETX_XPEC_RAM_START_OFS = common dso_local global i64 0, align 8
@ETH_MAC_4321 = common dso_local global i64 0, align 8
@ETH_MAC_65 = common dso_local global i64 0, align 8
@LOCAL_CONFIG_LINK_STATUS_IRQ_EN = common dso_local global i32 0, align 4
@LOCAL_CONFIG_CON_LO_IRQ_EN = common dso_local global i32 0, align 4
@LOCAL_CONFIG_CON_HI_IRQ_EN = common dso_local global i32 0, align 4
@LOCAL_CONFIG_IND_LO_IRQ_EN = common dso_local global i32 0, align 4
@LOCAL_CONFIG_IND_HI_IRQ_EN = common dso_local global i32 0, align 4
@ETH_MAC_LOCAL_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netx_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netx_eth_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.netx_eth_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.netx_eth_priv* %6, %struct.netx_eth_priv** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IRQF_SHARED, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @request_irq(i32 %9, i32* @netx_eth_interrupt, i32 %10, i32 %13, %struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %25, %31
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %32, %38
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 24
  %46 = or i32 %39, %45
  %47 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %48 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NETX_XPEC_RAM_START_OFS, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @ETH_MAC_4321, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %46, i64 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %59, %65
  %67 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %68 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NETX_XPEC_RAM_START_OFS, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* @ETH_MAC_65, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %66, i64 %73)
  %75 = load i32, i32* @LOCAL_CONFIG_LINK_STATUS_IRQ_EN, align 4
  %76 = load i32, i32* @LOCAL_CONFIG_CON_LO_IRQ_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @LOCAL_CONFIG_CON_HI_IRQ_EN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @LOCAL_CONFIG_IND_LO_IRQ_EN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @LOCAL_CONFIG_IND_HI_IRQ_EN, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %85 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NETX_XPEC_RAM_START_OFS, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* @ETH_MAC_LOCAL_CONFIG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %83, i64 %90)
  %92 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %93 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %92, i32 0, i32 0
  %94 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %4, align 8
  %95 = call i32 @netif_msg_link(%struct.netx_eth_priv* %94)
  %96 = call i32 @mii_check_media(i32* %93, i32 %95, i32 1)
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = call i32 @netif_start_queue(%struct.net_device* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %20, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.netx_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.netx_eth_priv*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
