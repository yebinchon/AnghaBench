; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, i32, i32, %struct.TYPE_2__, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR5K_PHY_RFBUS_REQ = common dso_local global i32 0, align 4
@AR5K_PHY_RFBUS_REQ_REQUEST = common dso_local global i32 0, align 4
@AR5K_PHY_RFBUS_GRANT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AR5K_TUNE_MAX_TXPOWER = common dso_local global i32 0, align 4
@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@AR5K_SREV_AR5424 = common dso_local global i64 0, align 8
@AR5K_PHY_AGCCTL = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_NF = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_RF5111 = common dso_local global i64 0, align 8
@AR5K_TXCFG = common dso_local global i32 0, align 4
@AR5K_TXCFG_B_MODE = common dso_local global i32 0, align 4
@AR5K_PHY_ACT_DISABLE = common dso_local global i32 0, align 4
@AR5K_PHY_ACT = common dso_local global i32 0, align 4
@AR5K_PHY_ACT_ENABLE = common dso_local global i32 0, align 4
@AR5K_PHY_TST1 = common dso_local global i32 0, align 4
@AR5K_PHY_TST1_TXHOLD = common dso_local global i32 0, align 4
@AR5K_PHY_ADC_TEST = common dso_local global i32 0, align 4
@AR5K_PHY_AGCCTL_CAL = common dso_local global i32 0, align 4
@AR5K_PHY_IQ = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CAL_NUM_LOG_MAX = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"gain calibration timeout (%uMHz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_phy_init(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 6
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %283

30:                                               ; preds = %19, %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %35 = load i32, i32* @AR5K_PHY_RFBUS_REQ, align 4
  %36 = load i32, i32* @AR5K_PHY_RFBUS_REQ_REQUEST, align 4
  %37 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %34, i32 %35, i32 %36)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %49, %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %43 = load i32, i32* @AR5K_PHY_RFBUS_GRANT, align 4
  %44 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %52

47:                                               ; preds = %41
  %48 = call i32 @udelay(i32 5)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %38

52:                                               ; preds = %46, %38
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %53, 100
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %283

58:                                               ; preds = %52
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %61 = call i32 @ath5k_hw_channel(%struct.ath5k_hw* %59, %struct.ieee80211_channel* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %283

66:                                               ; preds = %58
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %69 = call i32 @ath5k_hw_wait_for_synth(%struct.ath5k_hw* %67, %struct.ieee80211_channel* %68)
  br label %70

70:                                               ; preds = %66, %30
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %74 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %80 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 2
  br label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi i32 [ %83, %78 ], [ %85, %84 ]
  %88 = call i32 @ath5k_hw_txpower(%struct.ath5k_hw* %71, %struct.ieee80211_channel* %72, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %283

93:                                               ; preds = %86
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %95 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AR5K_AR5212, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AR5K_MODE_11B, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %107 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %108 = call i32 @ath5k_hw_write_ofdm_timings(%struct.ath5k_hw* %106, %struct.ieee80211_channel* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %5, align 4
  br label %283

113:                                              ; preds = %105
  %114 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %115 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AR5K_SREV_AR5424, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %121 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %122 = call i32 @ath5k_hw_set_spur_mitigation_filter(%struct.ath5k_hw* %120, %struct.ieee80211_channel* %121)
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %123, %99, %93
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %129 = load i32, i32* @AR5K_PHY_RFBUS_REQ, align 4
  %130 = load i32, i32* @AR5K_PHY_RFBUS_REQ_REQUEST, align 4
  %131 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %128, i32 %129, i32 %130)
  %132 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %133 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %134 = load i32, i32* @AR5K_PHY_AGCCTL_NF, align 4
  %135 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %132, i32 %133, i32 %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %5, align 4
  br label %283

137:                                              ; preds = %124
  %138 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %139 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AR5K_AR5210, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %137
  %144 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %145 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %146 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ath5k_hw_rfgain_init(%struct.ath5k_hw* %144, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %5, align 4
  br label %283

153:                                              ; preds = %143
  %154 = call i32 @usleep_range(i32 1000, i32 1500)
  %155 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %156 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @ath5k_hw_rfregs_init(%struct.ath5k_hw* %155, %struct.ieee80211_channel* %156, i64 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %5, align 4
  br label %283

163:                                              ; preds = %153
  %164 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %165 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @AR5K_RF5111, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %163
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @AR5K_MODE_11B, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %175 = load i32, i32* @AR5K_TXCFG, align 4
  %176 = load i32, i32* @AR5K_TXCFG_B_MODE, align 4
  %177 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %174, i32 %175, i32 %176)
  br label %183

178:                                              ; preds = %169
  %179 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %180 = load i32, i32* @AR5K_TXCFG, align 4
  %181 = load i32, i32* @AR5K_TXCFG_B_MODE, align 4
  %182 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  br label %184

184:                                              ; preds = %183, %163
  br label %199

185:                                              ; preds = %137
  %186 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %187 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AR5K_AR5210, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = call i32 @usleep_range(i32 1000, i32 1500)
  %193 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %194 = load i32, i32* @AR5K_PHY_ACT_DISABLE, align 4
  %195 = load i32, i32* @AR5K_PHY_ACT, align 4
  %196 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %193, i32 %194, i32 %195)
  %197 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %198

198:                                              ; preds = %191, %185
  br label %199

199:                                              ; preds = %198, %184
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %201 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %202 = call i32 @ath5k_hw_channel(%struct.ath5k_hw* %200, %struct.ieee80211_channel* %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %5, align 4
  br label %283

207:                                              ; preds = %199
  %208 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %209 = load i32, i32* @AR5K_PHY_ACT_ENABLE, align 4
  %210 = load i32, i32* @AR5K_PHY_ACT, align 4
  %211 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %208, i32 %209, i32 %210)
  %212 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %213 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %214 = call i32 @ath5k_hw_wait_for_synth(%struct.ath5k_hw* %212, %struct.ieee80211_channel* %213)
  %215 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %216 = load i32, i32* @AR5K_PHY_TST1, align 4
  %217 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %215, i32 %216)
  store i32 %217, i32* %13, align 4
  %218 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %219 = load i32, i32* @AR5K_PHY_TST1_TXHOLD, align 4
  %220 = load i32, i32* @AR5K_PHY_TST1, align 4
  %221 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %218, i32 %219, i32 %220)
  store i32 0, i32* %12, align 4
  br label %222

222:                                              ; preds = %234, %207
  %223 = load i32, i32* %12, align 4
  %224 = icmp sle i32 %223, 20
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %227 = load i32, i32* @AR5K_PHY_ADC_TEST, align 4
  %228 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %226, i32 %227)
  %229 = and i32 %228, 16
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %225
  br label %237

232:                                              ; preds = %225
  %233 = call i32 @usleep_range(i32 200, i32 250)
  br label %234

234:                                              ; preds = %232
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %222

237:                                              ; preds = %231, %222
  %238 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @AR5K_PHY_TST1, align 4
  %241 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %238, i32 %239, i32 %240)
  %242 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %243 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %244 = load i32, i32* @AR5K_PHY_AGCCTL_CAL, align 4
  %245 = load i32, i32* @AR5K_PHY_AGCCTL_NF, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %242, i32 %243, i32 %246)
  %248 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %249 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %248, i32 0, i32 3
  store i32 0, i32* %249, align 8
  %250 = load i64, i64* %8, align 8
  %251 = load i64, i64* @AR5K_MODE_11B, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %264, label %253

253:                                              ; preds = %237
  %254 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %255 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %254, i32 0, i32 3
  store i32 1, i32* %255, align 8
  %256 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %257 = load i32, i32* @AR5K_PHY_IQ, align 4
  %258 = load i32, i32* @AR5K_PHY_IQ_CAL_NUM_LOG_MAX, align 4
  %259 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %256, i32 %257, i32 %258, i32 15)
  %260 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %261 = load i32, i32* @AR5K_PHY_IQ, align 4
  %262 = load i32, i32* @AR5K_PHY_IQ_RUN, align 4
  %263 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %253, %237
  %265 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %266 = load i32, i32* @AR5K_PHY_AGCCTL, align 4
  %267 = load i32, i32* @AR5K_PHY_AGCCTL_CAL, align 4
  %268 = call i64 @ath5k_hw_register_timeout(%struct.ath5k_hw* %265, i32 %266, i32 %267, i32 0, i32 0)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %272 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %273 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %271, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %270, %264
  %277 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %278 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %279 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %277, i32 %280)
  %282 = load i32, i32* %11, align 4
  store i32 %282, i32* %5, align 4
  br label %283

283:                                              ; preds = %276, %205, %161, %151, %127, %111, %91, %64, %55, %27
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath5k_hw_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_wait_for_synth(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_txpower(%struct.ath5k_hw*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ath5k_hw_write_ofdm_timings(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_set_spur_mitigation_filter(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_rfgain_init(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ath5k_hw_rfregs_init(%struct.ath5k_hw*, %struct.ieee80211_channel*, i64) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i64 @ath5k_hw_register_timeout(%struct.ath5k_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

declare dso_local i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
