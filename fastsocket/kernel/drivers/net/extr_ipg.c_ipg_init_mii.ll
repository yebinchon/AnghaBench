; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_init_mii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_init_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, %struct.mii_if_info }
%struct.mii_if_info = type { i32 (%struct.net_device*, i32, i32)*, i32, i32, i32, i32 (%struct.net_device*, i32, i32, i32)*, %struct.net_device* }

@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@GMII_PHY_1000BASETCONTROL_PreferMaster = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipg_init_mii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipg_init_mii(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipg_nic_private*, align 8
  %4 = alloca %struct.mii_if_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ipg_nic_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ipg_nic_private* %10, %struct.ipg_nic_private** %3, align 8
  %11 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %12 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %11, i32 0, i32 1
  store %struct.mii_if_info* %12, %struct.mii_if_info** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %15 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %14, i32 0, i32 5
  store %struct.net_device* %13, %struct.net_device** %15, align 8
  %16 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %17 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %16, i32 0, i32 0
  store i32 (%struct.net_device*, i32, i32)* @mdio_read, i32 (%struct.net_device*, i32, i32)** %17, align 8
  %18 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %19 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %18, i32 0, i32 4
  store i32 (%struct.net_device*, i32, i32, i32)* @mdio_write, i32 (%struct.net_device*, i32, i32, i32)** %19, align 8
  %20 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %21 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %20, i32 0, i32 1
  store i32 31, i32* %21, align 8
  %22 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %23 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %22, i32 0, i32 2
  store i32 31, i32* %23, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @ipg_find_phyaddr(%struct.net_device* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %27 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 31
  br i1 %29, label %30, label %70

30:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MII_CTRL1000, align 4
  %34 = call i32 @mdio_read(%struct.net_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %36 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @GMII_PHY_1000BASETCONTROL_PreferMaster, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MII_CTRL1000, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mdio_write(%struct.net_device* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MII_BMCR, align 4
  %50 = call i32 @mdio_read(%struct.net_device* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %3, align 8
  %52 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCI_REVISION_ID, align 4
  %55 = call i32 @pci_read_config_byte(i32 %53, i32 %54, i32* %8)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ipg_set_phy_default_param(i32 %56, %struct.net_device* %57, i32 %58)
  %60 = load i32, i32* @BMCR_RESET, align 4
  %61 = load i32, i32* @BMCR_ANRESTART, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @MII_BMCR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mdio_write(%struct.net_device* %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.ipg_nic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ipg_find_phyaddr(%struct.net_device*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @ipg_set_phy_default_param(i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
