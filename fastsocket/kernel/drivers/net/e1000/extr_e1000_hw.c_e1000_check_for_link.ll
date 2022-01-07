; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_for_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_check_for_link\00", align 1
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@RXCW = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@e1000_10_full = common dso_local global i64 0, align 8
@e1000_10_half = common dso_local global i64 0, align 8
@IMC = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@E1000_ICS_LSC = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@e1000_ce4100 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error configuring MAC to PHY settings\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@SPEED_1000 = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_for_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @CTRL, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @STATUS, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_media_type_fiber, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24, %1
  %31 = load i32, i32* @RXCW, align 4
  %32 = call i32 @er32(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_media_type_fiber, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @e1000_82544, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @E1000_STATUS_LU, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %30
  br label %58

58:                                               ; preds = %57, %24
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @e1000_media_type_copper, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %239

64:                                               ; preds = %58
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %239

69:                                               ; preds = %64
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* @PHY_STATUS, align 4
  %72 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %70, i32 %71, i32* %11)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %2, align 8
  br label %256

77:                                               ; preds = %69
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = load i32, i32* @PHY_STATUS, align 4
  %80 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %78, i32 %79, i32* %11)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %2, align 8
  br label %256

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %85
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = call i32 @e1000_check_downshift(%struct.e1000_hw* %93)
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @e1000_82544, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %90
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @e1000_82543, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %100, %90
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %139, label %111

111:                                              ; preds = %106
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @e1000_10_full, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @e1000_10_half, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @IMC, align 4
  %125 = call i32 @ew32(i32 %124, i32 -1)
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = call i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw* %126)
  store i64 %127, i64* %10, align 8
  %128 = load i32, i32* @ICR, align 4
  %129 = call i32 @er32(i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @ICS, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @E1000_ICS_LSC, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = call i32 @ew32(i32 %130, i32 %134)
  %136 = load i32, i32* @IMS, align 4
  %137 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %138 = call i32 @ew32(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %123, %117, %106, %100
  br label %143

140:                                              ; preds = %85
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = call i32 @e1000_config_dsp_after_link_change(%struct.e1000_hw* %141, i32 0)
  store i64 0, i64* %2, align 8
  br label %256

143:                                              ; preds = %139
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %150 = sub nsw i64 0, %149
  store i64 %150, i64* %2, align 8
  br label %256

151:                                              ; preds = %143
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %153 = call i32 @e1000_config_dsp_after_link_change(%struct.e1000_hw* %152, i32 1)
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @e1000_82544, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @e1000_ce4100, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %167 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %166)
  br label %177

168:                                              ; preds = %159, %151
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %170 = call i64 @e1000_config_mac_to_phy(%struct.e1000_hw* %169)
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* %10, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i64, i64* %10, align 8
  store i64 %175, i64* %2, align 8
  br label %256

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %165
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %179 = call i64 @e1000_config_fc_after_link_up(%struct.e1000_hw* %178)
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %184 = load i64, i64* %10, align 8
  store i64 %184, i64* %2, align 8
  br label %256

185:                                              ; preds = %177
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %187 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %186, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %238

190:                                              ; preds = %185
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %192 = call i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %191, i32* %12, i32* %13)
  store i64 %192, i64* %10, align 8
  %193 = load i64, i64* %10, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i64, i64* %10, align 8
  store i64 %197, i64* %2, align 8
  br label %256

198:                                              ; preds = %190
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @SPEED_1000, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %198
  %203 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %204 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load i32, i32* @RCTL, align 4
  %209 = call i32 @er32(i32 %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* @E1000_RCTL_SBP, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %7, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* @RCTL, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @ew32(i32 %214, i32 %215)
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %218 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %217, i32 0, i32 4
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %207, %202
  br label %237

220:                                              ; preds = %198
  %221 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %222 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %220
  %226 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %227 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %226, i32 0, i32 4
  store i32 1, i32* %227, align 8
  %228 = load i32, i32* @RCTL, align 4
  %229 = call i32 @er32(i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* @E1000_RCTL_SBP, align 4
  %231 = load i32, i32* %7, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* @RCTL, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @ew32(i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %225, %220
  br label %237

237:                                              ; preds = %236, %219
  br label %238

238:                                              ; preds = %237, %185
  br label %239

239:                                              ; preds = %238, %64, %58
  %240 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %241 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @e1000_media_type_fiber, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %251, label %245

245:                                              ; preds = %239
  %246 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %247 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245, %239
  %252 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %253 = call i32 @e1000_check_for_serdes_link_generic(%struct.e1000_hw* %252)
  br label %254

254:                                              ; preds = %251, %245
  %255 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %255, i64* %2, align 8
  br label %256

256:                                              ; preds = %254, %195, %182, %173, %148, %140, %83, %75
  %257 = load i64, i64* %2, align 8
  ret i64 %257
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_check_downshift(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_polarity_reversal_workaround(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_config_dsp_after_link_change(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_config_mac_to_phy(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i32*, i32*) #1

declare dso_local i32 @e1000_check_for_serdes_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
