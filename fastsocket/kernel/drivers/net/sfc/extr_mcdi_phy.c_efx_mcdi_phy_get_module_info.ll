; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_get_module_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }

@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_modinfo*)* @efx_mcdi_phy_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_get_module_info(%struct.efx_nic* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.efx_mcdi_phy_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  store %struct.efx_mcdi_phy_data* %9, %struct.efx_mcdi_phy_data** %6, align 8
  %10 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %11 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %20 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %15 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %18 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
