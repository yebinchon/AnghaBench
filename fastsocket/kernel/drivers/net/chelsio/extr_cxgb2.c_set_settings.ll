; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.adapter* }
%struct.adapter = type { %struct.port_info* }
%struct.port_info = type { i32, i32, %struct.link_config }
%struct.link_config = type { i32, i64, i32, i64, i32 }
%struct.ethtool_cmd = type { i64, i64, i32, i32 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
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
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %6, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load %struct.port_info*, %struct.port_info** %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i64 %18
  store %struct.port_info* %19, %struct.port_info** %7, align 8
  %20 = load %struct.port_info*, %struct.port_info** %7, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 2
  store %struct.link_config* %21, %struct.link_config** %8, align 8
  %22 = load %struct.link_config*, %struct.link_config** %8, align 8
  %23 = getelementptr inbounds %struct.link_config, %struct.link_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %142

31:                                               ; preds = %2
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUTONEG_DISABLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %31
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @speed_duplex_to_caps(i64 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.link_config*, %struct.link_config** %8, align 8
  %46 = getelementptr inbounds %struct.link_config, %struct.link_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SPEED_1000, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %37
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %142

60:                                               ; preds = %51
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.link_config*, %struct.link_config** %8, align 8
  %65 = getelementptr inbounds %struct.link_config, %struct.link_config* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.link_config*, %struct.link_config** %8, align 8
  %70 = getelementptr inbounds %struct.link_config, %struct.link_config* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.link_config*, %struct.link_config** %8, align 8
  %72 = getelementptr inbounds %struct.link_config, %struct.link_config* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  br label %123

73:                                               ; preds = %31
  %74 = load i32, i32* @ADVERTISED_MASK, align 4
  %75 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %81, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load %struct.link_config*, %struct.link_config** %8, align 8
  %90 = getelementptr inbounds %struct.link_config, %struct.link_config* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %88, %73
  %95 = load %struct.link_config*, %struct.link_config** %8, align 8
  %96 = getelementptr inbounds %struct.link_config, %struct.link_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %142

109:                                              ; preds = %94
  %110 = load i64, i64* @SPEED_INVALID, align 8
  %111 = load %struct.link_config*, %struct.link_config** %8, align 8
  %112 = getelementptr inbounds %struct.link_config, %struct.link_config* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @DUPLEX_INVALID, align 4
  %114 = load %struct.link_config*, %struct.link_config** %8, align 8
  %115 = getelementptr inbounds %struct.link_config, %struct.link_config* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.link_config*, %struct.link_config** %8, align 8
  %122 = getelementptr inbounds %struct.link_config, %struct.link_config* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %109, %60
  %124 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.link_config*, %struct.link_config** %8, align 8
  %128 = getelementptr inbounds %struct.link_config, %struct.link_config* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = call i64 @netif_running(%struct.net_device* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load %struct.port_info*, %struct.port_info** %7, align 8
  %134 = getelementptr inbounds %struct.port_info, %struct.port_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.port_info*, %struct.port_info** %7, align 8
  %137 = getelementptr inbounds %struct.port_info, %struct.port_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.link_config*, %struct.link_config** %8, align 8
  %140 = call i32 @t1_link_start(i32 %135, i32 %138, %struct.link_config* %139)
  br label %141

141:                                              ; preds = %132, %123
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %106, %57, %28
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @speed_duplex_to_caps(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @t1_link_start(i32, i32, %struct.link_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
