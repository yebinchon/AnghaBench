; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.enic = type { i32 }

@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @enic_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.enic*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.enic* @netdev_priv(%struct.net_device* %6)
  store %struct.enic* %7, %struct.enic** %5, align 8
  %8 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %9 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %14 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @PORT_FIBRE, align 4
  %19 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @XCVR_EXTERNAL, align 4
  %22 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i64 @netif_carrier_ok(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = load %struct.enic*, %struct.enic** %5, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vnic_dev_port_speed(i32 %31)
  %33 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %28, i32 %32)
  %34 = load i32, i32* @DUPLEX_FULL, align 4
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %39 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %38, i32 -1)
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 2
  store i32 -1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %27
  %43 = load i32, i32* @AUTONEG_DISABLE, align 4
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  ret i32 0
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

declare dso_local i32 @vnic_dev_port_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
