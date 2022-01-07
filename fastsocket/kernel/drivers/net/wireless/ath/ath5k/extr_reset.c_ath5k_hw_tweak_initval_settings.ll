; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_tweak_initval_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_tweak_initval_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, i32, i64, i64, i64 }
%struct.ieee80211_channel = type { i32, i64 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_SREV_PHY_5212A = common dso_local global i64 0, align 8
@AR5K_PHY_ADC_CTL_INBUFGAIN_OFF = common dso_local global i32 0, align 4
@AR5K_PHY_ADC_CTL_INBUFGAIN_ON = common dso_local global i32 0, align 4
@AR5K_PHY_ADC_CTL_PWD_DAC_OFF = common dso_local global i32 0, align 4
@AR5K_PHY_ADC_CTL_PWD_ADC_OFF = common dso_local global i32 0, align 4
@AR5K_PHY_ADC_CTL = common dso_local global i32 0, align 4
@AR5K_PHY_DAG_CCK_CTL = common dso_local global i32 0, align 4
@AR5K_PHY_DAG_CCK_CTL_EN_RSSI_THR = common dso_local global i32 0, align 4
@AR5K_PHY_DAG_CCK_CTL_RSSI_THR = common dso_local global i32 0, align 4
@AR5K_SEQ_MASK = common dso_local global i32 0, align 4
@AR5K_SREV_PHY_5212B = common dso_local global i64 0, align 8
@AR5K_PHY_BLUETOOTH = common dso_local global i32 0, align 4
@AR5K_TXCFG = common dso_local global i32 0, align 4
@AR5K_TXCFG_DCU_DBL_BUF_DIS = common dso_local global i32 0, align 4
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_RF2317 = common dso_local global i64 0, align 8
@AR5K_SREV_AR2417 = common dso_local global i32 0, align 4
@AR5K_PHY_FAST_ADC = common dso_local global i32 0, align 4
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_SREV_RAD_5112A = common dso_local global i64 0, align 8
@AR5K_PHY_CCKTXCTL_WORLD = common dso_local global i32 0, align 4
@AR5K_PHY_CCKTXCTL = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@AR5K_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR5K_SREV_AR5211 = common dso_local global i64 0, align 8
@AR5K_QCUDCU_CLKGT = common dso_local global i32 0, align 4
@AR5K_PHY_SCAL_32MHZ_5311 = common dso_local global i32 0, align 4
@AR5K_PHY_SCAL = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_5211 = common dso_local global i32 0, align 4
@AR5K_DIAG_SW_ECO_ENABLE = common dso_local global i32 0, align 4
@AR5K_BWMODE_40MHZ = common dso_local global i64 0, align 8
@AR5K_PHY_SETTLING = common dso_local global i32 0, align 4
@AR5K_PHY_SETTLING_AGC = common dso_local global i32 0, align 4
@AR5K_AGC_SETTLING_TURBO = common dso_local global i32 0, align 4
@AR5K_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR5K_SWITCH_SETTLING_TURBO = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_PHY_FRAME_CTL_INI = common dso_local global i32 0, align 4
@AR5K_PHY_TURBO_MODE = common dso_local global i32 0, align 4
@AR5K_PHY_TURBO_SHORT = common dso_local global i32 0, align 4
@AR5K_PHY_FRAME_CTL_5210 = common dso_local global i32 0, align 4
@AR5K_SREV_AR5424 = common dso_local global i64 0, align 8
@AR5K_SREV_AR5414 = common dso_local global i64 0, align 8
@AR5K_PHY_FRAME_CTL_5211 = common dso_local global i32 0, align 4
@AR5K_PHY_FRAME_CTL_WIN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_tweak_initval_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_tweak_initval_settings(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_AR5212, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AR5K_SREV_PHY_5212A, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %20 = load i32, i32* @AR5K_PHY_ADC_CTL_INBUFGAIN_OFF, align 4
  %21 = call i32 @AR5K_REG_SM(i32 2, i32 %20)
  %22 = load i32, i32* @AR5K_PHY_ADC_CTL_INBUFGAIN_ON, align 4
  %23 = call i32 @AR5K_REG_SM(i32 2, i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @AR5K_PHY_ADC_CTL_PWD_DAC_OFF, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AR5K_PHY_ADC_CTL_PWD_ADC_OFF, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AR5K_PHY_ADC_CTL, align 4
  %30 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %19, i32 %28, i32 %29)
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = load i32, i32* @AR5K_PHY_DAG_CCK_CTL, align 4
  %33 = load i32, i32* @AR5K_PHY_DAG_CCK_CTL_EN_RSSI_THR, align 4
  %34 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %36 = load i32, i32* @AR5K_PHY_DAG_CCK_CTL, align 4
  %37 = load i32, i32* @AR5K_PHY_DAG_CCK_CTL_RSSI_THR, align 4
  %38 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %35, i32 %36, i32 %37, i32 2)
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %40 = load i32, i32* @AR5K_SEQ_MASK, align 4
  %41 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %39, i32 15, i32 %40)
  br label %42

42:                                               ; preds = %18, %12, %2
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AR5K_SREV_PHY_5212B, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %50 = load i32, i32* @AR5K_PHY_BLUETOOTH, align 4
  %51 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %49, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AR5K_SREV_PHY_5212B, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %60 = load i32, i32* @AR5K_TXCFG, align 4
  %61 = load i32, i32* @AR5K_TXCFG_DCU_DBL_BUF_DIS, align 4
  %62 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AR5K_RF5413, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %63
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AR5K_RF2317, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AR5K_SREV_AR2417, align 4
  %80 = ashr i32 %79, 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %75, %69, %63
  store i32 1, i32* %5, align 4
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 2462
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 2467
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %82
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %87
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %95 = load i32, i32* @AR5K_PHY_FAST_ADC, align 4
  %96 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @AR5K_PHY_FAST_ADC, align 4
  %103 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %107 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AR5K_RF5112, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AR5K_SREV_RAD_5112A, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %119 = load i32, i32* @AR5K_PHY_CCKTXCTL_WORLD, align 4
  %120 = load i32, i32* @AR5K_PHY_CCKTXCTL, align 4
  %121 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %118, i32 %119, i32 %120)
  %122 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  store i32 -4714464, i32* %6, align 4
  br label %129

128:                                              ; preds = %117
  store i32 -4715232, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %127
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @AR5K_PHY_FRAME_CTL, align 4
  %133 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %111, %105
  %135 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %136 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %142 = load i32, i32* @AR5K_QCUDCU_CLKGT, align 4
  %143 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %141, i32 0, i32 %142)
  %144 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %145 = load i32, i32* @AR5K_PHY_SCAL_32MHZ_5311, align 4
  %146 = load i32, i32* @AR5K_PHY_SCAL, align 4
  %147 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %144, i32 %145, i32 %146)
  %148 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %149 = load i32, i32* @AR5K_DIAG_SW_5211, align 4
  %150 = load i32, i32* @AR5K_DIAG_SW_ECO_ENABLE, align 4
  %151 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %140, %134
  %153 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %154 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %216

157:                                              ; preds = %152
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %159 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %197

163:                                              ; preds = %157
  %164 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %165 = load i32, i32* @AR5K_PHY_SETTLING, align 4
  %166 = load i32, i32* @AR5K_PHY_SETTLING_AGC, align 4
  %167 = load i32, i32* @AR5K_AGC_SETTLING_TURBO, align 4
  %168 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %170 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @AR5K_AR5212, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %176 = load i32, i32* @AR5K_PHY_SETTLING, align 4
  %177 = load i32, i32* @AR5K_PHY_SETTLING_SWITCH, align 4
  %178 = load i32, i32* @AR5K_SWITCH_SETTLING_TURBO, align 4
  %179 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %163
  %181 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AR5K_AR5210, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %180
  %187 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %188 = load i32, i32* @AR5K_PHY_FRAME_CTL_INI, align 4
  %189 = load i32, i32* @AR5K_PHY_TURBO_MODE, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @AR5K_PHY_TURBO_SHORT, align 4
  %192 = or i32 %190, %191
  %193 = or i32 %192, 8224
  %194 = load i32, i32* @AR5K_PHY_FRAME_CTL_5210, align 4
  %195 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %187, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %186, %180
  br label %215

197:                                              ; preds = %157
  %198 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %199 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @AR5K_SREV_AR5424, align 8
  %202 = icmp sge i64 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %197
  %204 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %205 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AR5K_SREV_AR5414, align 8
  %208 = icmp sle i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %211 = load i32, i32* @AR5K_PHY_FRAME_CTL_5211, align 4
  %212 = load i32, i32* @AR5K_PHY_FRAME_CTL_WIN_LEN, align 4
  %213 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %210, i32 %211, i32 %212, i32 3)
  br label %214

214:                                              ; preds = %209, %203, %197
  br label %215

215:                                              ; preds = %214, %196
  br label %229

216:                                              ; preds = %152
  %217 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %218 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @AR5K_AR5210, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %224 = load i32, i32* @AR5K_PHY_FRAME_CTL_INI, align 4
  %225 = or i32 %224, 4128
  %226 = load i32, i32* @AR5K_PHY_FRAME_CTL_5210, align 4
  %227 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %223, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %222, %216
  br label %229

229:                                              ; preds = %228, %215
  ret void
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
