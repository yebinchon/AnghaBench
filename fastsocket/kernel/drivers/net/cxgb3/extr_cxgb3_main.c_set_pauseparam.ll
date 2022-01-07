; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.port_info = type { i32, i32, %struct.link_config }
%struct.link_config = type { i32, i32, i64, i32 }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.link_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %6, align 8
  %10 = load %struct.port_info*, %struct.port_info** %6, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 2
  store %struct.link_config* %11, %struct.link_config** %7, align 8
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AUTONEG_DISABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.link_config*, %struct.link_config** %7, align 8
  %19 = getelementptr inbounds %struct.link_config, %struct.link_config* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.link_config*, %struct.link_config** %7, align 8
  %22 = getelementptr inbounds %struct.link_config, %struct.link_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @PAUSE_AUTONEG, align 4
  %29 = load %struct.link_config*, %struct.link_config** %7, align 8
  %30 = getelementptr inbounds %struct.link_config, %struct.link_config* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %97

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @PAUSE_RX, align 4
  %42 = load %struct.link_config*, %struct.link_config** %7, align 8
  %43 = getelementptr inbounds %struct.link_config, %struct.link_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @PAUSE_TX, align 4
  %53 = load %struct.link_config*, %struct.link_config** %7, align 8
  %54 = getelementptr inbounds %struct.link_config, %struct.link_config* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.link_config*, %struct.link_config** %7, align 8
  %59 = getelementptr inbounds %struct.link_config, %struct.link_config* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AUTONEG_ENABLE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i64 @netif_running(%struct.net_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.port_info*, %struct.port_info** %6, align 8
  %69 = getelementptr inbounds %struct.port_info, %struct.port_info* %68, i32 0, i32 1
  %70 = load %struct.port_info*, %struct.port_info** %6, align 8
  %71 = getelementptr inbounds %struct.port_info, %struct.port_info* %70, i32 0, i32 0
  %72 = load %struct.link_config*, %struct.link_config** %7, align 8
  %73 = call i32 @t3_link_start(i32* %69, i32* %71, %struct.link_config* %72)
  br label %74

74:                                               ; preds = %67, %63
  br label %96

75:                                               ; preds = %57
  %76 = load %struct.link_config*, %struct.link_config** %7, align 8
  %77 = getelementptr inbounds %struct.link_config, %struct.link_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PAUSE_RX, align 4
  %80 = load i32, i32* @PAUSE_TX, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = load %struct.link_config*, %struct.link_config** %7, align 8
  %84 = getelementptr inbounds %struct.link_config, %struct.link_config* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i64 @netif_running(%struct.net_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load %struct.port_info*, %struct.port_info** %6, align 8
  %90 = getelementptr inbounds %struct.port_info, %struct.port_info* %89, i32 0, i32 0
  %91 = load %struct.link_config*, %struct.link_config** %7, align 8
  %92 = getelementptr inbounds %struct.link_config, %struct.link_config* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @t3_mac_set_speed_duplex_fc(i32* %90, i32 -1, i32 -1, i32 %93)
  br label %95

95:                                               ; preds = %88, %75
  br label %96

96:                                               ; preds = %95, %74
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %31
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t3_link_start(i32*, i32*, %struct.link_config*) #1

declare dso_local i32 @t3_mac_set_speed_duplex_fc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
