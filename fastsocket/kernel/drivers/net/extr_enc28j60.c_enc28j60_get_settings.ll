; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_enc28j60_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.enc28j60_net = type { i64 }

@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @enc28j60_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc28j60_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.enc28j60_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %6)
  store %struct.enc28j60_net* %7, %struct.enc28j60_net** %5, align 8
  %8 = load i32, i32* @XCVR_INTERNAL, align 4
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %12 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_TP, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @SPEED_10, align 4
  %19 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.enc28j60_net*, %struct.enc28j60_net** %5, align 8
  %22 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @DUPLEX_FULL, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @DUPLEX_HALF, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PORT_TP, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @AUTONEG_DISABLE, align 4
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  ret i32 0
}

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
