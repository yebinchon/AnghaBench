; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ql_adapter = type { i32 }

@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@STS_LINK_TYPE_MASK = common dso_local global i32 0, align 4
@STS_LINK_TYPE_10GBASET = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ql_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ql_adapter* %7, %struct.ql_adapter** %5, align 8
  %8 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %12 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @XCVR_EXTERNAL, align 4
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @STS_LINK_TYPE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @STS_LINK_TYPE_10GBASET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load i32, i32* @SUPPORTED_TP, align 4
  %26 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @ADVERTISED_TP, align 4
  %33 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @PORT_TP, align 4
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @AUTONEG_ENABLE, align 4
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  br label %59

45:                                               ; preds = %2
  %46 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %47 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @PORT_FIBRE, align 4
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %45, %24
  %60 = load i32, i32* @SPEED_10000, align 4
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @DUPLEX_FULL, align 4
  %64 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  ret i32 0
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
