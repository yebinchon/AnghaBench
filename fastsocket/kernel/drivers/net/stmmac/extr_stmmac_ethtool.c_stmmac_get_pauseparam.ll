; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FLOW_RX = common dso_local global i32 0, align 4
@FLOW_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @stmmac_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.stmmac_priv* %7, %struct.stmmac_priv** %5, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FLOW_RX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FLOW_TX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %43 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
