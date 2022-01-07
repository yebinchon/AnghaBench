; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64, i64, i32 }
%struct.ks8695_priv = type { i32, i64 }

@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@XCVR_INTERNAL = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@KS8695_WMC = common dso_local global i64 0, align 8
@WMC_WAND = common dso_local global i32 0, align 4
@WMC_WANA100F = common dso_local global i32 0, align 4
@WMC_WANA100H = common dso_local global i32 0, align 4
@WMC_WANA10F = common dso_local global i32 0, align 4
@WMC_WANA10H = common dso_local global i32 0, align 4
@WMC_WANR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WMC_WANF100 = common dso_local global i32 0, align 4
@WMC_WANFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ks8695_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
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
  %10 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SPEED_10, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPEED_100, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %233

24:                                               ; preds = %15, %2
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DUPLEX_HALF, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DUPLEX_FULL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %233

39:                                               ; preds = %30, %24
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PORT_MII, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %233

48:                                               ; preds = %39
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XCVR_INTERNAL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %233

57:                                               ; preds = %48
  %58 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AUTONEG_DISABLE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AUTONEG_ENABLE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %233

72:                                               ; preds = %63, %57
  %73 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AUTONEG_ENABLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %178

78:                                               ; preds = %72
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %83 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %81, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %233

94:                                               ; preds = %78
  %95 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %96 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %177 [
    i32 130, label %98
    i32 128, label %101
    i32 129, label %174
  ]

98:                                               ; preds = %94
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %233

101:                                              ; preds = %94
  %102 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %103 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @KS8695_WMC, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl(i64 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @WMC_WAND, align 4
  %109 = load i32, i32* @WMC_WANA100F, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @WMC_WANA100H, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @WMC_WANA10F, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @WMC_WANA10H, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %101
  %127 = load i32, i32* @WMC_WANA100F, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %101
  %131 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @WMC_WANA100H, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %143 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32, i32* @WMC_WANA10F, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %141
  %153 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %154 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @WMC_WANA10H, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %159, %152
  %164 = load i32, i32* @WMC_WANR, align 4
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %169 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @KS8695_WMC, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  br label %177

174:                                              ; preds = %94
  %175 = load i32, i32* @EOPNOTSUPP, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %233

177:                                              ; preds = %94, %163
  br label %232

178:                                              ; preds = %72
  %179 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %180 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %231 [
    i32 130, label %182
    i32 128, label %185
    i32 129, label %228
  ]

182:                                              ; preds = %178
  %183 = load i32, i32* @EOPNOTSUPP, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %233

185:                                              ; preds = %178
  %186 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %187 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @KS8695_WMC, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @readl(i64 %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* @WMC_WAND, align 4
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* @WMC_WANF100, align 4
  %196 = load i32, i32* @WMC_WANFF, align 4
  %197 = or i32 %195, %196
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %7, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %202 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SPEED_100, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %185
  %207 = load i32, i32* @WMC_WANF100, align 4
  %208 = load i32, i32* %7, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %206, %185
  %211 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %212 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @DUPLEX_FULL, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i32, i32* @WMC_WANFF, align 4
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %216, %210
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.ks8695_priv*, %struct.ks8695_priv** %6, align 8
  %223 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @KS8695_WMC, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @writel(i32 %221, i64 %226)
  br label %231

228:                                              ; preds = %178
  %229 = load i32, i32* @EOPNOTSUPP, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %3, align 4
  br label %233

231:                                              ; preds = %178, %220
  br label %232

232:                                              ; preds = %231, %177
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %228, %182, %174, %98, %91, %69, %54, %45, %36, %21
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
