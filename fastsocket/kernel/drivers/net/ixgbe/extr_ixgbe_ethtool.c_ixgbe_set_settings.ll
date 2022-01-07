; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32, i32, i64 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64, i64, i64 }

@ixgbe_media_type_copper = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"setup link failed with code %d\0A\00", align 1
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ixgbe_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %6, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ixgbe_media_type_copper, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %22, %2
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AUTONEG_DISABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %152

37:                                               ; preds = %28
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %152

50:                                               ; preds = %37
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i64, i64* @IXGBE_LINK_SPEED_10GB_FULL, align 8
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %74 = load i64, i64* %8, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i64, i64* @IXGBE_LINK_SPEED_100_FULL, align 8
  %85 = load i64, i64* %8, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %83, %76
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %152

93:                                               ; preds = %87
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.ixgbe_hw.0*, i64, i32)*, i32 (%struct.ixgbe_hw.0*, i64, i32)** %100, align 8
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %103 = bitcast %struct.ixgbe_hw* %102 to %struct.ixgbe_hw.0*
  %104 = load i64, i64* %8, align 8
  %105 = call i32 %101(%struct.ixgbe_hw.0* %103, i64 %104, i32 1)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %93
  %109 = load i32, i32* @probe, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @e_info(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32 (%struct.ixgbe_hw.0*, i64, i32)*, i32 (%struct.ixgbe_hw.0*, i64, i32)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.0*
  %119 = load i64, i64* %9, align 8
  %120 = call i32 %116(%struct.ixgbe_hw.0* %118, i64 %119, i32 1)
  br label %121

121:                                              ; preds = %108, %93
  br label %150

122:                                              ; preds = %22
  %123 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %124 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %123)
  store i64 %124, i64* %11, align 8
  %125 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AUTONEG_ENABLE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %146, label %130

130:                                              ; preds = %122
  %131 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %146, label %136

136:                                              ; preds = %130
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %139 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load i64, i64* @SPEED_10000, align 8
  %143 = load i64, i64* @DUPLEX_FULL, align 8
  %144 = add nsw i64 %142, %143
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %136, %130, %122
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %152

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %121
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %146, %91, %47, %34
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e_info(i32, i8*, i32) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
