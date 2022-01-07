; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_spur_mitigate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_spur_mitigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i32, i32)* }
%struct.ath9k_channel = type { i32 }

@AR_NO_SPUR = common dso_local global i32 0, align 4
@ar5008_hw_spur_mitigate.pilot_mask_reg = internal global [4 x i32] [i32 130, i32 129, i32 133, i32 132], align 16
@ar5008_hw_spur_mitigate.chan_mask_reg = internal global [4 x i32] [i32 128, i32 131, i32 135, i32 134], align 16
@ar5008_hw_spur_mitigate.inc = internal global [4 x i32] [i32 0, i32 100, i32 0, i32 0], align 16
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_CNTL = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_MASK_PPM = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_MASK_RATE_SELECT = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI = common dso_local global i32 0, align 4
@SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG_SPUR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SPUR_REG = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_DELTA_PHASE = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_USE_SPUR_IN_AGC = common dso_local global i32 0, align 4
@AR_PHY_TIMING11_SPUR_FREQ_SD = common dso_local global i32 0, align 4
@AR_PHY_TIMING11 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_1 = common dso_local global i32 0, align 4
@AR_PHY_VIT_MASK2_M_46_61 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_2 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_31_45 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_3 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_16_30 = common dso_local global i32 0, align 4
@AR_PHY_MASK_CTL = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_00_15 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_1 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_15_01 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_2 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_30_16 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_3 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_45_31 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_4 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_61_45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_spur_mitigate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_spur_mitigate(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [123 x i32], align 16
  %18 = alloca [123 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %27 = load i32, i32* @AR_NO_SPUR, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %29 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %28)
  store i32 %29, i32* %22, align 4
  %30 = bitcast [123 x i32]* %17 to i32**
  %31 = call i32 @memset(i32** %30, i32 0, i32 492)
  %32 = bitcast [123 x i32]* %18 to i32**
  %33 = call i32 @memset(i32** %32, i32 0, i32 492)
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %67, %2
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ath_hw*, i32, i32)*, i32 (%struct.ath_hw*, i32, i32)** %42, align 8
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %22, align 4
  %47 = call i32 %43(%struct.ath_hw* %44, i32 %45, i32 %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* @AR_NO_SPUR, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %70

52:                                               ; preds = %38
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %55 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 10
  %58 = sub nsw i32 %53, %57
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = icmp sgt i32 %59, -95
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* %21, align 4
  %63 = icmp slt i32 %62, 95
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %21, align 4
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %61, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %34

70:                                               ; preds = %64, %51, %34
  %71 = load i32, i32* @AR_NO_SPUR, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %796

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %76, 32
  store i32 %77, i32* %6, align 4
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %80 = call i32 @REG_READ(%struct.ath_hw* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI, align 4
  %83 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK, align 4
  %88 = or i32 %86, %87
  %89 = or i32 %81, %88
  store i32 %89, i32* %15, align 4
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @REG_WRITE(%struct.ath_hw* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %95 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_SELECT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @SPUR_RSSI_THRESH, align 4
  %102 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %103 = call i32 @SM(i32 %101, i32 %102)
  %104 = or i32 %100, %103
  store i32 %104, i32* %15, align 4
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @REG_WRITE(%struct.ath_hw* %105, i32 %106, i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = mul nsw i32 %109, 524288
  %111 = sdiv i32 %110, 100
  %112 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %9, align 4
  %114 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %115 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %114)
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 440, i32 400
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %5, align 4
  %120 = mul nsw i32 %119, 2048
  %121 = load i32, i32* %10, align 4
  %122 = sdiv i32 %120, %121
  %123 = and i32 %122, 1023
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_IN_AGC, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %127 = call i32 @SM(i32 %125, i32 %126)
  %128 = or i32 %124, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %131 = call i32 @SM(i32 %129, i32 %130)
  %132 = or i32 %128, %131
  store i32 %132, i32* %15, align 4
  %133 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %134 = load i32, i32* @AR_PHY_TIMING11, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @REG_WRITE(%struct.ath_hw* %133, i32 %134, i32 %135)
  store i32 -6000, i32* %7, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 100
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 100
  store i32 %140, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %192, %75
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %195

144:                                              ; preds = %141
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %25, align 4
  br label %145

145:                                              ; preds = %168, %144
  %146 = load i32, i32* %25, align 4
  %147 = icmp slt i32 %146, 30
  br i1 %147, label %148, label %171

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %25, align 4
  %159 = shl i32 1, %158
  %160 = or i32 %157, %159
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %25, align 4
  %163 = shl i32 1, %162
  %164 = or i32 %161, %163
  store i32 %164, i32* %24, align 4
  br label %165

165:                                              ; preds = %156, %152, %148
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 100
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %25, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %25, align 4
  br label %145

171:                                              ; preds = %145
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5008_hw_spur_mitigate.inc, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %7, align 4
  %178 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5008_hw_spur_mitigate.pilot_mask_reg, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %23, align 4
  %184 = call i32 @REG_WRITE(%struct.ath_hw* %178, i32 %182, i32 %183)
  %185 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5008_hw_spur_mitigate.chan_mask_reg, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %24, align 4
  %191 = call i32 @REG_WRITE(%struct.ath_hw* %185, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %171
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %16, align 4
  br label %141

195:                                              ; preds = %141
  store i32 6100, i32* %13, align 4
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 120
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sub nsw i32 %198, 120
  store i32 %199, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %200

200:                                              ; preds = %240, %195
  %201 = load i32, i32* %16, align 4
  %202 = icmp slt i32 %201, 123
  br i1 %202, label %203, label %243

203:                                              ; preds = %200
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %237

207:                                              ; preds = %203
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %237

211:                                              ; preds = %207
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %6, align 4
  %214 = sub nsw i32 %212, %213
  %215 = call i64 @abs(i32 %214)
  %216 = trunc i64 %215 to i32
  store volatile i32 %216, i32* %26, align 4
  %217 = load volatile i32, i32* %26, align 4
  %218 = icmp slt i32 %217, 75
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  store i32 1, i32* %19, align 4
  br label %221

220:                                              ; preds = %211
  store i32 0, i32* %19, align 4
  br label %221

221:                                              ; preds = %220, %219
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %13, align 4
  %227 = sdiv i32 %226, 100
  %228 = call i64 @abs(i32 %227)
  %229 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 %228
  store i32 %225, i32* %229, align 4
  br label %236

230:                                              ; preds = %221
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %13, align 4
  %233 = sdiv i32 %232, 100
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 %234
  store i32 %231, i32* %235, align 4
  br label %236

236:                                              ; preds = %230, %224
  br label %237

237:                                              ; preds = %236, %207, %203
  %238 = load i32, i32* %13, align 4
  %239 = sub nsw i32 %238, 100
  store i32 %239, i32* %13, align 4
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  br label %200

243:                                              ; preds = %200
  %244 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 46
  %245 = load i32, i32* %244, align 8
  %246 = shl i32 %245, 30
  %247 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 47
  %248 = load i32, i32* %247, align 4
  %249 = shl i32 %248, 28
  %250 = or i32 %246, %249
  %251 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 48
  %252 = load i32, i32* %251, align 16
  %253 = shl i32 %252, 26
  %254 = or i32 %250, %253
  %255 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 49
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 24
  %258 = or i32 %254, %257
  %259 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 50
  %260 = load i32, i32* %259, align 8
  %261 = shl i32 %260, 22
  %262 = or i32 %258, %261
  %263 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 51
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 20
  %266 = or i32 %262, %265
  %267 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 52
  %268 = load i32, i32* %267, align 16
  %269 = shl i32 %268, 18
  %270 = or i32 %266, %269
  %271 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 53
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 16
  %274 = or i32 %270, %273
  %275 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 54
  %276 = load i32, i32* %275, align 8
  %277 = shl i32 %276, 14
  %278 = or i32 %274, %277
  %279 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 55
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 %280, 12
  %282 = or i32 %278, %281
  %283 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 56
  %284 = load i32, i32* %283, align 16
  %285 = shl i32 %284, 10
  %286 = or i32 %282, %285
  %287 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 57
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 8
  %290 = or i32 %286, %289
  %291 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 58
  %292 = load i32, i32* %291, align 8
  %293 = shl i32 %292, 6
  %294 = or i32 %290, %293
  %295 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 59
  %296 = load i32, i32* %295, align 4
  %297 = shl i32 %296, 4
  %298 = or i32 %294, %297
  %299 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 60
  %300 = load i32, i32* %299, align 16
  %301 = shl i32 %300, 2
  %302 = or i32 %298, %301
  %303 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 61
  %304 = load i32, i32* %303, align 4
  %305 = shl i32 %304, 0
  %306 = or i32 %302, %305
  store i32 %306, i32* %20, align 4
  %307 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %308 = load i32, i32* @AR_PHY_BIN_MASK_1, align 4
  %309 = load i32, i32* %20, align 4
  %310 = call i32 @REG_WRITE(%struct.ath_hw* %307, i32 %308, i32 %309)
  %311 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %312 = load i32, i32* @AR_PHY_VIT_MASK2_M_46_61, align 4
  %313 = load i32, i32* %20, align 4
  %314 = call i32 @REG_WRITE(%struct.ath_hw* %311, i32 %312, i32 %313)
  %315 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 31
  %316 = load i32, i32* %315, align 4
  %317 = shl i32 %316, 28
  %318 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 32
  %319 = load i32, i32* %318, align 16
  %320 = shl i32 %319, 26
  %321 = or i32 %317, %320
  %322 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 33
  %323 = load i32, i32* %322, align 4
  %324 = shl i32 %323, 24
  %325 = or i32 %321, %324
  %326 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 34
  %327 = load i32, i32* %326, align 8
  %328 = shl i32 %327, 22
  %329 = or i32 %325, %328
  %330 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 35
  %331 = load i32, i32* %330, align 4
  %332 = shl i32 %331, 20
  %333 = or i32 %329, %332
  %334 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 36
  %335 = load i32, i32* %334, align 16
  %336 = shl i32 %335, 18
  %337 = or i32 %333, %336
  %338 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 37
  %339 = load i32, i32* %338, align 4
  %340 = shl i32 %339, 16
  %341 = or i32 %337, %340
  %342 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 48
  %343 = load i32, i32* %342, align 16
  %344 = shl i32 %343, 14
  %345 = or i32 %341, %344
  %346 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 39
  %347 = load i32, i32* %346, align 4
  %348 = shl i32 %347, 12
  %349 = or i32 %345, %348
  %350 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 40
  %351 = load i32, i32* %350, align 16
  %352 = shl i32 %351, 10
  %353 = or i32 %349, %352
  %354 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 41
  %355 = load i32, i32* %354, align 4
  %356 = shl i32 %355, 8
  %357 = or i32 %353, %356
  %358 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 42
  %359 = load i32, i32* %358, align 8
  %360 = shl i32 %359, 6
  %361 = or i32 %357, %360
  %362 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 43
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 4
  %365 = or i32 %361, %364
  %366 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 44
  %367 = load i32, i32* %366, align 16
  %368 = shl i32 %367, 2
  %369 = or i32 %365, %368
  %370 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 45
  %371 = load i32, i32* %370, align 4
  %372 = shl i32 %371, 0
  %373 = or i32 %369, %372
  store i32 %373, i32* %20, align 4
  %374 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %375 = load i32, i32* @AR_PHY_BIN_MASK_2, align 4
  %376 = load i32, i32* %20, align 4
  %377 = call i32 @REG_WRITE(%struct.ath_hw* %374, i32 %375, i32 %376)
  %378 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %379 = load i32, i32* @AR_PHY_MASK2_M_31_45, align 4
  %380 = load i32, i32* %20, align 4
  %381 = call i32 @REG_WRITE(%struct.ath_hw* %378, i32 %379, i32 %380)
  %382 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 16
  %383 = load i32, i32* %382, align 16
  %384 = shl i32 %383, 30
  %385 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 16
  %386 = load i32, i32* %385, align 16
  %387 = shl i32 %386, 28
  %388 = or i32 %384, %387
  %389 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 18
  %390 = load i32, i32* %389, align 8
  %391 = shl i32 %390, 26
  %392 = or i32 %388, %391
  %393 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 18
  %394 = load i32, i32* %393, align 8
  %395 = shl i32 %394, 24
  %396 = or i32 %392, %395
  %397 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 20
  %398 = load i32, i32* %397, align 16
  %399 = shl i32 %398, 22
  %400 = or i32 %396, %399
  %401 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 20
  %402 = load i32, i32* %401, align 16
  %403 = shl i32 %402, 20
  %404 = or i32 %400, %403
  %405 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 22
  %406 = load i32, i32* %405, align 8
  %407 = shl i32 %406, 18
  %408 = or i32 %404, %407
  %409 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 22
  %410 = load i32, i32* %409, align 8
  %411 = shl i32 %410, 16
  %412 = or i32 %408, %411
  %413 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 24
  %414 = load i32, i32* %413, align 16
  %415 = shl i32 %414, 14
  %416 = or i32 %412, %415
  %417 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 24
  %418 = load i32, i32* %417, align 16
  %419 = shl i32 %418, 12
  %420 = or i32 %416, %419
  %421 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 25
  %422 = load i32, i32* %421, align 4
  %423 = shl i32 %422, 10
  %424 = or i32 %420, %423
  %425 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 26
  %426 = load i32, i32* %425, align 8
  %427 = shl i32 %426, 8
  %428 = or i32 %424, %427
  %429 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 27
  %430 = load i32, i32* %429, align 4
  %431 = shl i32 %430, 6
  %432 = or i32 %428, %431
  %433 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 28
  %434 = load i32, i32* %433, align 16
  %435 = shl i32 %434, 4
  %436 = or i32 %432, %435
  %437 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 29
  %438 = load i32, i32* %437, align 4
  %439 = shl i32 %438, 2
  %440 = or i32 %436, %439
  %441 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 30
  %442 = load i32, i32* %441, align 8
  %443 = shl i32 %442, 0
  %444 = or i32 %440, %443
  store i32 %444, i32* %20, align 4
  %445 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %446 = load i32, i32* @AR_PHY_BIN_MASK_3, align 4
  %447 = load i32, i32* %20, align 4
  %448 = call i32 @REG_WRITE(%struct.ath_hw* %445, i32 %446, i32 %447)
  %449 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %450 = load i32, i32* @AR_PHY_MASK2_M_16_30, align 4
  %451 = load i32, i32* %20, align 4
  %452 = call i32 @REG_WRITE(%struct.ath_hw* %449, i32 %450, i32 %451)
  %453 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 0
  %454 = load i32, i32* %453, align 16
  %455 = shl i32 %454, 30
  %456 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 1
  %457 = load i32, i32* %456, align 4
  %458 = shl i32 %457, 28
  %459 = or i32 %455, %458
  %460 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 2
  %461 = load i32, i32* %460, align 8
  %462 = shl i32 %461, 26
  %463 = or i32 %459, %462
  %464 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 3
  %465 = load i32, i32* %464, align 4
  %466 = shl i32 %465, 24
  %467 = or i32 %463, %466
  %468 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 4
  %469 = load i32, i32* %468, align 16
  %470 = shl i32 %469, 22
  %471 = or i32 %467, %470
  %472 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 5
  %473 = load i32, i32* %472, align 4
  %474 = shl i32 %473, 20
  %475 = or i32 %471, %474
  %476 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 6
  %477 = load i32, i32* %476, align 8
  %478 = shl i32 %477, 18
  %479 = or i32 %475, %478
  %480 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 7
  %481 = load i32, i32* %480, align 4
  %482 = shl i32 %481, 16
  %483 = or i32 %479, %482
  %484 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 8
  %485 = load i32, i32* %484, align 16
  %486 = shl i32 %485, 14
  %487 = or i32 %483, %486
  %488 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 9
  %489 = load i32, i32* %488, align 4
  %490 = shl i32 %489, 12
  %491 = or i32 %487, %490
  %492 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 10
  %493 = load i32, i32* %492, align 8
  %494 = shl i32 %493, 10
  %495 = or i32 %491, %494
  %496 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 11
  %497 = load i32, i32* %496, align 4
  %498 = shl i32 %497, 8
  %499 = or i32 %495, %498
  %500 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 12
  %501 = load i32, i32* %500, align 16
  %502 = shl i32 %501, 6
  %503 = or i32 %499, %502
  %504 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 13
  %505 = load i32, i32* %504, align 4
  %506 = shl i32 %505, 4
  %507 = or i32 %503, %506
  %508 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 14
  %509 = load i32, i32* %508, align 8
  %510 = shl i32 %509, 2
  %511 = or i32 %507, %510
  %512 = getelementptr inbounds [123 x i32], [123 x i32]* %17, i64 0, i64 15
  %513 = load i32, i32* %512, align 4
  %514 = shl i32 %513, 0
  %515 = or i32 %511, %514
  store i32 %515, i32* %20, align 4
  %516 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %517 = load i32, i32* @AR_PHY_MASK_CTL, align 4
  %518 = load i32, i32* %20, align 4
  %519 = call i32 @REG_WRITE(%struct.ath_hw* %516, i32 %517, i32 %518)
  %520 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %521 = load i32, i32* @AR_PHY_MASK2_M_00_15, align 4
  %522 = load i32, i32* %20, align 4
  %523 = call i32 @REG_WRITE(%struct.ath_hw* %520, i32 %521, i32 %522)
  %524 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 15
  %525 = load i32, i32* %524, align 4
  %526 = shl i32 %525, 28
  %527 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 14
  %528 = load i32, i32* %527, align 8
  %529 = shl i32 %528, 26
  %530 = or i32 %526, %529
  %531 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 13
  %532 = load i32, i32* %531, align 4
  %533 = shl i32 %532, 24
  %534 = or i32 %530, %533
  %535 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 12
  %536 = load i32, i32* %535, align 16
  %537 = shl i32 %536, 22
  %538 = or i32 %534, %537
  %539 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 11
  %540 = load i32, i32* %539, align 4
  %541 = shl i32 %540, 20
  %542 = or i32 %538, %541
  %543 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 10
  %544 = load i32, i32* %543, align 8
  %545 = shl i32 %544, 18
  %546 = or i32 %542, %545
  %547 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 9
  %548 = load i32, i32* %547, align 4
  %549 = shl i32 %548, 16
  %550 = or i32 %546, %549
  %551 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 8
  %552 = load i32, i32* %551, align 16
  %553 = shl i32 %552, 14
  %554 = or i32 %550, %553
  %555 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 7
  %556 = load i32, i32* %555, align 4
  %557 = shl i32 %556, 12
  %558 = or i32 %554, %557
  %559 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 6
  %560 = load i32, i32* %559, align 8
  %561 = shl i32 %560, 10
  %562 = or i32 %558, %561
  %563 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 5
  %564 = load i32, i32* %563, align 4
  %565 = shl i32 %564, 8
  %566 = or i32 %562, %565
  %567 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 4
  %568 = load i32, i32* %567, align 16
  %569 = shl i32 %568, 6
  %570 = or i32 %566, %569
  %571 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 3
  %572 = load i32, i32* %571, align 4
  %573 = shl i32 %572, 4
  %574 = or i32 %570, %573
  %575 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 2
  %576 = load i32, i32* %575, align 8
  %577 = shl i32 %576, 2
  %578 = or i32 %574, %577
  %579 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 1
  %580 = load i32, i32* %579, align 4
  %581 = shl i32 %580, 0
  %582 = or i32 %578, %581
  store i32 %582, i32* %20, align 4
  %583 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %584 = load i32, i32* @AR_PHY_BIN_MASK2_1, align 4
  %585 = load i32, i32* %20, align 4
  %586 = call i32 @REG_WRITE(%struct.ath_hw* %583, i32 %584, i32 %585)
  %587 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %588 = load i32, i32* @AR_PHY_MASK2_P_15_01, align 4
  %589 = load i32, i32* %20, align 4
  %590 = call i32 @REG_WRITE(%struct.ath_hw* %587, i32 %588, i32 %589)
  %591 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 30
  %592 = load i32, i32* %591, align 8
  %593 = shl i32 %592, 28
  %594 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 29
  %595 = load i32, i32* %594, align 4
  %596 = shl i32 %595, 26
  %597 = or i32 %593, %596
  %598 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 28
  %599 = load i32, i32* %598, align 16
  %600 = shl i32 %599, 24
  %601 = or i32 %597, %600
  %602 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 27
  %603 = load i32, i32* %602, align 4
  %604 = shl i32 %603, 22
  %605 = or i32 %601, %604
  %606 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 26
  %607 = load i32, i32* %606, align 8
  %608 = shl i32 %607, 20
  %609 = or i32 %605, %608
  %610 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 25
  %611 = load i32, i32* %610, align 4
  %612 = shl i32 %611, 18
  %613 = or i32 %609, %612
  %614 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 24
  %615 = load i32, i32* %614, align 16
  %616 = shl i32 %615, 16
  %617 = or i32 %613, %616
  %618 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 23
  %619 = load i32, i32* %618, align 4
  %620 = shl i32 %619, 14
  %621 = or i32 %617, %620
  %622 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 22
  %623 = load i32, i32* %622, align 8
  %624 = shl i32 %623, 12
  %625 = or i32 %621, %624
  %626 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 21
  %627 = load i32, i32* %626, align 4
  %628 = shl i32 %627, 10
  %629 = or i32 %625, %628
  %630 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 20
  %631 = load i32, i32* %630, align 16
  %632 = shl i32 %631, 8
  %633 = or i32 %629, %632
  %634 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 19
  %635 = load i32, i32* %634, align 4
  %636 = shl i32 %635, 6
  %637 = or i32 %633, %636
  %638 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 18
  %639 = load i32, i32* %638, align 8
  %640 = shl i32 %639, 4
  %641 = or i32 %637, %640
  %642 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 17
  %643 = load i32, i32* %642, align 4
  %644 = shl i32 %643, 2
  %645 = or i32 %641, %644
  %646 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 16
  %647 = load i32, i32* %646, align 16
  %648 = shl i32 %647, 0
  %649 = or i32 %645, %648
  store i32 %649, i32* %20, align 4
  %650 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %651 = load i32, i32* @AR_PHY_BIN_MASK2_2, align 4
  %652 = load i32, i32* %20, align 4
  %653 = call i32 @REG_WRITE(%struct.ath_hw* %650, i32 %651, i32 %652)
  %654 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %655 = load i32, i32* @AR_PHY_MASK2_P_30_16, align 4
  %656 = load i32, i32* %20, align 4
  %657 = call i32 @REG_WRITE(%struct.ath_hw* %654, i32 %655, i32 %656)
  %658 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 45
  %659 = load i32, i32* %658, align 4
  %660 = shl i32 %659, 28
  %661 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 44
  %662 = load i32, i32* %661, align 16
  %663 = shl i32 %662, 26
  %664 = or i32 %660, %663
  %665 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 43
  %666 = load i32, i32* %665, align 4
  %667 = shl i32 %666, 24
  %668 = or i32 %664, %667
  %669 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 42
  %670 = load i32, i32* %669, align 8
  %671 = shl i32 %670, 22
  %672 = or i32 %668, %671
  %673 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 41
  %674 = load i32, i32* %673, align 4
  %675 = shl i32 %674, 20
  %676 = or i32 %672, %675
  %677 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 40
  %678 = load i32, i32* %677, align 16
  %679 = shl i32 %678, 18
  %680 = or i32 %676, %679
  %681 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 39
  %682 = load i32, i32* %681, align 4
  %683 = shl i32 %682, 16
  %684 = or i32 %680, %683
  %685 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 38
  %686 = load i32, i32* %685, align 8
  %687 = shl i32 %686, 14
  %688 = or i32 %684, %687
  %689 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 37
  %690 = load i32, i32* %689, align 4
  %691 = shl i32 %690, 12
  %692 = or i32 %688, %691
  %693 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 36
  %694 = load i32, i32* %693, align 16
  %695 = shl i32 %694, 10
  %696 = or i32 %692, %695
  %697 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 35
  %698 = load i32, i32* %697, align 4
  %699 = shl i32 %698, 8
  %700 = or i32 %696, %699
  %701 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 34
  %702 = load i32, i32* %701, align 8
  %703 = shl i32 %702, 6
  %704 = or i32 %700, %703
  %705 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 33
  %706 = load i32, i32* %705, align 4
  %707 = shl i32 %706, 4
  %708 = or i32 %704, %707
  %709 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 32
  %710 = load i32, i32* %709, align 16
  %711 = shl i32 %710, 2
  %712 = or i32 %708, %711
  %713 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 31
  %714 = load i32, i32* %713, align 4
  %715 = shl i32 %714, 0
  %716 = or i32 %712, %715
  store i32 %716, i32* %20, align 4
  %717 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %718 = load i32, i32* @AR_PHY_BIN_MASK2_3, align 4
  %719 = load i32, i32* %20, align 4
  %720 = call i32 @REG_WRITE(%struct.ath_hw* %717, i32 %718, i32 %719)
  %721 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %722 = load i32, i32* @AR_PHY_MASK2_P_45_31, align 4
  %723 = load i32, i32* %20, align 4
  %724 = call i32 @REG_WRITE(%struct.ath_hw* %721, i32 %722, i32 %723)
  %725 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 61
  %726 = load i32, i32* %725, align 4
  %727 = shl i32 %726, 30
  %728 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 60
  %729 = load i32, i32* %728, align 16
  %730 = shl i32 %729, 28
  %731 = or i32 %727, %730
  %732 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 59
  %733 = load i32, i32* %732, align 4
  %734 = shl i32 %733, 26
  %735 = or i32 %731, %734
  %736 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 58
  %737 = load i32, i32* %736, align 8
  %738 = shl i32 %737, 24
  %739 = or i32 %735, %738
  %740 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 57
  %741 = load i32, i32* %740, align 4
  %742 = shl i32 %741, 22
  %743 = or i32 %739, %742
  %744 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 56
  %745 = load i32, i32* %744, align 16
  %746 = shl i32 %745, 20
  %747 = or i32 %743, %746
  %748 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 55
  %749 = load i32, i32* %748, align 4
  %750 = shl i32 %749, 18
  %751 = or i32 %747, %750
  %752 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 54
  %753 = load i32, i32* %752, align 8
  %754 = shl i32 %753, 16
  %755 = or i32 %751, %754
  %756 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 53
  %757 = load i32, i32* %756, align 4
  %758 = shl i32 %757, 14
  %759 = or i32 %755, %758
  %760 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 52
  %761 = load i32, i32* %760, align 16
  %762 = shl i32 %761, 12
  %763 = or i32 %759, %762
  %764 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 51
  %765 = load i32, i32* %764, align 4
  %766 = shl i32 %765, 10
  %767 = or i32 %763, %766
  %768 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 50
  %769 = load i32, i32* %768, align 8
  %770 = shl i32 %769, 8
  %771 = or i32 %767, %770
  %772 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 49
  %773 = load i32, i32* %772, align 4
  %774 = shl i32 %773, 6
  %775 = or i32 %771, %774
  %776 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 48
  %777 = load i32, i32* %776, align 16
  %778 = shl i32 %777, 4
  %779 = or i32 %775, %778
  %780 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 47
  %781 = load i32, i32* %780, align 4
  %782 = shl i32 %781, 2
  %783 = or i32 %779, %782
  %784 = getelementptr inbounds [123 x i32], [123 x i32]* %18, i64 0, i64 46
  %785 = load i32, i32* %784, align 8
  %786 = shl i32 %785, 0
  %787 = or i32 %783, %786
  store i32 %787, i32* %20, align 4
  %788 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %789 = load i32, i32* @AR_PHY_BIN_MASK2_4, align 4
  %790 = load i32, i32* %20, align 4
  %791 = call i32 @REG_WRITE(%struct.ath_hw* %788, i32 %789, i32 %790)
  %792 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %793 = load i32, i32* @AR_PHY_MASK2_P_61_45, align 4
  %794 = load i32, i32* %20, align 4
  %795 = call i32 @REG_WRITE(%struct.ath_hw* %792, i32 %793, i32 %794)
  br label %796

796:                                              ; preds = %243, %74
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
