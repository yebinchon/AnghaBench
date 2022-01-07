; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64 }
%struct.bcm_enet_priv = type { i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @bcm_enet_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.bcm_enet_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_enet_priv* %8, %struct.bcm_enet_priv** %6, align 8
  %9 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %10 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %15 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %13
  %22 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %23 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = call i32 @phy_ethtool_sset(i32 %24, %struct.ethtool_cmd* %25)
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %2
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPEED_100, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPEED_10, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PORT_MII, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38, %27
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %79

53:                                               ; preds = %44
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SPEED_100, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %62 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DUPLEX_FULL, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %71 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i64 @netif_running(%struct.net_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %53
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i32 @bcm_enet_adjust_link(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %75, %53
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %50, %21, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_sset(i32, %struct.ethtool_cmd*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bcm_enet_adjust_link(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
