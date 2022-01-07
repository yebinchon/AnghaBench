; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32 }
%struct.pch_gbe_adapter = type { i32, i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error: mii_ethtool_sset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @pch_gbe_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.pch_gbe_adapter* %11, %struct.pch_gbe_adapter** %6, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 2
  store %struct.pch_gbe_hw* %13, %struct.pch_gbe_hw** %7, align 8
  %14 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %15 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %17 = load i32, i32* @MII_BMCR, align 4
  %18 = load i32, i32* @BMCR_RESET, align 4
  %19 = call i32 @pch_gbe_hal_write_phy_reg(%struct.pch_gbe_hw* %16, i32 %17, i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @UINT_MAX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* @SPEED_1000, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @DUPLEX_FULL, align 4
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %29, i32 0, i32 1
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %32 = call i32 @mii_ethtool_sset(i32* %30, %struct.ethtool_cmd* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 %39, i64* %42, align 8
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %62 = call i32 @pch_gbe_hal_phy_sw_reset(%struct.pch_gbe_hw* %61)
  %63 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @netif_running(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %38
  %69 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %70 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %69)
  %71 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %72 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %71)
  store i32 %72, i32* %9, align 4
  br label %76

73:                                               ; preds = %38
  %74 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %75 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @pch_gbe_hal_write_phy_reg(%struct.pch_gbe_hw*, i32, i32) #1

declare dso_local i32 @mii_ethtool_sset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pch_gbe_hal_phy_sw_reset(%struct.pch_gbe_hw*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
