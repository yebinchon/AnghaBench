; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.atl1e_adapter = type { i32, %struct.vlan_group*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"atl1e_vlan_rx_register\0A\00", align 1
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_RMV_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @atl1e_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.atl1e_adapter*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atl1e_adapter* %9, %struct.atl1e_adapter** %5, align 8
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %17 = call i32 @atl1e_irq_disable(%struct.atl1e_adapter* %16)
  %18 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %19 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %19, i32 0, i32 1
  store %struct.vlan_group* %18, %struct.vlan_group** %20, align 8
  %21 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* @REG_MAC_CTRL, align 4
  %24 = call i32 @AT_READ_REG(i32* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %26 = icmp ne %struct.vlan_group* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @MAC_CTRL_RMV_VLAN, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @MAC_CTRL_RMV_VLAN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* @REG_MAC_CTRL, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @AT_WRITE_REG(i32* %38, i32 %39, i32 %40)
  %42 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %43 = call i32 @atl1e_irq_enable(%struct.atl1e_adapter* %42)
  ret void
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atl1e_irq_disable(%struct.atl1e_adapter*) #1

declare dso_local i32 @AT_READ_REG(i32*, i32) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @atl1e_irq_enable(%struct.atl1e_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
