; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_commit_eeprom_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_commit_eeprom_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32, i32, i32, i32*, i32*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i32* }
%struct.ieee80211_channel = type { i32, i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_SREV_PHY_5212A = common dso_local global i64 0, align 8
@AR5K_MODE_11G = common dso_local global i64 0, align 8
@AR5K_PHY_TX_PWR_ADJ_CCK_GAIN_DELTA = common dso_local global i32 0, align 4
@AR5K_PHY_TX_PWR_ADJ_CCK_PCDAC_INDEX = common dso_local global i32 0, align 4
@AR5K_PHY_TX_PWR_ADJ = common dso_local global i32 0, align 4
@AR5K_PHY_NFTHRES = common dso_local global i32 0, align 4
@AR5K_BWMODE_40MHZ = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_5_0 = common dso_local global i64 0, align 8
@AR5K_PHY_SETTLING = common dso_local global i32 0, align 4
@AR5K_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR5K_PHY_GAIN = common dso_local global i32 0, align 4
@AR5K_PHY_GAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR5K_PHY_DESIRED_SIZE = common dso_local global i32 0, align 4
@AR5K_PHY_DESIRED_SIZE_ADC = common dso_local global i32 0, align 4
@AR5K_PHY_DESIRED_SIZE_PGA = common dso_local global i32 0, align 4
@AR5K_PHY_GAIN_2GHZ = common dso_local global i32 0, align 4
@AR5K_PHY_GAIN_2GHZ_MARGIN_TXRX = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_4_1 = common dso_local global i64 0, align 8
@AR5K_PHY_RF_CTL4 = common dso_local global i32 0, align 4
@AR5K_PHY_RF_CTL3 = common dso_local global i32 0, align 4
@AR5K_PHY_RF_CTL3_TXE2XLNA_ON = common dso_local global i32 0, align 4
@AR5K_PHY_NF = common dso_local global i32 0, align 4
@AR5K_PHY_NF_THRESH62 = common dso_local global i32 0, align 4
@AR5K_PHY_OFDM_SELFCORR = common dso_local global i32 0, align 4
@AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1 = common dso_local global i32 0, align 4
@AR5K_INIT_CYCRSSI_THR1 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_4_0 = common dso_local global i64 0, align 8
@AR5K_PHY_IQ = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR5K_PHY_IQ_CORR_ENABLE = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_5_1 = common dso_local global i64 0, align 8
@AR5K_PHY_HEAVY_CLIP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_commit_eeprom_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_commit_eeprom_settings(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ath5k_eeprom_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %10, %struct.ath5k_eeprom_info** %5, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR5K_AR5210, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %336

17:                                               ; preds = %2
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = call i64 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw* %18, %struct.ieee80211_channel* %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 2484
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %27 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %30 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = mul nsw i32 %32, 2
  %34 = sdiv i32 %33, 10
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %17
  %36 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %37 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  %40 = sdiv i32 %39, 10
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AR5K_SREV_PHY_5212A, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AR5K_MODE_11G, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %55 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %56 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, -1
  %59 = load i32, i32* @AR5K_PHY_TX_PWR_ADJ_CCK_GAIN_DELTA, align 4
  %60 = call i32 @AR5K_REG_SM(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, -1
  %63 = load i32, i32* @AR5K_PHY_TX_PWR_ADJ_CCK_PCDAC_INDEX, align 4
  %64 = call i32 @AR5K_REG_SM(i32 %62, i32 %63)
  %65 = or i32 %60, %64
  %66 = load i32, i32* @AR5K_PHY_TX_PWR_ADJ, align 4
  %67 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %54, i32 %65, i32 %66)
  br label %72

68:                                               ; preds = %47
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %70 = load i32, i32* @AR5K_PHY_TX_PWR_ADJ, align 4
  %71 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %69, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %68, %53
  br label %84

73:                                               ; preds = %41
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %79 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %72
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @ath5k_hw_set_antenna_switch(%struct.ath5k_hw* %85, i64 %86)
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %89 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %90 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %89, i32 0, i32 20
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @AR5K_PHY_NF_SVAL(i32 %94)
  %96 = load i32, i32* @AR5K_PHY_NFTHRES, align 4
  %97 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %88, i32 %95, i32 %96)
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %160

103:                                              ; preds = %84
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %105 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AR5K_EEPROM_VERSION_5_0, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %160

109:                                              ; preds = %103
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %111 = load i32, i32* @AR5K_PHY_SETTLING, align 4
  %112 = load i32, i32* @AR5K_PHY_SETTLING_SWITCH, align 4
  %113 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %114 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %113, i32 0, i32 19
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %110, i32 %111, i32 %112, i64 %118)
  %120 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %121 = load i32, i32* @AR5K_PHY_GAIN, align 4
  %122 = load i32, i32* @AR5K_PHY_GAIN_TXRX_ATTEN, align 4
  %123 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %124 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %123, i32 0, i32 18
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %120, i32 %121, i32 %122, i64 %128)
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %131 = load i32, i32* @AR5K_PHY_DESIRED_SIZE, align 4
  %132 = load i32, i32* @AR5K_PHY_DESIRED_SIZE_ADC, align 4
  %133 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %134 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %133, i32 0, i32 17
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %130, i32 %131, i32 %132, i64 %138)
  %140 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %141 = load i32, i32* @AR5K_PHY_DESIRED_SIZE, align 4
  %142 = load i32, i32* @AR5K_PHY_DESIRED_SIZE_PGA, align 4
  %143 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %144 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %143, i32 0, i32 16
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %140, i32 %141, i32 %142, i64 %148)
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %151 = load i32, i32* @AR5K_PHY_GAIN_2GHZ, align 4
  %152 = load i32, i32* @AR5K_PHY_GAIN_2GHZ_MARGIN_TXRX, align 4
  %153 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %154 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %153, i32 0, i32 15
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %150, i32 %151, i32 %152, i64 %158)
  br label %218

160:                                              ; preds = %103, %84
  %161 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %162 = load i32, i32* @AR5K_PHY_SETTLING, align 4
  %163 = load i32, i32* @AR5K_PHY_SETTLING_SWITCH, align 4
  %164 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %165 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %164, i32 0, i32 14
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %161, i32 %162, i32 %163, i64 %169)
  %171 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %172 = load i32, i32* @AR5K_PHY_GAIN, align 4
  %173 = load i32, i32* @AR5K_PHY_GAIN_TXRX_ATTEN, align 4
  %174 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %175 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %174, i32 0, i32 13
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %171, i32 %172, i32 %173, i64 %179)
  %181 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %182 = load i32, i32* @AR5K_PHY_DESIRED_SIZE, align 4
  %183 = load i32, i32* @AR5K_PHY_DESIRED_SIZE_ADC, align 4
  %184 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %185 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %184, i32 0, i32 12
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %181, i32 %182, i32 %183, i64 %189)
  %191 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %192 = load i32, i32* @AR5K_PHY_DESIRED_SIZE, align 4
  %193 = load i32, i32* @AR5K_PHY_DESIRED_SIZE_PGA, align 4
  %194 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %195 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %194, i32 0, i32 11
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* %7, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %191, i32 %192, i32 %193, i64 %199)
  %201 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %202 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @AR5K_EEPROM_VERSION_4_1, align 8
  %205 = icmp sge i64 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %160
  %207 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %208 = load i32, i32* @AR5K_PHY_GAIN_2GHZ, align 4
  %209 = load i32, i32* @AR5K_PHY_GAIN_2GHZ_MARGIN_TXRX, align 4
  %210 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %211 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %210, i32 0, i32 10
  %212 = load i64*, i64** %211, align 8
  %213 = load i64, i64* %7, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %207, i32 %208, i32 %209, i64 %215)
  br label %217

217:                                              ; preds = %206, %160
  br label %218

218:                                              ; preds = %217, %109
  %219 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %220 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %221 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* %7, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = shl i32 %225, 24
  %227 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %228 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %7, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 16
  %234 = or i32 %226, %233
  %235 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %236 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* %7, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 8
  %242 = or i32 %234, %241
  %243 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %244 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %7, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %242, %248
  %250 = load i32, i32* @AR5K_PHY_RF_CTL4, align 4
  %251 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %219, i32 %249, i32 %250)
  %252 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %253 = load i32, i32* @AR5K_PHY_RF_CTL3, align 4
  %254 = load i32, i32* @AR5K_PHY_RF_CTL3_TXE2XLNA_ON, align 4
  %255 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %256 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %255, i32 0, i32 9
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* %7, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %252, i32 %253, i32 %254, i64 %260)
  %262 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %263 = load i32, i32* @AR5K_PHY_NF, align 4
  %264 = load i32, i32* @AR5K_PHY_NF_THRESH62, align 4
  %265 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %266 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %265, i32 0, i32 8
  %267 = load i64*, i64** %266, align 8
  %268 = load i64, i64* %7, align 8
  %269 = getelementptr inbounds i64, i64* %267, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %262, i32 %263, i32 %264, i64 %270)
  %272 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %273 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %274 = call i64 @ath5k_hw_chan_has_spur_noise(%struct.ath5k_hw* %272, %struct.ieee80211_channel* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %218
  %277 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %278 = load i32, i32* @AR5K_PHY_OFDM_SELFCORR, align 4
  %279 = load i32, i32* @AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1, align 4
  %280 = load i64, i64* @AR5K_INIT_CYCRSSI_THR1, align 8
  %281 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %282 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %281, i32 0, i32 7
  %283 = load i64*, i64** %282, align 8
  %284 = load i64, i64* %7, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %280, %286
  %288 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %277, i32 %278, i32 %279, i64 %287)
  br label %295

289:                                              ; preds = %218
  %290 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %291 = load i32, i32* @AR5K_PHY_OFDM_SELFCORR, align 4
  %292 = load i32, i32* @AR5K_PHY_OFDM_SELFCORR_CYPWR_THR1, align 4
  %293 = load i64, i64* @AR5K_INIT_CYCRSSI_THR1, align 8
  %294 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %290, i32 %291, i32 %292, i64 %293)
  br label %295

295:                                              ; preds = %289, %276
  %296 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %297 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %300 = icmp sge i64 %298, %299
  br i1 %300, label %301, label %326

301:                                              ; preds = %295
  %302 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %303 = load i32, i32* @AR5K_PHY_IQ, align 4
  %304 = load i32, i32* @AR5K_PHY_IQ_CORR_Q_I_COFF, align 4
  %305 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %306 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %305, i32 0, i32 6
  %307 = load i64*, i64** %306, align 8
  %308 = load i64, i64* %7, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %302, i32 %303, i32 %304, i64 %310)
  %312 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %313 = load i32, i32* @AR5K_PHY_IQ, align 4
  %314 = load i32, i32* @AR5K_PHY_IQ_CORR_Q_Q_COFF, align 4
  %315 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %316 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %315, i32 0, i32 5
  %317 = load i64*, i64** %316, align 8
  %318 = load i64, i64* %7, align 8
  %319 = getelementptr inbounds i64, i64* %317, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %312, i32 %313, i32 %314, i64 %320)
  %322 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %323 = load i32, i32* @AR5K_PHY_IQ, align 4
  %324 = load i32, i32* @AR5K_PHY_IQ_CORR_ENABLE, align 4
  %325 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %301, %295
  %327 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %328 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AR5K_EEPROM_VERSION_5_1, align 8
  %331 = icmp sge i64 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %326
  %333 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %334 = load i32, i32* @AR5K_PHY_HEAVY_CLIP_ENABLE, align 4
  %335 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %333, i32 0, i32 %334)
  br label %336

336:                                              ; preds = %16, %332, %326
  ret void
}

declare dso_local i64 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @ath5k_hw_set_antenna_switch(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @AR5K_PHY_NF_SVAL(i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i64) #1

declare dso_local i64 @ath5k_hw_chan_has_spur_noise(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
