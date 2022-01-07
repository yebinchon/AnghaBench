; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i64 }

@MC_CMD_PHY_CAP_AN_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_1000FDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10000FDX_LBN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_10HDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_100HDX_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_CAP_1000HDX_LBN = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_cmd*)* @efx_mcdi_phy_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_set_settings(%struct.efx_nic* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.efx_mcdi_phy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 1
  %11 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %10, align 8
  store %struct.efx_mcdi_phy_data* %11, %struct.efx_mcdi_phy_data** %6, align 8
  %12 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ethtool_to_mcdi_cap(i32 %19)
  %21 = load i32, i32* @MC_CMD_PHY_CAP_AN_LBN, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  store i32 %23, i32* %7, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %30)
  switch i32 %31, label %44 [
    i32 10, label %32
    i32 100, label %35
    i32 1000, label %38
    i32 10000, label %41
  ]

32:                                               ; preds = %29
  %33 = load i32, i32* @MC_CMD_PHY_CAP_10FDX_LBN, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %7, align 4
  br label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @MC_CMD_PHY_CAP_100FDX_LBN, align 4
  %37 = shl i32 1, %36
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %29
  %39 = load i32, i32* @MC_CMD_PHY_CAP_1000FDX_LBN, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %7, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load i32, i32* @MC_CMD_PHY_CAP_10000FDX_LBN, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* %7, align 4
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %100

47:                                               ; preds = %41, %38, %35, %32
  br label %64

48:                                               ; preds = %24
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %49)
  switch i32 %50, label %60 [
    i32 10, label %51
    i32 100, label %54
    i32 1000, label %57
  ]

51:                                               ; preds = %48
  %52 = load i32, i32* @MC_CMD_PHY_CAP_10HDX_LBN, align 4
  %53 = shl i32 1, %52
  store i32 %53, i32* %7, align 4
  br label %63

54:                                               ; preds = %48
  %55 = load i32, i32* @MC_CMD_PHY_CAP_100HDX_LBN, align 4
  %56 = shl i32 1, %55
  store i32 %56, i32* %7, align 4
  br label %63

57:                                               ; preds = %48
  %58 = load i32, i32* @MC_CMD_PHY_CAP_1000HDX_LBN, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %100

63:                                               ; preds = %57, %54, %51
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %16
  %66 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %69 = call i32 @efx_get_mcdi_phy_flags(%struct.efx_nic* %68)
  %70 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %71 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @efx_mcdi_set_link(%struct.efx_nic* %66, i32 %67, i32 %69, i32 %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %100

78:                                               ; preds = %65
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %85 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @efx_link_set_advertising(%struct.efx_nic* %84, i32 %89)
  %91 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %92 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %99

93:                                               ; preds = %78
  %94 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %95 = call i32 @efx_link_set_advertising(%struct.efx_nic* %94, i32 0)
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %6, align 8
  %98 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %83
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %76, %60, %44
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ethtool_to_mcdi_cap(i32) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @efx_mcdi_set_link(%struct.efx_nic*, i32, i32, i32, i32) #1

declare dso_local i32 @efx_get_mcdi_phy_flags(%struct.efx_nic*) #1

declare dso_local i32 @efx_link_set_advertising(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
