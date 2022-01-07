; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_ethtool.c_ehea_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_ethtool.c_ehea_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i32, i32, i32, i32 }
%struct.ehea_port = type { i32, i32, i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ehea_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.ehea_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %9)
  store %struct.ehea_port* %10, %struct.ehea_port** %6, align 8
  %11 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %12 = call i32 @ehea_sense_port_attr(%struct.ehea_port* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %113

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i64 @netif_carrier_ok(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %23 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %34 [
    i32 129, label %25
    i32 131, label %27
    i32 128, label %29
    i32 130, label %31
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @SPEED_10, align 4
  store i32 %26, i32* %7, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @SPEED_100, align 4
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @SPEED_1000, align 4
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load i64, i64* @SPEED_10000, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %21
  store i32 -1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %31, %29, %27, %25
  %36 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %37 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DUPLEX_FULL, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @DUPLEX_HALF, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %51

48:                                               ; preds = %17
  store i32 -1, i32* %7, align 4
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %52, i32 %53)
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPEED_10000, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %62 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %67 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @PORT_FIBRE, align 4
  %72 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  br label %100

74:                                               ; preds = %51
  %75 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %76 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SUPPORTED_TP, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %91 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ADVERTISED_TP, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @PORT_TP, align 4
  %98 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %74, %60
  %101 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %102 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_sense_port_attr(%struct.ehea_port*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
