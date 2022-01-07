; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i32, i32, %struct.TYPE_2__*, %struct.bnx2x* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, %struct.link_params*, i64)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"bnx2x_set_led: port %x, mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"speed 0x%x, hw_led_mode 0x%x\0A\00", align 1
@EXT_PHY1 = common dso_local global i64 0, align 8
@MAX_PHYS = common dso_local global i64 0, align 8
@NIG_REG_LED_10G_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_MODE_P0 = common dso_local global i64 0, align 8
@SHARED_HW_CFG_LED_MAC1 = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_LED = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE = common dso_local global i32 0, align 4
@EMAC_LED_1000MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_100MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_10MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_OVERRIDE = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727 = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_CONTROL_BLINK_RATE_P0 = common dso_local global i64 0, align 8
@LED_BLINK_RATE_VAL_E3 = common dso_local global i32 0, align 4
@LED_BLINK_RATE_VAL_E1X_E2 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0 = common dso_local global i64 0, align 8
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_TRAFFIC_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"bnx2x_set_led: Invalid led mode %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_led(%struct.link_params* %0, %struct.link_vars* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %6, align 8
  store %struct.link_vars* %1, %struct.link_vars** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.link_params*, %struct.link_params** %6, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.link_params*, %struct.link_params** %6, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %15, align 4
  %31 = load %struct.link_params*, %struct.link_params** %6, align 8
  %32 = getelementptr inbounds %struct.link_params, %struct.link_params* %31, i32 0, i32 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %32, align 8
  store %struct.bnx2x* %33, %struct.bnx2x** %16, align 8
  %34 = load i32, i32* @NETIF_MSG_LINK, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (i32, i8*, i64, ...) @DP(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i32, i32* @NETIF_MSG_LINK, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i8*, i64, ...) @DP(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %41)
  %43 = load i64, i64* @EXT_PHY1, align 8
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %74, %29
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @MAX_PHYS, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load %struct.link_params*, %struct.link_params** %6, align 8
  %50 = getelementptr inbounds %struct.link_params, %struct.link_params* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.TYPE_2__*, %struct.link_params*, i64)*, i32 (%struct.TYPE_2__*, %struct.link_params*, i64)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_2__*, %struct.link_params*, i64)* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load %struct.link_params*, %struct.link_params** %6, align 8
  %59 = getelementptr inbounds %struct.link_params, %struct.link_params* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_2__*, %struct.link_params*, i64)*, i32 (%struct.TYPE_2__*, %struct.link_params*, i64)** %63, align 8
  %65 = load %struct.link_params*, %struct.link_params** %6, align 8
  %66 = getelementptr inbounds %struct.link_params, %struct.link_params* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = load %struct.link_params*, %struct.link_params** %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 %64(%struct.TYPE_2__* %69, %struct.link_params* %70, i64 %71)
  br label %73

73:                                               ; preds = %57, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %44

77:                                               ; preds = %44
  %78 = load i64, i64* %8, align 8
  switch i64 %78, label %366 [
    i64 131, label %79
    i64 130, label %79
    i64 128, label %123
    i64 129, label %130
  ]

79:                                               ; preds = %77, %77
  %80 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %81 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %82 = load i64, i64* %10, align 8
  %83 = mul i64 %82, 4
  %84 = add i64 %81, %83
  %85 = call i32 @REG_WR(%struct.bnx2x* %80, i64 %84, i32 0)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %87 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %88 = load i64, i64* %10, align 8
  %89 = mul i64 %88, 4
  %90 = add i64 %87, %89
  %91 = load i32, i32* @SHARED_HW_CFG_LED_MAC1, align 4
  %92 = call i32 @REG_WR(%struct.bnx2x* %86, i64 %90, i32 %91)
  %93 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %94 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %95 = call i32 @EMAC_RD(%struct.bnx2x* %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.link_params*, %struct.link_params** %6, align 8
  %97 = getelementptr inbounds %struct.link_params, %struct.link_params* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64, i64* @EXT_PHY1, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %79
  %106 = load i32, i32* @EMAC_LED_1000MB_OVERRIDE, align 4
  %107 = load i32, i32* @EMAC_LED_100MB_OVERRIDE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @EMAC_LED_10MB_OVERRIDE, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %118

114:                                              ; preds = %79
  %115 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %116 = load i32, i32* %14, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %114, %105
  %119 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %120 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @EMAC_WR(%struct.bnx2x* %119, i32 %120, i32 %121)
  br label %372

123:                                              ; preds = %77
  %124 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %125 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  br label %372

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %77, %129
  %131 = load %struct.link_params*, %struct.link_params** %6, align 8
  %132 = getelementptr inbounds %struct.link_params, %struct.link_params* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i64, i64* @EXT_PHY1, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %150, label %140

140:                                              ; preds = %130
  %141 = load %struct.link_params*, %struct.link_params** %6, align 8
  %142 = getelementptr inbounds %struct.link_params, %struct.link_params* %141, i32 0, i32 3
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i64, i64* @EXT_PHY1, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %194

150:                                              ; preds = %140, %130
  %151 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %152 = call i32 @CHIP_IS_E2(%struct.bnx2x* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %194

154:                                              ; preds = %150
  %155 = load %struct.link_params*, %struct.link_params** %6, align 8
  %156 = getelementptr inbounds %struct.link_params, %struct.link_params* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %194

159:                                              ; preds = %154
  %160 = load i64, i64* %8, align 8
  %161 = icmp eq i64 %160, 129
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @SPEED_10000, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %193

166:                                              ; preds = %162, %159
  %167 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %168 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %169 = load i64, i64* %10, align 8
  %170 = mul i64 %169, 4
  %171 = add i64 %168, %170
  %172 = call i32 @REG_WR(%struct.bnx2x* %167, i64 %171, i32 0)
  %173 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %174 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %175 = load i64, i64* %10, align 8
  %176 = mul i64 %175, 4
  %177 = add i64 %174, %176
  %178 = call i32 @REG_WR(%struct.bnx2x* %173, i64 %177, i32 1)
  %179 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %180 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %181 = call i32 @EMAC_RD(%struct.bnx2x* %179, i32 %180)
  store i32 %181, i32* %14, align 4
  %182 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %183 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @EMAC_WR(%struct.bnx2x* %182, i32 %183, i32 %186)
  %188 = load i64, i64* %8, align 8
  %189 = icmp eq i64 %188, 129
  br i1 %189, label %190, label %192

190:                                              ; preds = %166
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %5, align 4
  br label %374

192:                                              ; preds = %166
  br label %193

193:                                              ; preds = %192, %162
  br label %284

194:                                              ; preds = %154, %150, %140
  %195 = load %struct.link_params*, %struct.link_params** %6, align 8
  %196 = call i32 @SINGLE_MEDIA_DIRECT(%struct.link_params* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %194
  %199 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %200 = call i32 @CHIP_IS_E3(%struct.bnx2x* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %204 = call i32 @CHIP_IS_E3(%struct.bnx2x* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load i64, i64* %8, align 8
  %208 = icmp eq i64 %207, 129
  br i1 %208, label %209, label %216

209:                                              ; preds = %206, %198
  %210 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %211 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %212 = load i64, i64* %10, align 8
  %213 = mul i64 %212, 4
  %214 = add i64 %211, %213
  %215 = call i32 @REG_WR(%struct.bnx2x* %210, i64 %214, i32 1)
  br label %216

216:                                              ; preds = %209, %206, %202
  %217 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %218 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %216
  %221 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %222 = call i32 @CHIP_IS_E2(%struct.bnx2x* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %8, align 8
  %226 = icmp eq i64 %225, 129
  br i1 %226, label %227, label %234

227:                                              ; preds = %224, %220, %216
  %228 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %229 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %230 = load i64, i64* %10, align 8
  %231 = mul i64 %230, 4
  %232 = add i64 %229, %231
  %233 = call i32 @REG_WR(%struct.bnx2x* %228, i64 %232, i32 0)
  br label %242

234:                                              ; preds = %224
  %235 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %236 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %237 = load i64, i64* %10, align 8
  %238 = mul i64 %237, 4
  %239 = add i64 %236, %238
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @REG_WR(%struct.bnx2x* %235, i64 %239, i32 %240)
  br label %242

242:                                              ; preds = %234, %227
  br label %283

243:                                              ; preds = %194
  %244 = load %struct.link_params*, %struct.link_params** %6, align 8
  %245 = getelementptr inbounds %struct.link_params, %struct.link_params* %244, i32 0, i32 3
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i64, i64* @EXT_PHY1, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %274

253:                                              ; preds = %243
  %254 = load i64, i64* %8, align 8
  %255 = icmp eq i64 %254, 129
  br i1 %255, label %256, label %274

256:                                              ; preds = %253
  %257 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %258 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %259 = load i64, i64* %10, align 8
  %260 = mul i64 %259, 4
  %261 = add i64 %258, %260
  %262 = call i32 @REG_WR(%struct.bnx2x* %257, i64 %261, i32 0)
  %263 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %264 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %265 = call i32 @EMAC_RD(%struct.bnx2x* %263, i32 %264)
  store i32 %265, i32* %14, align 4
  %266 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %267 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @EMAC_LED_1000MB_OVERRIDE, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @EMAC_WR(%struct.bnx2x* %266, i32 %267, i32 %272)
  br label %372

274:                                              ; preds = %253, %243
  %275 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %276 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %277 = load i64, i64* %10, align 8
  %278 = mul i64 %277, 4
  %279 = add i64 %276, %278
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @REG_WR(%struct.bnx2x* %275, i64 %279, i32 %280)
  br label %282

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282, %242
  br label %284

284:                                              ; preds = %283, %193
  %285 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %286 = load i64, i64* @NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0, align 8
  %287 = load i64, i64* %10, align 8
  %288 = mul i64 %287, 4
  %289 = add i64 %286, %288
  %290 = call i32 @REG_WR(%struct.bnx2x* %285, i64 %289, i32 0)
  %291 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %292 = call i32 @CHIP_IS_E3(%struct.bnx2x* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %284
  %295 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %296 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_P0, align 8
  %297 = load i64, i64* %10, align 8
  %298 = mul i64 %297, 4
  %299 = add i64 %296, %298
  %300 = load i32, i32* @LED_BLINK_RATE_VAL_E3, align 4
  %301 = call i32 @REG_WR(%struct.bnx2x* %295, i64 %299, i32 %300)
  br label %310

302:                                              ; preds = %284
  %303 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %304 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_P0, align 8
  %305 = load i64, i64* %10, align 8
  %306 = mul i64 %305, 4
  %307 = add i64 %304, %306
  %308 = load i32, i32* @LED_BLINK_RATE_VAL_E1X_E2, align 4
  %309 = call i32 @REG_WR(%struct.bnx2x* %303, i64 %307, i32 %308)
  br label %310

310:                                              ; preds = %302, %294
  %311 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %312 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0, align 8
  %313 = load i64, i64* %10, align 8
  %314 = mul i64 %313, 4
  %315 = add i64 %312, %314
  %316 = call i32 @REG_WR(%struct.bnx2x* %311, i64 %315, i32 1)
  %317 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %318 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %319 = call i32 @EMAC_RD(%struct.bnx2x* %317, i32 %318)
  store i32 %319, i32* %14, align 4
  %320 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %321 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %322 = load i32, i32* %14, align 4
  %323 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %324 = xor i32 %323, -1
  %325 = and i32 %322, %324
  %326 = call i32 @EMAC_WR(%struct.bnx2x* %320, i32 %321, i32 %325)
  %327 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %328 = call i32 @CHIP_IS_E1(%struct.bnx2x* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %365

330:                                              ; preds = %310
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @SPEED_2500, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %346, label %334

334:                                              ; preds = %330
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* @SPEED_1000, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %346, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* @SPEED_100, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %346, label %342

342:                                              ; preds = %338
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* @SPEED_10, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %365

346:                                              ; preds = %342, %338, %334, %330
  %347 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %348 = load i64, i64* @NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0, align 8
  %349 = load i64, i64* %10, align 8
  %350 = mul i64 %349, 4
  %351 = add i64 %348, %350
  %352 = call i32 @REG_WR(%struct.bnx2x* %347, i64 %351, i32 1)
  %353 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %354 = load i64, i64* @NIG_REG_LED_CONTROL_TRAFFIC_P0, align 8
  %355 = load i64, i64* %10, align 8
  %356 = mul i64 %355, 4
  %357 = add i64 %354, %356
  %358 = call i32 @REG_WR(%struct.bnx2x* %353, i64 %357, i32 0)
  %359 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  %360 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0, align 8
  %361 = load i64, i64* %10, align 8
  %362 = mul i64 %361, 4
  %363 = add i64 %360, %362
  %364 = call i32 @REG_WR(%struct.bnx2x* %359, i64 %363, i32 1)
  br label %365

365:                                              ; preds = %346, %342, %310
  br label %372

366:                                              ; preds = %77
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %12, align 4
  %369 = load i32, i32* @NETIF_MSG_LINK, align 4
  %370 = load i64, i64* %8, align 8
  %371 = call i32 (i32, i8*, i64, ...) @DP(i32 %369, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %370)
  br label %372

372:                                              ; preds = %366, %365, %256, %128, %118
  %373 = load i32, i32* %12, align 4
  store i32 %373, i32* %5, align 4
  br label %374

374:                                              ; preds = %372, %190
  %375 = load i32, i32* %5, align 4
  ret i32 %375
}

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @EMAC_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @EMAC_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
