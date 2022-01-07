; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_eepro_ethtool_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_eepro.c_eepro_ethtool_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.ethtool_cmd = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.eepro_local = type { i32* }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ee_PortTPE = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ee_PortBNC = common dso_local global i32 0, align 4
@SUPPORTED_BNC = common dso_local global i32 0, align 4
@ADVERTISED_BNC = common dso_local global i32 0, align 4
@ee_PortAUI = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@ADVERTISED_AUI = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@TPE = common dso_local global i64 0, align 8
@ee_Duplex = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@ee_AutoNeg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @eepro_ethtool_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eepro_ethtool_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.eepro_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.eepro_local* @netdev_priv(%struct.net_device* %6)
  store %struct.eepro_local* %7, %struct.eepro_local** %5, align 8
  %8 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %9 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %16 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.eepro_local*, %struct.eepro_local** %5, align 8
  %23 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ee_PortTPE, align 4
  %28 = call i64 @GetBit(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load i32, i32* @SUPPORTED_TP, align 4
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @ADVERTISED_TP, align 4
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %30, %2
  %42 = load %struct.eepro_local*, %struct.eepro_local** %5, align 8
  %43 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ee_PortBNC, align 4
  %48 = call i64 @GetBit(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %41
  %51 = load i32, i32* @SUPPORTED_BNC, align 4
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @ADVERTISED_BNC, align 4
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %50, %41
  %62 = load %struct.eepro_local*, %struct.eepro_local** %5, align 8
  %63 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ee_PortAUI, align 4
  %68 = call i64 @GetBit(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load i32, i32* @SUPPORTED_AUI, align 4
  %72 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @ADVERTISED_AUI, align 4
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %70, %61
  %82 = load i32, i32* @SPEED_10, align 4
  %83 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %81
  %91 = load %struct.eepro_local*, %struct.eepro_local** %5, align 8
  %92 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ee_Duplex, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @DUPLEX_FULL, align 4
  %101 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  br label %107

103:                                              ; preds = %90, %81
  %104 = load i32, i32* @DUPLEX_HALF, align 4
  %105 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @XCVR_INTERNAL, align 4
  %119 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %120 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load %struct.eepro_local*, %struct.eepro_local** %5, align 8
  %122 = getelementptr inbounds %struct.eepro_local, %struct.eepro_local* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ee_AutoNeg, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %131 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %130, i32 0, i32 3
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %107
  ret i32 0
}

declare dso_local %struct.eepro_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @GetBit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
