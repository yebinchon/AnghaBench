; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_veth.c_veth_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_veth.c_veth_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i32, i32, i64, i32, i32, i32, i64, i64 }

@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @veth_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %5 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %5, i32 0, i32 9
  store i64 0, i64* %6, align 8
  %7 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %7, i32 0, i32 8
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @SPEED_10000, align 4
  %10 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @DUPLEX_FULL, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PORT_TP, align 4
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @XCVR_INTERNAL, align 4
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @AUTONEG_DISABLE, align 4
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
