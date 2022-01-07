; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i64, i32, i32, i64, i64, i64 }
%struct.bcm_enet_priv = type { i64, i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @bcm_enet_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.bcm_enet_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_enet_priv* %8, %struct.bcm_enet_priv** %6, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %14 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %19 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %17
  %26 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %27 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %30 = call i32 @phy_ethtool_gset(i32 %28, %struct.ethtool_cmd* %29)
  store i32 %30, i32* %3, align 4
  br label %76

31:                                               ; preds = %2
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %35 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @SPEED_100, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @SPEED_10, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %47 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @DUPLEX_FULL, align 4
  br label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @DUPLEX_HALF, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %59 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @PORT_MII, align 4
  %70 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @XCVR_EXTERNAL, align 4
  %73 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %25, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_gset(i32, %struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
