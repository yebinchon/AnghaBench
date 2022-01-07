; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32, i32 }
%struct.port_info = type { i32, i32, %struct.link_config }
%struct.link_config = type { i32, i32, i64, i32, i64 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@ADVERTISED_MASK = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i64 0, align 8
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.link_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.port_info* @netdev_priv(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %6, align 8
  %14 = load %struct.port_info*, %struct.port_info** %6, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 2
  store %struct.link_config* %15, %struct.link_config** %7, align 8
  %16 = load %struct.link_config*, %struct.link_config** %7, align 8
  %17 = getelementptr inbounds %struct.link_config, %struct.link_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %2
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AUTONEG_DISABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %30 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @speed_duplex_to_caps(i64 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.link_config*, %struct.link_config** %7, align 8
  %37 = getelementptr inbounds %struct.link_config, %struct.link_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %136

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %136

47:                                               ; preds = %2
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTONEG_DISABLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %47
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %55 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @speed_duplex_to_caps(i64 %56, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.link_config*, %struct.link_config** %7, align 8
  %62 = getelementptr inbounds %struct.link_config, %struct.link_config* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @SPEED_1000, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %53
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %136

74:                                               ; preds = %67
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.link_config*, %struct.link_config** %7, align 8
  %77 = getelementptr inbounds %struct.link_config, %struct.link_config* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.link_config*, %struct.link_config** %7, align 8
  %82 = getelementptr inbounds %struct.link_config, %struct.link_config* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.link_config*, %struct.link_config** %7, align 8
  %84 = getelementptr inbounds %struct.link_config, %struct.link_config* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %119

85:                                               ; preds = %47
  %86 = load i32, i32* @ADVERTISED_MASK, align 4
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.link_config*, %struct.link_config** %7, align 8
  %92 = getelementptr inbounds %struct.link_config, %struct.link_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %85
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %136

105:                                              ; preds = %85
  %106 = load i64, i64* @SPEED_INVALID, align 8
  %107 = load %struct.link_config*, %struct.link_config** %7, align 8
  %108 = getelementptr inbounds %struct.link_config, %struct.link_config* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @DUPLEX_INVALID, align 4
  %110 = load %struct.link_config*, %struct.link_config** %7, align 8
  %111 = getelementptr inbounds %struct.link_config, %struct.link_config* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.link_config*, %struct.link_config** %7, align 8
  %118 = getelementptr inbounds %struct.link_config, %struct.link_config* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %105, %74
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.link_config*, %struct.link_config** %7, align 8
  %124 = getelementptr inbounds %struct.link_config, %struct.link_config* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = call i64 @netif_running(%struct.net_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %119
  %129 = load %struct.port_info*, %struct.port_info** %6, align 8
  %130 = getelementptr inbounds %struct.port_info, %struct.port_info* %129, i32 0, i32 1
  %131 = load %struct.port_info*, %struct.port_info** %6, align 8
  %132 = getelementptr inbounds %struct.port_info, %struct.port_info* %131, i32 0, i32 0
  %133 = load %struct.link_config*, %struct.link_config** %7, align 8
  %134 = call i32 @t3_link_start(i32* %130, i32* %132, %struct.link_config* %133)
  br label %135

135:                                              ; preds = %128, %119
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %102, %71, %44, %42
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @speed_duplex_to_caps(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t3_link_start(i32*, i32*, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
