; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth_ethtool.c_uec_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32 }
%struct.ucc_geth_private = type { %struct.ucc_geth_info*, %struct.phy_device* }
%struct.ucc_geth_info = type { i32* }
%struct.phy_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @uec_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uec_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.ucc_geth_private*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.ucc_geth_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ucc_geth_private* %10, %struct.ucc_geth_private** %6, align 8
  %11 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %6, align 8
  %12 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %11, i32 0, i32 1
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %7, align 8
  %14 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %6, align 8
  %15 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %14, i32 0, i32 0
  %16 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %15, align 8
  store %struct.ucc_geth_info* %16, %struct.ucc_geth_info** %8, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %18 = icmp ne %struct.phy_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %8, align 8
  %26 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %34 = call i32 @phy_ethtool_gset(%struct.phy_device* %32, %struct.ethtool_cmd* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_ethtool_gset(%struct.phy_device*, %struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
