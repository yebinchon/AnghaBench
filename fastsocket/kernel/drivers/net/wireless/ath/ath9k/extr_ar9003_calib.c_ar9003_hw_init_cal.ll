; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_init_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32*, i32*, i32, i32*, i32, i32, %struct.TYPE_2__, %struct.ath9k_hw_cal_data* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ath9k_hw_cal_data = type { i64, i64, i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_HW_CAP_RTT = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_OFFSET_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_PKDET_CAL = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RTT calibration to be done\0A\00", align 1
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@TX_CL_CAL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_CL_CAL_ENABLE = common dso_local global i32 0, align 4
@TX_IQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_1 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT = common dso_local global i32 0, align 4
@DELPT = common dso_local global i32 0, align 4
@TX_IQ_ON_AGC_CAL = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_DIS = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_EN = common dso_local global i32 0, align 4
@AH_FASTCC = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not stop baseband\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"enabling IQ Calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_init_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_init_cal(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_cal_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %6, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 9
  %21 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %20, align 8
  store %struct.ath9k_hw_cal_data* %21, %struct.ath9k_hw_cal_data** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATH9K_HW_CAP_RTT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %33 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AR_PHY_AGC_CONTROL_PKDET_CAL, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %37, i32 %41, i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %2
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %52 = call i32 @ar9003_hw_rtt_restore(%struct.ath_hw* %50, %struct.ath9k_channel* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %60 = load i32, i32* @CALIBRATE, align 4
  %61 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %59, i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = call i32 @ar9003_hw_rtt_enable(%struct.ath_hw* %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = call i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw* %70, i32 0)
  %72 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %73 = call i32 @ar9003_hw_rtt_clear_hist(%struct.ath_hw* %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %82 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %83 = call i32 @REG_READ(%struct.ath_hw* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* @AR_PHY_AGC_CONTROL_OFFSET_CAL, align 4
  %88 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @AR_PHY_AGC_CONTROL_PKDET_CAL, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %96 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @REG_WRITE(%struct.ath_hw* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %80, %77, %74
  %100 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TX_CL_CAL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %99
  %107 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %108 = icmp ne %struct.ath9k_hw_cal_data* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %111 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %117 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %118 = call i32 @REG_CLR_BIT(%struct.ath_hw* %115, i32 %116, i32 %117)
  br label %124

119:                                              ; preds = %109, %106
  %120 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %121 = load i32, i32* @AR_PHY_CL_CAL_CTL, align 4
  %122 = load i32, i32* @AR_PHY_CL_CAL_ENABLE, align 4
  %123 = call i32 @REG_SET_BIT(%struct.ath_hw* %120, i32 %121, i32 %122)
  store i32 1, i32* %12, align 4
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %99
  %126 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %127 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %131 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %135 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @TX_IQ_CAL, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133, %129, %125
  br label %183

141:                                              ; preds = %133
  %142 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %143 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_1, align 4
  %144 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_1_IQCORR_I_Q_COFF_DELPT, align 4
  %145 = load i32, i32* @DELPT, align 4
  %146 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %148 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TX_IQ_ON_AGC_CAL, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %141
  %154 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %155 = icmp ne %struct.ath9k_hw_cal_data* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %158 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %163 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %164 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %165 = call i32 @REG_SET_BIT(%struct.ath_hw* %162, i32 %163, i32 %164)
  br label %171

166:                                              ; preds = %156, %153
  %167 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %168 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0, align 4
  %169 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_0_ENABLE_TXIQ_CAL, align 4
  %170 = call i32 @REG_CLR_BIT(%struct.ath_hw* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %161
  store i32 1, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %182

172:                                              ; preds = %141
  %173 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %174 = icmp ne %struct.ath9k_hw_cal_data* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %177 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %181

181:                                              ; preds = %180, %175, %172
  br label %182

182:                                              ; preds = %181, %171
  br label %183

183:                                              ; preds = %182, %140
  %184 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %185 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %183
  %188 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %189 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %196 = call i32 @ar9003_mci_init_cal_req(%struct.ath_hw* %195, i32* %9)
  br label %197

197:                                              ; preds = %194, %191, %187, %183
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %202 = call i32 @ar9003_hw_tx_iq_cal_run(%struct.ath_hw* %201)
  store i32 %202, i32* %8, align 4
  %203 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %204 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %205 = load i32, i32* @AR_PHY_ACTIVE_DIS, align 4
  %206 = call i32 @REG_WRITE(%struct.ath_hw* %203, i32 %204, i32 %205)
  %207 = call i32 @udelay(i32 5)
  %208 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %209 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %210 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %211 = call i32 @REG_WRITE(%struct.ath_hw* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %200, %197
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %217 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @AH_FASTCC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %239, label %222

222:                                              ; preds = %215, %212
  %223 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %224 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %225 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %226 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %227 = call i32 @REG_READ(%struct.ath_hw* %225, i32 %226)
  %228 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @REG_WRITE(%struct.ath_hw* %223, i32 %224, i32 %229)
  %231 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %232 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %233 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %234 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %235 = call i32 @ath9k_hw_wait(%struct.ath_hw* %231, i32 %232, i32 %233, i32 0, i32 %234)
  store i32 %235, i32* %10, align 4
  %236 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %237 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %238 = call i32 @ar9003_hw_do_manual_peak_cal(%struct.ath_hw* %236, %struct.ath9k_channel* %237)
  br label %239

239:                                              ; preds = %222, %215
  %240 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %241 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %239
  %244 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %245 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %252 = call i32 @ar9003_mci_init_cal_done(%struct.ath_hw* %251)
  br label %253

253:                                              ; preds = %250, %247, %243, %239
  %254 = load i32, i32* %14, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %267

256:                                              ; preds = %253
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %15, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %15, align 4
  %263 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %264 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %265 = load i32, i32* %15, align 4
  %266 = call i32 @REG_WRITE(%struct.ath_hw* %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %259, %256, %253
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %275 = call i32 @ar9003_hw_rtt_disable(%struct.ath_hw* %274)
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %278 = load i32, i32* @CALIBRATE, align 4
  %279 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %280 = sdiv i32 %279, 1000
  %281 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %277, i32 %278, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %280)
  store i32 0, i32* %3, align 4
  br label %377

282:                                              ; preds = %267
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %287 = load i32, i32* %9, align 4
  %288 = call i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw* %286, i32 %287)
  br label %301

289:                                              ; preds = %282
  %290 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %291 = icmp ne %struct.ath9k_hw_cal_data* %290, null
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %294 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %299 = call i32 @ar9003_hw_tx_iq_cal_reload(%struct.ath_hw* %298)
  br label %300

300:                                              ; preds = %297, %292, %289
  br label %301

301:                                              ; preds = %300, %285
  %302 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @ar9003_hw_cl_cal_post_proc(%struct.ath_hw* %302, i32 %303)
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %330

307:                                              ; preds = %301
  %308 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %309 = icmp ne %struct.ath9k_hw_cal_data* %308, null
  br i1 %309, label %310, label %330

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %310
  %314 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %315 = call i32 @ath9k_hw_rfbus_req(%struct.ath_hw* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %313
  %318 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %319 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %318)
  %320 = call i32 @ath_err(%struct.ath_common* %319, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %324

321:                                              ; preds = %313
  %322 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %323 = call i32 @ar9003_hw_rtt_fill_hist(%struct.ath_hw* %322)
  br label %324

324:                                              ; preds = %321, %317
  %325 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %326 = call i32 @ath9k_hw_rfbus_done(%struct.ath_hw* %325)
  br label %327

327:                                              ; preds = %324, %310
  %328 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %329 = call i32 @ar9003_hw_rtt_disable(%struct.ath_hw* %328)
  br label %330

330:                                              ; preds = %327, %307, %301
  %331 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %332 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %333 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %336 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %331, i32 %334, i32 %337)
  %339 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %340 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %339, i32 0, i32 2
  store i32* null, i32** %340, align 8
  %341 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %342 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %341, i32 0, i32 5
  store i32* null, i32** %342, align 8
  %343 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %344 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %343, i32 0, i32 3
  store i32* null, i32** %344, align 8
  %345 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %346 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %345, i32 0, i32 4
  %347 = call i32 @INIT_CAL(i32* %346)
  %348 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %349 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %350 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %349, i32 0, i32 4
  %351 = call i32 @INSERT_CAL(%struct.ath_hw* %348, i32* %350)
  %352 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %353 = load i32, i32* @CALIBRATE, align 4
  %354 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %352, i32 %353, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %355 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %356 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %355, i32 0, i32 3
  %357 = load i32*, i32** %356, align 8
  %358 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %359 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %358, i32 0, i32 2
  store i32* %357, i32** %359, align 8
  %360 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %361 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %360, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %370

364:                                              ; preds = %330
  %365 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %366 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %367 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %365, i32* %368)
  br label %370

370:                                              ; preds = %364, %330
  %371 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %372 = icmp ne %struct.ath9k_hw_cal_data* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %375 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %374, i32 0, i32 0
  store i64 0, i64* %375, align 8
  br label %376

376:                                              ; preds = %373, %370
  store i32 1, i32* %3, align 4
  br label %377

377:                                              ; preds = %376, %276
  %378 = load i32, i32* %3, align 4
  ret i32 %378
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_chain_masks(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_hw_rtt_restore(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9003_hw_rtt_enable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_set_mask(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_rtt_clear_hist(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_init_cal_req(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_run(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ar9003_hw_do_manual_peak_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_init_cal_done(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_rtt_disable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_post_proc(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_tx_iq_cal_reload(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_cl_cal_post_proc(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_rfbus_req(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ar9003_hw_rtt_fill_hist(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_rfbus_done(%struct.ath_hw*) #1

declare dso_local i32 @INIT_CAL(i32*) #1

declare dso_local i32 @INSERT_CAL(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
