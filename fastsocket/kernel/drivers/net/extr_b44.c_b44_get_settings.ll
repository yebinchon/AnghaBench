; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i64 }
%struct.b44 = type { i32, i32 }

@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@B44_FLAG_INTERNAL_PHY = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @b44_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.b44* @netdev_priv(%struct.net_device* %6)
  store %struct.b44* %7, %struct.b44** %5, align 8
  %8 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %12 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_MII, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.b44*, %struct.b44** %5, align 8
  %27 = getelementptr inbounds %struct.b44, %struct.b44* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.b44*, %struct.b44** %5, align 8
  %40 = getelementptr inbounds %struct.b44, %struct.b44* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %47 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.b44*, %struct.b44** %5, align 8
  %53 = getelementptr inbounds %struct.b44, %struct.b44* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %60 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %51
  %65 = load %struct.b44*, %struct.b44** %5, align 8
  %66 = getelementptr inbounds %struct.b44, %struct.b44* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %73 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* @ADVERTISED_Pause, align 4
  %79 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.b44*, %struct.b44** %5, align 8
  %86 = getelementptr inbounds %struct.b44, %struct.b44* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i64, i64* @SPEED_100, align 8
  br label %95

93:                                               ; preds = %77
  %94 = load i64, i64* @SPEED_10, align 8
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i64 [ %92, %91 ], [ %94, %93 ]
  %97 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  %99 = load %struct.b44*, %struct.b44** %5, align 8
  %100 = getelementptr inbounds %struct.b44, %struct.b44* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @DUPLEX_FULL, align 4
  br label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @DUPLEX_HALF, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %113, i32 0, i32 9
  store i64 0, i64* %114, align 8
  %115 = load %struct.b44*, %struct.b44** %5, align 8
  %116 = getelementptr inbounds %struct.b44, %struct.b44* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %119 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  %120 = load %struct.b44*, %struct.b44** %5, align 8
  %121 = getelementptr inbounds %struct.b44, %struct.b44* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @B44_FLAG_INTERNAL_PHY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %109
  %127 = load i32, i32* @XCVR_INTERNAL, align 4
  br label %130

128:                                              ; preds = %109
  %129 = load i32, i32* @XCVR_EXTERNAL, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %133 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 8
  %134 = load %struct.b44*, %struct.b44** %5, align 8
  %135 = getelementptr inbounds %struct.b44, %struct.b44* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i64, i64* @AUTONEG_DISABLE, align 8
  br label %144

142:                                              ; preds = %130
  %143 = load i64, i64* @AUTONEG_ENABLE, align 8
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i64 [ %141, %140 ], [ %143, %142 ]
  %146 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %147 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %146, i32 0, i32 3
  store i64 %145, i64* %147, align 8
  %148 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %149 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AUTONEG_ENABLE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %155 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %156 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %144
  %160 = load %struct.net_device*, %struct.net_device** %3, align 8
  %161 = call i32 @netif_running(%struct.net_device* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %165 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %164, i32 0, i32 6
  store i64 0, i64* %165, align 8
  %166 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %167 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %166, i32 0, i32 2
  store i32 255, i32* %167, align 8
  br label %168

168:                                              ; preds = %163, %159
  %169 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %169, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %172 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %171, i32 0, i32 4
  store i64 0, i64* %172, align 8
  ret i32 0
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
