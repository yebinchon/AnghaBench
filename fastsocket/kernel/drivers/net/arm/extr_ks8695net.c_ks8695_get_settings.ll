; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.ks8695_priv = type { i32, i64 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@PORT_MII = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@KS8695_WMC = common dso_local global i64 0, align 8
@WMC_WAND = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@WMC_WANA100F = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@WMC_WANA100H = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@WMC_WANA10F = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@WMC_WANA10H = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@WMC_WANAP = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i8* null, align 8
@WMC_WSS = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@WMC_WDS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@WMC_WANF100 = common dso_local global i32 0, align 4
@WMC_WANFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ks8695_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.ks8695_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ks8695_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ks8695_priv* %9, %struct.ks8695_priv** %6, align 8
  %10 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %11 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SUPPORTED_TP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUPPORTED_MII, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @XCVR_INTERNAL, align 4
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %27 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %185 [
    i32 130, label %29
    i32 128, label %37
    i32 129, label %182
  ]

29:                                               ; preds = %2
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 5
  store i32 0, i32* %31, align 8
  %32 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %186

37:                                               ; preds = %2
  %38 = load i32, i32* @ADVERTISED_TP, align 4
  %39 = load i32, i32* @ADVERTISED_MII, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @PORT_MII, align 4
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %47 = load i32, i32* @SUPPORTED_Pause, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 5
  store i32 0, i32* %54, align 8
  %55 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KS8695_WMC, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @WMC_WAND, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %153

65:                                               ; preds = %37
  %66 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @WMC_WANA100F, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %65
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @WMC_WANA100H, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %88 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @WMC_WANA10F, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %99 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @WMC_WANA10H, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %110 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @WMC_WANAP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @ADVERTISED_Pause, align 4
  %121 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i8*, i8** @AUTONEG_ENABLE, align 8
  %127 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %128 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @WMC_WSS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i8*, i8** @SPEED_100, align 8
  br label %137

135:                                              ; preds = %125
  %136 = load i8*, i8** @SPEED_10, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i8* [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @WMC_WDS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %149

147:                                              ; preds = %137
  %148 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i8* [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %152 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %181

153:                                              ; preds = %37
  %154 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %155 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %156 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @WMC_WANF100, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i8*, i8** @SPEED_100, align 8
  br label %165

163:                                              ; preds = %153
  %164 = load i8*, i8** @SPEED_10, align 8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i8* [ %162, %161 ], [ %164, %163 ]
  %167 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %168 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @WMC_WANFF, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %177

175:                                              ; preds = %165
  %176 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i8* [ %174, %173 ], [ %176, %175 ]
  %179 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %180 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %179, i32 0, i32 2
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %177, %149
  br label %185

182:                                              ; preds = %2
  %183 = load i32, i32* @EOPNOTSUPP, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %186

185:                                              ; preds = %2, %181
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %182, %29
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
