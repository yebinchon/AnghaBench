; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ethtool_pauseparam = type { i64, i64 }
%struct.stmmac_priv = type { i32, i32, i32, %struct.TYPE_4__*, %struct.phy_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64, i32, i32, i32)* }
%struct.phy_device = type { i32, i32, i32, i64, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i64, i32, i32, i32 }

@FLOW_OFF = common dso_local global i32 0, align 4
@FLOW_RX = common dso_local global i32 0, align 4
@FLOW_TX = common dso_local global i32 0, align 4
@ETHTOOL_NWAY_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @stmmac_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethtool_cmd, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.stmmac_priv* %12, %struct.stmmac_priv** %5, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 4
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %6, align 8
  %16 = load i32, i32* @FLOW_OFF, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @FLOW_RX, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @FLOW_TX, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i64 @netif_running(%struct.net_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load i32, i32* @ETHTOOL_NWAY_RST, align 4
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 3
  store i64 %62, i64* %63, align 8
  %64 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %65 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %73 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %77 = call i32 @phy_ethtool_sset(%struct.phy_device* %76, %struct.ethtool_cmd* %9)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %49, %45
  br label %101

79:                                               ; preds = %37
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %10, align 8
  %83 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %84 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %92 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %95 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %98 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %89(i64 %90, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %79, %78
  %102 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %103 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_sset(%struct.phy_device*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
