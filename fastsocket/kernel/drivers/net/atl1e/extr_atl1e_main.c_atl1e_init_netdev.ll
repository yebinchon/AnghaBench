; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_init_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32*, i32 }
%struct.pci_dev = type { i32, i32 }

@atl1e_netdev_ops = common dso_local global i32 0, align 4
@AT_TX_WATCHDOG = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.pci_dev*)* @atl1e_init_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_init_netdev(%struct.net_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = call i32 @SET_NETDEV_DEV(%struct.net_device* %5, i32* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @pci_set_drvdata(%struct.pci_dev* %9, %struct.net_device* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  store i32* @atl1e_netdev_ops, i32** %18, align 8
  %19 = load i32, i32* @AT_TX_WATCHDOG, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @atl1e_set_ethtool_ops(%struct.net_device* %22)
  %24 = load i32, i32* @NETIF_F_SG, align 4
  %25 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @NETIF_F_LLTX, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @NETIF_F_TSO, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  ret i32 0
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @atl1e_set_ethtool_ops(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
