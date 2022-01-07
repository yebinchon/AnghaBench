; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_spur_mitigate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_spur_mitigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.ath_hw*, i32, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.chan_centers = type { i32 }

@AR_NO_SPUR = common dso_local global i32 0, align 4
@ar9002_hw_spur_mitigate.pilot_mask_reg = internal constant [4 x i32] [i32 130, i32 129, i32 133, i32 132], align 16
@ar9002_hw_spur_mitigate.chan_mask_reg = internal constant [4 x i32] [i32 128, i32 131, i32 135, i32 134], align 16
@ar9002_hw_spur_mitigate.inc = internal constant [4 x i32] [i32 0, i32 100, i32 0, i32 0], align 16
@SPUR_ENABLE_EEPROM = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_BASE_FREQ_2GHZ = common dso_local global i32 0, align 4
@AR_BASE_FREQ_5GHZ = common dso_local global i32 0, align 4
@AR_SPUR_FEEQ_BOUND_HT40 = common dso_local global i32 0, align 4
@AR_SPUR_FEEQ_BOUND_HT20 = common dso_local global i32 0, align 4
@AR_PHY_FORCE_CLKEN_CCK = common dso_local global i32 0, align 4
@AR_PHY_FORCE_CLKEN_CCK_MRC_MUX = common dso_local global i32 0, align 4
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
@AR_PHY_SFCORR_SPUR_SUBCHNL_SD_S = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9002_hw_spur_mitigate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_spur_mitigate(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.chan_centers, align 4
  %21 = alloca [123 x i32], align 16
  %22 = alloca [123 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %31 = load i32, i32* @AR_NO_SPUR, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %33 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %32)
  store i32 %33, i32* %26, align 4
  %34 = bitcast [123 x i32]* %21 to i32**
  %35 = call i32 @memset(i32** %34, i32 0, i32 492)
  %36 = bitcast [123 x i32]* %22 to i32**
  %37 = call i32 @memset(i32** %36, i32 0, i32 492)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %40 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %38, %struct.ath9k_channel* %39, %struct.chan_centers* %20)
  %41 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %20, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SPUR_ENABLE_EEPROM, align 4
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %110, %2
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %113

51:                                               ; preds = %47
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ath_hw*, i32, i32)*, i32 (%struct.ath_hw*, i32, i32)** %55, align 8
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %26, align 4
  %60 = call i32 %56(%struct.ath_hw* %57, i32 %58, i32 %59)
  store i32 %60, i32* %25, align 4
  %61 = load i32, i32* @AR_NO_SPUR, align 4
  %62 = load i32, i32* %25, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %113

65:                                               ; preds = %51
  %66 = load i32, i32* %26, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %25, align 4
  %70 = sdiv i32 %69, 10
  %71 = load i32, i32* @AR_BASE_FREQ_2GHZ, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %25, align 4
  br label %78

73:                                               ; preds = %65
  %74 = load i32, i32* %25, align 4
  %75 = sdiv i32 %74, 10
  %76 = load i32, i32* @AR_BASE_FREQ_5GHZ, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %25, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %25, align 4
  %82 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %83 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT40, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT40, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %25, align 4
  store i32 %95, i32* %5, align 4
  br label %113

96:                                               ; preds = %90, %85
  br label %109

97:                                               ; preds = %78
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT20, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* @AR_SPUR_FEEQ_BOUND_HT20, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %25, align 4
  store i32 %107, i32* %5, align 4
  br label %113

108:                                              ; preds = %102, %97
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %47

113:                                              ; preds = %106, %94, %64, %47
  %114 = load i32, i32* @AR_NO_SPUR, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %119 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK, align 4
  %120 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK_MRC_MUX, align 4
  %121 = call i32 @REG_CLR_BIT(%struct.ath_hw* %118, i32 %119, i32 %120)
  br label %886

122:                                              ; preds = %113
  %123 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %124 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK, align 4
  %125 = load i32, i32* @AR_PHY_FORCE_CLKEN_CCK_MRC_MUX, align 4
  %126 = call i32 @REG_CLR_BIT(%struct.ath_hw* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 %128, 320
  store i32 %129, i32* %7, align 4
  %130 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %131 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %132 = call i32 @REG_READ(%struct.ath_hw* %130, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %134 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %133)
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_RSSI, align 4
  %137 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_SPUR_FILTER, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_CHAN_MASK, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @AR_PHY_TIMING_CTRL4_ENABLE_PILOT_MASK, align 4
  %142 = or i32 %140, %141
  %143 = or i32 %135, %142
  store i32 %143, i32* %18, align 4
  %144 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %145 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @REG_WRITE(%struct.ath_hw* %144, i32 %145, i32 %146)
  %148 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_CNTL, align 4
  %149 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_MASK_PPM, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @AR_PHY_SPUR_REG_MASK_RATE_SELECT, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @AR_PHY_SPUR_REG_ENABLE_VIT_SPUR_RSSI, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @SPUR_RSSI_THRESH, align 4
  %156 = load i32, i32* @AR_PHY_SPUR_REG_SPUR_RSSI_THRESH, align 4
  %157 = call i32 @SM(i32 %155, i32 %156)
  %158 = or i32 %154, %157
  store i32 %158, i32* %18, align 4
  %159 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %160 = load i32, i32* @AR_PHY_SPUR_REG, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 @REG_WRITE(%struct.ath_hw* %159, i32 %160, i32 %161)
  %163 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %164 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %127
  %167 = load i32, i32* %5, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  store i32 1, i32* %10, align 4
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 10
  store i32 %171, i32* %9, align 4
  br label %175

172:                                              ; preds = %166
  store i32 0, i32* %10, align 4
  %173 = load i32, i32* %5, align 4
  %174 = sub nsw i32 %173, 10
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %172, %169
  br label %178

176:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %180 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load i32, i32* %5, align 4
  %184 = mul nsw i32 %183, 262144
  %185 = sdiv i32 %184, 10
  %186 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %187 = and i32 %185, %186
  store i32 %187, i32* %12, align 4
  br label %194

188:                                              ; preds = %178
  %189 = load i32, i32* %5, align 4
  %190 = mul nsw i32 %189, 524288
  %191 = sdiv i32 %190, 10
  %192 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %193 = and i32 %191, %192
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %188, %182
  %195 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %196 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %195)
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 44, i32 40
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %9, align 4
  %201 = mul nsw i32 %200, 2048
  %202 = load i32, i32* %13, align 4
  %203 = sdiv i32 %201, %202
  %204 = and i32 %203, 1023
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* @AR_PHY_TIMING11_USE_SPUR_IN_AGC, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @AR_PHY_TIMING11_SPUR_FREQ_SD, align 4
  %208 = call i32 @SM(i32 %206, i32 %207)
  %209 = or i32 %205, %208
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @AR_PHY_TIMING11_SPUR_DELTA_PHASE, align 4
  %212 = call i32 @SM(i32 %210, i32 %211)
  %213 = or i32 %209, %212
  store i32 %213, i32* %18, align 4
  %214 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %215 = load i32, i32* @AR_PHY_TIMING11, align 4
  %216 = load i32, i32* %18, align 4
  %217 = call i32 @REG_WRITE(%struct.ath_hw* %214, i32 %215, i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @AR_PHY_SFCORR_SPUR_SUBCHNL_SD_S, align 4
  %220 = shl i32 %218, %219
  store i32 %220, i32* %18, align 4
  %221 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %222 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @REG_WRITE(%struct.ath_hw* %221, i32 %222, i32 %223)
  store i32 -6000, i32* %8, align 4
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 100
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %7, align 4
  %228 = sub nsw i32 %227, 100
  store i32 %228, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %229

229:                                              ; preds = %280, %194
  %230 = load i32, i32* %19, align 4
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %283

232:                                              ; preds = %229
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %29, align 4
  br label %233

233:                                              ; preds = %256, %232
  %234 = load i32, i32* %29, align 4
  %235 = icmp slt i32 %234, 30
  br i1 %235, label %236, label %259

236:                                              ; preds = %233
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %15, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  %245 = load i32, i32* %27, align 4
  %246 = load i32, i32* %29, align 4
  %247 = shl i32 1, %246
  %248 = or i32 %245, %247
  store i32 %248, i32* %27, align 4
  %249 = load i32, i32* %28, align 4
  %250 = load i32, i32* %29, align 4
  %251 = shl i32 1, %250
  %252 = or i32 %249, %251
  store i32 %252, i32* %28, align 4
  br label %253

253:                                              ; preds = %244, %240, %236
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 100
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %29, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %29, align 4
  br label %233

259:                                              ; preds = %233
  %260 = load i32, i32* %19, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* @ar9002_hw_spur_mitigate.inc, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %8, align 4
  %266 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %267 = load i32, i32* %19, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* @ar9002_hw_spur_mitigate.pilot_mask_reg, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %27, align 4
  %272 = call i32 @REG_WRITE(%struct.ath_hw* %266, i32 %270, i32 %271)
  %273 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* @ar9002_hw_spur_mitigate.chan_mask_reg, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %28, align 4
  %279 = call i32 @REG_WRITE(%struct.ath_hw* %273, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %259
  %281 = load i32, i32* %19, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %19, align 4
  br label %229

283:                                              ; preds = %229
  store i32 6100, i32* %16, align 4
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 120
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* %7, align 4
  %287 = sub nsw i32 %286, 120
  store i32 %287, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %288

288:                                              ; preds = %328, %283
  %289 = load i32, i32* %19, align 4
  %290 = icmp slt i32 %289, 123
  br i1 %290, label %291, label %331

291:                                              ; preds = %288
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %15, align 4
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %325

295:                                              ; preds = %291
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* %14, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %325

299:                                              ; preds = %295
  %300 = load i32, i32* %16, align 4
  %301 = load i32, i32* %7, align 4
  %302 = sub nsw i32 %300, %301
  %303 = call i64 @abs(i32 %302)
  %304 = trunc i64 %303 to i32
  store volatile i32 %304, i32* %30, align 4
  %305 = load volatile i32, i32* %30, align 4
  %306 = icmp slt i32 %305, 75
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  store i32 1, i32* %23, align 4
  br label %309

308:                                              ; preds = %299
  store i32 0, i32* %23, align 4
  br label %309

309:                                              ; preds = %308, %307
  %310 = load i32, i32* %16, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %309
  %313 = load i32, i32* %23, align 4
  %314 = load i32, i32* %16, align 4
  %315 = sdiv i32 %314, 100
  %316 = call i64 @abs(i32 %315)
  %317 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 %316
  store i32 %313, i32* %317, align 4
  br label %324

318:                                              ; preds = %309
  %319 = load i32, i32* %23, align 4
  %320 = load i32, i32* %16, align 4
  %321 = sdiv i32 %320, 100
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 %322
  store i32 %319, i32* %323, align 4
  br label %324

324:                                              ; preds = %318, %312
  br label %325

325:                                              ; preds = %324, %295, %291
  %326 = load i32, i32* %16, align 4
  %327 = sub nsw i32 %326, 100
  store i32 %327, i32* %16, align 4
  br label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %19, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %19, align 4
  br label %288

331:                                              ; preds = %288
  %332 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 46
  %333 = load i32, i32* %332, align 8
  %334 = shl i32 %333, 30
  %335 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 47
  %336 = load i32, i32* %335, align 4
  %337 = shl i32 %336, 28
  %338 = or i32 %334, %337
  %339 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 48
  %340 = load i32, i32* %339, align 16
  %341 = shl i32 %340, 26
  %342 = or i32 %338, %341
  %343 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 49
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 24
  %346 = or i32 %342, %345
  %347 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 50
  %348 = load i32, i32* %347, align 8
  %349 = shl i32 %348, 22
  %350 = or i32 %346, %349
  %351 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 51
  %352 = load i32, i32* %351, align 4
  %353 = shl i32 %352, 20
  %354 = or i32 %350, %353
  %355 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 52
  %356 = load i32, i32* %355, align 16
  %357 = shl i32 %356, 18
  %358 = or i32 %354, %357
  %359 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 53
  %360 = load i32, i32* %359, align 4
  %361 = shl i32 %360, 16
  %362 = or i32 %358, %361
  %363 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 54
  %364 = load i32, i32* %363, align 8
  %365 = shl i32 %364, 14
  %366 = or i32 %362, %365
  %367 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 55
  %368 = load i32, i32* %367, align 4
  %369 = shl i32 %368, 12
  %370 = or i32 %366, %369
  %371 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 56
  %372 = load i32, i32* %371, align 16
  %373 = shl i32 %372, 10
  %374 = or i32 %370, %373
  %375 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 57
  %376 = load i32, i32* %375, align 4
  %377 = shl i32 %376, 8
  %378 = or i32 %374, %377
  %379 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 58
  %380 = load i32, i32* %379, align 8
  %381 = shl i32 %380, 6
  %382 = or i32 %378, %381
  %383 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 59
  %384 = load i32, i32* %383, align 4
  %385 = shl i32 %384, 4
  %386 = or i32 %382, %385
  %387 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 60
  %388 = load i32, i32* %387, align 16
  %389 = shl i32 %388, 2
  %390 = or i32 %386, %389
  %391 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 61
  %392 = load i32, i32* %391, align 4
  %393 = shl i32 %392, 0
  %394 = or i32 %390, %393
  store i32 %394, i32* %24, align 4
  %395 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %396 = load i32, i32* @AR_PHY_BIN_MASK_1, align 4
  %397 = load i32, i32* %24, align 4
  %398 = call i32 @REG_WRITE(%struct.ath_hw* %395, i32 %396, i32 %397)
  %399 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %400 = load i32, i32* @AR_PHY_VIT_MASK2_M_46_61, align 4
  %401 = load i32, i32* %24, align 4
  %402 = call i32 @REG_WRITE(%struct.ath_hw* %399, i32 %400, i32 %401)
  %403 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 31
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, 28
  %406 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 32
  %407 = load i32, i32* %406, align 16
  %408 = shl i32 %407, 26
  %409 = or i32 %405, %408
  %410 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 33
  %411 = load i32, i32* %410, align 4
  %412 = shl i32 %411, 24
  %413 = or i32 %409, %412
  %414 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 34
  %415 = load i32, i32* %414, align 8
  %416 = shl i32 %415, 22
  %417 = or i32 %413, %416
  %418 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 35
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 20
  %421 = or i32 %417, %420
  %422 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 36
  %423 = load i32, i32* %422, align 16
  %424 = shl i32 %423, 18
  %425 = or i32 %421, %424
  %426 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 37
  %427 = load i32, i32* %426, align 4
  %428 = shl i32 %427, 16
  %429 = or i32 %425, %428
  %430 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 48
  %431 = load i32, i32* %430, align 16
  %432 = shl i32 %431, 14
  %433 = or i32 %429, %432
  %434 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 39
  %435 = load i32, i32* %434, align 4
  %436 = shl i32 %435, 12
  %437 = or i32 %433, %436
  %438 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 40
  %439 = load i32, i32* %438, align 16
  %440 = shl i32 %439, 10
  %441 = or i32 %437, %440
  %442 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 41
  %443 = load i32, i32* %442, align 4
  %444 = shl i32 %443, 8
  %445 = or i32 %441, %444
  %446 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 42
  %447 = load i32, i32* %446, align 8
  %448 = shl i32 %447, 6
  %449 = or i32 %445, %448
  %450 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 43
  %451 = load i32, i32* %450, align 4
  %452 = shl i32 %451, 4
  %453 = or i32 %449, %452
  %454 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 44
  %455 = load i32, i32* %454, align 16
  %456 = shl i32 %455, 2
  %457 = or i32 %453, %456
  %458 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 45
  %459 = load i32, i32* %458, align 4
  %460 = shl i32 %459, 0
  %461 = or i32 %457, %460
  store i32 %461, i32* %24, align 4
  %462 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %463 = load i32, i32* @AR_PHY_BIN_MASK_2, align 4
  %464 = load i32, i32* %24, align 4
  %465 = call i32 @REG_WRITE(%struct.ath_hw* %462, i32 %463, i32 %464)
  %466 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %467 = load i32, i32* @AR_PHY_MASK2_M_31_45, align 4
  %468 = load i32, i32* %24, align 4
  %469 = call i32 @REG_WRITE(%struct.ath_hw* %466, i32 %467, i32 %468)
  %470 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 16
  %471 = load i32, i32* %470, align 16
  %472 = shl i32 %471, 30
  %473 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 16
  %474 = load i32, i32* %473, align 16
  %475 = shl i32 %474, 28
  %476 = or i32 %472, %475
  %477 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 18
  %478 = load i32, i32* %477, align 8
  %479 = shl i32 %478, 26
  %480 = or i32 %476, %479
  %481 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 18
  %482 = load i32, i32* %481, align 8
  %483 = shl i32 %482, 24
  %484 = or i32 %480, %483
  %485 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 20
  %486 = load i32, i32* %485, align 16
  %487 = shl i32 %486, 22
  %488 = or i32 %484, %487
  %489 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 20
  %490 = load i32, i32* %489, align 16
  %491 = shl i32 %490, 20
  %492 = or i32 %488, %491
  %493 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 22
  %494 = load i32, i32* %493, align 8
  %495 = shl i32 %494, 18
  %496 = or i32 %492, %495
  %497 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 22
  %498 = load i32, i32* %497, align 8
  %499 = shl i32 %498, 16
  %500 = or i32 %496, %499
  %501 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 24
  %502 = load i32, i32* %501, align 16
  %503 = shl i32 %502, 14
  %504 = or i32 %500, %503
  %505 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 24
  %506 = load i32, i32* %505, align 16
  %507 = shl i32 %506, 12
  %508 = or i32 %504, %507
  %509 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 25
  %510 = load i32, i32* %509, align 4
  %511 = shl i32 %510, 10
  %512 = or i32 %508, %511
  %513 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 26
  %514 = load i32, i32* %513, align 8
  %515 = shl i32 %514, 8
  %516 = or i32 %512, %515
  %517 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 27
  %518 = load i32, i32* %517, align 4
  %519 = shl i32 %518, 6
  %520 = or i32 %516, %519
  %521 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 28
  %522 = load i32, i32* %521, align 16
  %523 = shl i32 %522, 4
  %524 = or i32 %520, %523
  %525 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 29
  %526 = load i32, i32* %525, align 4
  %527 = shl i32 %526, 2
  %528 = or i32 %524, %527
  %529 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 30
  %530 = load i32, i32* %529, align 8
  %531 = shl i32 %530, 0
  %532 = or i32 %528, %531
  store i32 %532, i32* %24, align 4
  %533 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %534 = load i32, i32* @AR_PHY_BIN_MASK_3, align 4
  %535 = load i32, i32* %24, align 4
  %536 = call i32 @REG_WRITE(%struct.ath_hw* %533, i32 %534, i32 %535)
  %537 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %538 = load i32, i32* @AR_PHY_MASK2_M_16_30, align 4
  %539 = load i32, i32* %24, align 4
  %540 = call i32 @REG_WRITE(%struct.ath_hw* %537, i32 %538, i32 %539)
  %541 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 0
  %542 = load i32, i32* %541, align 16
  %543 = shl i32 %542, 30
  %544 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 1
  %545 = load i32, i32* %544, align 4
  %546 = shl i32 %545, 28
  %547 = or i32 %543, %546
  %548 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 2
  %549 = load i32, i32* %548, align 8
  %550 = shl i32 %549, 26
  %551 = or i32 %547, %550
  %552 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 3
  %553 = load i32, i32* %552, align 4
  %554 = shl i32 %553, 24
  %555 = or i32 %551, %554
  %556 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 4
  %557 = load i32, i32* %556, align 16
  %558 = shl i32 %557, 22
  %559 = or i32 %555, %558
  %560 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 5
  %561 = load i32, i32* %560, align 4
  %562 = shl i32 %561, 20
  %563 = or i32 %559, %562
  %564 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 6
  %565 = load i32, i32* %564, align 8
  %566 = shl i32 %565, 18
  %567 = or i32 %563, %566
  %568 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 7
  %569 = load i32, i32* %568, align 4
  %570 = shl i32 %569, 16
  %571 = or i32 %567, %570
  %572 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 8
  %573 = load i32, i32* %572, align 16
  %574 = shl i32 %573, 14
  %575 = or i32 %571, %574
  %576 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 9
  %577 = load i32, i32* %576, align 4
  %578 = shl i32 %577, 12
  %579 = or i32 %575, %578
  %580 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 10
  %581 = load i32, i32* %580, align 8
  %582 = shl i32 %581, 10
  %583 = or i32 %579, %582
  %584 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 11
  %585 = load i32, i32* %584, align 4
  %586 = shl i32 %585, 8
  %587 = or i32 %583, %586
  %588 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 12
  %589 = load i32, i32* %588, align 16
  %590 = shl i32 %589, 6
  %591 = or i32 %587, %590
  %592 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 13
  %593 = load i32, i32* %592, align 4
  %594 = shl i32 %593, 4
  %595 = or i32 %591, %594
  %596 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 14
  %597 = load i32, i32* %596, align 8
  %598 = shl i32 %597, 2
  %599 = or i32 %595, %598
  %600 = getelementptr inbounds [123 x i32], [123 x i32]* %21, i64 0, i64 15
  %601 = load i32, i32* %600, align 4
  %602 = shl i32 %601, 0
  %603 = or i32 %599, %602
  store i32 %603, i32* %24, align 4
  %604 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %605 = load i32, i32* @AR_PHY_MASK_CTL, align 4
  %606 = load i32, i32* %24, align 4
  %607 = call i32 @REG_WRITE(%struct.ath_hw* %604, i32 %605, i32 %606)
  %608 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %609 = load i32, i32* @AR_PHY_MASK2_M_00_15, align 4
  %610 = load i32, i32* %24, align 4
  %611 = call i32 @REG_WRITE(%struct.ath_hw* %608, i32 %609, i32 %610)
  %612 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 15
  %613 = load i32, i32* %612, align 4
  %614 = shl i32 %613, 28
  %615 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 14
  %616 = load i32, i32* %615, align 8
  %617 = shl i32 %616, 26
  %618 = or i32 %614, %617
  %619 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 13
  %620 = load i32, i32* %619, align 4
  %621 = shl i32 %620, 24
  %622 = or i32 %618, %621
  %623 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 12
  %624 = load i32, i32* %623, align 16
  %625 = shl i32 %624, 22
  %626 = or i32 %622, %625
  %627 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 11
  %628 = load i32, i32* %627, align 4
  %629 = shl i32 %628, 20
  %630 = or i32 %626, %629
  %631 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 10
  %632 = load i32, i32* %631, align 8
  %633 = shl i32 %632, 18
  %634 = or i32 %630, %633
  %635 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 9
  %636 = load i32, i32* %635, align 4
  %637 = shl i32 %636, 16
  %638 = or i32 %634, %637
  %639 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 8
  %640 = load i32, i32* %639, align 16
  %641 = shl i32 %640, 14
  %642 = or i32 %638, %641
  %643 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 7
  %644 = load i32, i32* %643, align 4
  %645 = shl i32 %644, 12
  %646 = or i32 %642, %645
  %647 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 6
  %648 = load i32, i32* %647, align 8
  %649 = shl i32 %648, 10
  %650 = or i32 %646, %649
  %651 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 5
  %652 = load i32, i32* %651, align 4
  %653 = shl i32 %652, 8
  %654 = or i32 %650, %653
  %655 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 4
  %656 = load i32, i32* %655, align 16
  %657 = shl i32 %656, 6
  %658 = or i32 %654, %657
  %659 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 3
  %660 = load i32, i32* %659, align 4
  %661 = shl i32 %660, 4
  %662 = or i32 %658, %661
  %663 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 2
  %664 = load i32, i32* %663, align 8
  %665 = shl i32 %664, 2
  %666 = or i32 %662, %665
  %667 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 1
  %668 = load i32, i32* %667, align 4
  %669 = shl i32 %668, 0
  %670 = or i32 %666, %669
  store i32 %670, i32* %24, align 4
  %671 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %672 = load i32, i32* @AR_PHY_BIN_MASK2_1, align 4
  %673 = load i32, i32* %24, align 4
  %674 = call i32 @REG_WRITE(%struct.ath_hw* %671, i32 %672, i32 %673)
  %675 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %676 = load i32, i32* @AR_PHY_MASK2_P_15_01, align 4
  %677 = load i32, i32* %24, align 4
  %678 = call i32 @REG_WRITE(%struct.ath_hw* %675, i32 %676, i32 %677)
  %679 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 30
  %680 = load i32, i32* %679, align 8
  %681 = shl i32 %680, 28
  %682 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 29
  %683 = load i32, i32* %682, align 4
  %684 = shl i32 %683, 26
  %685 = or i32 %681, %684
  %686 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 28
  %687 = load i32, i32* %686, align 16
  %688 = shl i32 %687, 24
  %689 = or i32 %685, %688
  %690 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 27
  %691 = load i32, i32* %690, align 4
  %692 = shl i32 %691, 22
  %693 = or i32 %689, %692
  %694 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 26
  %695 = load i32, i32* %694, align 8
  %696 = shl i32 %695, 20
  %697 = or i32 %693, %696
  %698 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 25
  %699 = load i32, i32* %698, align 4
  %700 = shl i32 %699, 18
  %701 = or i32 %697, %700
  %702 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 24
  %703 = load i32, i32* %702, align 16
  %704 = shl i32 %703, 16
  %705 = or i32 %701, %704
  %706 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 23
  %707 = load i32, i32* %706, align 4
  %708 = shl i32 %707, 14
  %709 = or i32 %705, %708
  %710 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 22
  %711 = load i32, i32* %710, align 8
  %712 = shl i32 %711, 12
  %713 = or i32 %709, %712
  %714 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 21
  %715 = load i32, i32* %714, align 4
  %716 = shl i32 %715, 10
  %717 = or i32 %713, %716
  %718 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 20
  %719 = load i32, i32* %718, align 16
  %720 = shl i32 %719, 8
  %721 = or i32 %717, %720
  %722 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 19
  %723 = load i32, i32* %722, align 4
  %724 = shl i32 %723, 6
  %725 = or i32 %721, %724
  %726 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 18
  %727 = load i32, i32* %726, align 8
  %728 = shl i32 %727, 4
  %729 = or i32 %725, %728
  %730 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 17
  %731 = load i32, i32* %730, align 4
  %732 = shl i32 %731, 2
  %733 = or i32 %729, %732
  %734 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 16
  %735 = load i32, i32* %734, align 16
  %736 = shl i32 %735, 0
  %737 = or i32 %733, %736
  store i32 %737, i32* %24, align 4
  %738 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %739 = load i32, i32* @AR_PHY_BIN_MASK2_2, align 4
  %740 = load i32, i32* %24, align 4
  %741 = call i32 @REG_WRITE(%struct.ath_hw* %738, i32 %739, i32 %740)
  %742 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %743 = load i32, i32* @AR_PHY_MASK2_P_30_16, align 4
  %744 = load i32, i32* %24, align 4
  %745 = call i32 @REG_WRITE(%struct.ath_hw* %742, i32 %743, i32 %744)
  %746 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 45
  %747 = load i32, i32* %746, align 4
  %748 = shl i32 %747, 28
  %749 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 44
  %750 = load i32, i32* %749, align 16
  %751 = shl i32 %750, 26
  %752 = or i32 %748, %751
  %753 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 43
  %754 = load i32, i32* %753, align 4
  %755 = shl i32 %754, 24
  %756 = or i32 %752, %755
  %757 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 42
  %758 = load i32, i32* %757, align 8
  %759 = shl i32 %758, 22
  %760 = or i32 %756, %759
  %761 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 41
  %762 = load i32, i32* %761, align 4
  %763 = shl i32 %762, 20
  %764 = or i32 %760, %763
  %765 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 40
  %766 = load i32, i32* %765, align 16
  %767 = shl i32 %766, 18
  %768 = or i32 %764, %767
  %769 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 39
  %770 = load i32, i32* %769, align 4
  %771 = shl i32 %770, 16
  %772 = or i32 %768, %771
  %773 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 38
  %774 = load i32, i32* %773, align 8
  %775 = shl i32 %774, 14
  %776 = or i32 %772, %775
  %777 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 37
  %778 = load i32, i32* %777, align 4
  %779 = shl i32 %778, 12
  %780 = or i32 %776, %779
  %781 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 36
  %782 = load i32, i32* %781, align 16
  %783 = shl i32 %782, 10
  %784 = or i32 %780, %783
  %785 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 35
  %786 = load i32, i32* %785, align 4
  %787 = shl i32 %786, 8
  %788 = or i32 %784, %787
  %789 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 34
  %790 = load i32, i32* %789, align 8
  %791 = shl i32 %790, 6
  %792 = or i32 %788, %791
  %793 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 33
  %794 = load i32, i32* %793, align 4
  %795 = shl i32 %794, 4
  %796 = or i32 %792, %795
  %797 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 32
  %798 = load i32, i32* %797, align 16
  %799 = shl i32 %798, 2
  %800 = or i32 %796, %799
  %801 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 31
  %802 = load i32, i32* %801, align 4
  %803 = shl i32 %802, 0
  %804 = or i32 %800, %803
  store i32 %804, i32* %24, align 4
  %805 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %806 = load i32, i32* @AR_PHY_BIN_MASK2_3, align 4
  %807 = load i32, i32* %24, align 4
  %808 = call i32 @REG_WRITE(%struct.ath_hw* %805, i32 %806, i32 %807)
  %809 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %810 = load i32, i32* @AR_PHY_MASK2_P_45_31, align 4
  %811 = load i32, i32* %24, align 4
  %812 = call i32 @REG_WRITE(%struct.ath_hw* %809, i32 %810, i32 %811)
  %813 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 61
  %814 = load i32, i32* %813, align 4
  %815 = shl i32 %814, 30
  %816 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 60
  %817 = load i32, i32* %816, align 16
  %818 = shl i32 %817, 28
  %819 = or i32 %815, %818
  %820 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 59
  %821 = load i32, i32* %820, align 4
  %822 = shl i32 %821, 26
  %823 = or i32 %819, %822
  %824 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 58
  %825 = load i32, i32* %824, align 8
  %826 = shl i32 %825, 24
  %827 = or i32 %823, %826
  %828 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 57
  %829 = load i32, i32* %828, align 4
  %830 = shl i32 %829, 22
  %831 = or i32 %827, %830
  %832 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 56
  %833 = load i32, i32* %832, align 16
  %834 = shl i32 %833, 20
  %835 = or i32 %831, %834
  %836 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 55
  %837 = load i32, i32* %836, align 4
  %838 = shl i32 %837, 18
  %839 = or i32 %835, %838
  %840 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 54
  %841 = load i32, i32* %840, align 8
  %842 = shl i32 %841, 16
  %843 = or i32 %839, %842
  %844 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 53
  %845 = load i32, i32* %844, align 4
  %846 = shl i32 %845, 14
  %847 = or i32 %843, %846
  %848 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 52
  %849 = load i32, i32* %848, align 16
  %850 = shl i32 %849, 12
  %851 = or i32 %847, %850
  %852 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 51
  %853 = load i32, i32* %852, align 4
  %854 = shl i32 %853, 10
  %855 = or i32 %851, %854
  %856 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 50
  %857 = load i32, i32* %856, align 8
  %858 = shl i32 %857, 8
  %859 = or i32 %855, %858
  %860 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 49
  %861 = load i32, i32* %860, align 4
  %862 = shl i32 %861, 6
  %863 = or i32 %859, %862
  %864 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 48
  %865 = load i32, i32* %864, align 16
  %866 = shl i32 %865, 4
  %867 = or i32 %863, %866
  %868 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 47
  %869 = load i32, i32* %868, align 4
  %870 = shl i32 %869, 2
  %871 = or i32 %867, %870
  %872 = getelementptr inbounds [123 x i32], [123 x i32]* %22, i64 0, i64 46
  %873 = load i32, i32* %872, align 8
  %874 = shl i32 %873, 0
  %875 = or i32 %871, %874
  store i32 %875, i32* %24, align 4
  %876 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %877 = load i32, i32* @AR_PHY_BIN_MASK2_4, align 4
  %878 = load i32, i32* %24, align 4
  %879 = call i32 @REG_WRITE(%struct.ath_hw* %876, i32 %877, i32 %878)
  %880 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %881 = load i32, i32* @AR_PHY_MASK2_P_61_45, align 4
  %882 = load i32, i32* %24, align 4
  %883 = call i32 @REG_WRITE(%struct.ath_hw* %880, i32 %881, i32 %882)
  %884 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %885 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %884)
  br label %886

886:                                              ; preds = %331, %117
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
