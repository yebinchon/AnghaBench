; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i32 }
%struct.port_info = type { i32, %struct.TYPE_2__*, %struct.link_config }
%struct.TYPE_2__ = type { i32 }
%struct.link_config = type { i32, i32, i32, i64 }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FW_PORT_CAP_ANEG = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.port_info* @netdev_priv(%struct.net_device* %10)
  store %struct.port_info* %11, %struct.port_info** %7, align 8
  %12 = load %struct.port_info*, %struct.port_info** %7, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 2
  store %struct.link_config* %13, %struct.link_config** %8, align 8
  %14 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %15 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DUPLEX_FULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %127

24:                                               ; preds = %2
  %25 = load %struct.link_config*, %struct.link_config** %8, align 8
  %26 = getelementptr inbounds %struct.link_config, %struct.link_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FW_PORT_CAP_ANEG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %24
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUTONEG_DISABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.link_config*, %struct.link_config** %8, align 8
  %39 = getelementptr inbounds %struct.link_config, %struct.link_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @speed_to_caps(i64 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %127

46:                                               ; preds = %37, %31
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %24
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AUTONEG_DISABLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @speed_to_caps(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.link_config*, %struct.link_config** %8, align 8
  %59 = getelementptr inbounds %struct.link_config, %struct.link_config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @SPEED_1000, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @SPEED_10000, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64, %55
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %127

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.link_config*, %struct.link_config** %8, align 8
  %78 = getelementptr inbounds %struct.link_config, %struct.link_config* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.link_config*, %struct.link_config** %8, align 8
  %80 = getelementptr inbounds %struct.link_config, %struct.link_config* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  br label %103

81:                                               ; preds = %49
  %82 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @to_fw_linkcaps(i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.link_config*, %struct.link_config** %8, align 8
  %87 = getelementptr inbounds %struct.link_config, %struct.link_config* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %127

95:                                               ; preds = %81
  %96 = load %struct.link_config*, %struct.link_config** %8, align 8
  %97 = getelementptr inbounds %struct.link_config, %struct.link_config* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @FW_PORT_CAP_ANEG, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.link_config*, %struct.link_config** %8, align 8
  %102 = getelementptr inbounds %struct.link_config, %struct.link_config* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %95, %75
  %104 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.link_config*, %struct.link_config** %8, align 8
  %108 = getelementptr inbounds %struct.link_config, %struct.link_config* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i64 @netif_running(%struct.net_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %103
  %113 = load %struct.port_info*, %struct.port_info** %7, align 8
  %114 = getelementptr inbounds %struct.port_info, %struct.port_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.port_info*, %struct.port_info** %7, align 8
  %117 = getelementptr inbounds %struct.port_info, %struct.port_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.port_info*, %struct.port_info** %7, align 8
  %122 = getelementptr inbounds %struct.port_info, %struct.port_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.link_config*, %struct.link_config** %8, align 8
  %125 = call i32 @t4_link_start(%struct.TYPE_2__* %115, i32 %120, i32 %123, %struct.link_config* %124)
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %112, %92, %72, %46, %45, %21
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @speed_to_caps(i64) #1

declare dso_local i32 @to_fw_linkcaps(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t4_link_start(%struct.TYPE_2__*, i32, i32, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
