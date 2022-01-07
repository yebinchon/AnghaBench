; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32 }
%struct.mv643xx_eth_private = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @mv643xx_eth_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %6, align 8
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %24 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %27 = call i32 @phy_ethtool_sset(i32* %25, %struct.ethtool_cmd* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_sset(i32*, %struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
