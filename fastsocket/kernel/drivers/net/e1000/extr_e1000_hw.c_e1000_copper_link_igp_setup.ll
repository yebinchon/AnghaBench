; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_igp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_igp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64, i32, i32, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_copper_link_igp_setup\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@e1000_phy_igp = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Error Disabling LPLU D3\0A\00", align 1
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@e1000_dsp_config_disabled = common dso_local global i64 0, align 8
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@e1000_dsp_config_enabled = common dso_local global i8* null, align 8
@e1000_ffe_config_active = common dso_local global i64 0, align 8
@e1000_ffe_config_enabled = common dso_local global i64 0, align 8
@e1000_dsp_config_activated = common dso_local global i64 0, align 8
@ADVERTISE_1000_FULL = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@CR_1000T_MS_ENABLE = common dso_local global i32 0, align 4
@CR_1000T_MS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_igp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_igp_setup(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %2, align 8
  br label %256

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = call i64 @e1000_phy_reset(%struct.e1000_hw* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %256

23:                                               ; preds = %15
  %24 = call i32 @msleep(i32 15)
  %25 = load i32, i32* @LEDCTL, align 4
  %26 = call i32 @er32(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %31 = load i32, i32* @IGP_LED3_MODE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @LEDCTL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ew32(i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_phy_igp, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %23
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = call i64 @e1000_set_d3_lplu_state(%struct.e1000_hw* %44, i32 0)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %2, align 8
  br label %256

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %55 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %53, i32 %54, i32* %6)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %2, align 8
  br label %256

60:                                               ; preds = %52
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @e1000_82541, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @e1000_82547, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66, %60
  %73 = load i64, i64* @e1000_dsp_config_disabled, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %77 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 3
  store i32 1, i32* %83, align 8
  br label %111

84:                                               ; preds = %66
  %85 = load i8*, i8** @e1000_dsp_config_enabled, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %106 [
    i32 1, label %96
    i32 2, label %101
    i32 0, label %105
  ]

96:                                               ; preds = %84
  %97 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %110

101:                                              ; preds = %84
  %102 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %110

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %84, %105
  %107 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %101, %96
  br label %111

111:                                              ; preds = %110, %72
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %112, i32 %113, i32 %114)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i64, i64* %5, align 8
  store i64 %119, i64* %2, align 8
  br label %256

120:                                              ; preds = %111
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %254

125:                                              ; preds = %120
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @e1000_ffe_config_active, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %125
  %135 = load i64, i64* @e1000_ffe_config_enabled, align 8
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %137 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %136, i32 0, i32 5
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %125
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @e1000_dsp_config_activated, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i8*, i8** @e1000_dsp_config_enabled, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %148 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %144, %138
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %151 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ADVERTISE_1000_FULL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %198

155:                                              ; preds = %149
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %158 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %156, i32 %157, i32* %6)
  store i64 %158, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i64, i64* %5, align 8
  store i64 %162, i64* %2, align 8
  br label %256

163:                                              ; preds = %155
  %164 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %6, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %6, align 4
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %169 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %168, i32 %169, i32 %170)
  store i64 %171, i64* %5, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i64, i64* %5, align 8
  store i64 %175, i64* %2, align 8
  br label %256

176:                                              ; preds = %163
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = load i32, i32* @PHY_1000T_CTRL, align 4
  %179 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %177, i32 %178, i32* %6)
  store i64 %179, i64* %5, align 8
  %180 = load i64, i64* %5, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i64, i64* %5, align 8
  store i64 %183, i64* %2, align 8
  br label %256

184:                                              ; preds = %176
  %185 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %6, align 4
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %190 = load i32, i32* @PHY_1000T_CTRL, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %189, i32 %190, i32 %191)
  store i64 %192, i64* %5, align 8
  %193 = load i64, i64* %5, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i64, i64* %5, align 8
  store i64 %196, i64* %2, align 8
  br label %256

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %149
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = load i32, i32* @PHY_1000T_CTRL, align 4
  %201 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %199, i32 %200, i32* %6)
  store i64 %201, i64* %5, align 8
  %202 = load i64, i64* %5, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i64, i64* %5, align 8
  store i64 %205, i64* %2, align 8
  br label %256

206:                                              ; preds = %198
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 129, i32 128
  br label %219

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %211
  %220 = phi i32 [ %217, %211 ], [ 130, %218 ]
  %221 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %222 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %7, align 4
  switch i32 %223, label %243 [
    i32 129, label %224
    i32 128, label %230
    i32 130, label %238
  ]

224:                                              ; preds = %219
  %225 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %226 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %6, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %6, align 4
  br label %244

230:                                              ; preds = %219
  %231 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %232 = load i32, i32* %6, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* @CR_1000T_MS_VALUE, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %6, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %6, align 4
  br label %244

238:                                              ; preds = %219
  %239 = load i32, i32* @CR_1000T_MS_ENABLE, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %6, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %219, %238
  br label %244

244:                                              ; preds = %243, %230, %224
  %245 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %246 = load i32, i32* @PHY_1000T_CTRL, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %245, i32 %246, i32 %247)
  store i64 %248, i64* %5, align 8
  %249 = load i64, i64* %5, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = load i64, i64* %5, align 8
  store i64 %252, i64* %2, align 8
  br label %256

253:                                              ; preds = %244
  br label %254

254:                                              ; preds = %253, %120
  %255 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %255, i64* %2, align 8
  br label %256

256:                                              ; preds = %254, %251, %204, %195, %182, %174, %161, %118, %58, %48, %20, %13
  %257 = load i64, i64* %2, align 8
  ret i64 %257
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_phy_reset(%struct.e1000_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_set_d3_lplu_state(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
