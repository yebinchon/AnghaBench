; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_ethtool_gset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_ethtool_gset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PORT_MII = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_ethtool_gset(%struct.phy_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @PORT_MII, align 4
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @XCVR_EXTERNAL, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
