; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec_mpc52xx.c_mpc52xx_fec_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32 }
%struct.mpc52xx_fec_priv = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @mpc52xx_fec_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.mpc52xx_fec_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mpc52xx_fec_priv* %8, %struct.mpc52xx_fec_priv** %6, align 8
  %9 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %10 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %21 = call i32 @phy_ethtool_gset(i32 %19, %struct.ethtool_cmd* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_gset(i32, %struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
