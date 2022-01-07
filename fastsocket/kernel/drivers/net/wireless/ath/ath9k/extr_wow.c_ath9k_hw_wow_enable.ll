; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_hw_wow_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_hw_wow_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@AR_WA_RESET_EN = common dso_local global i32 0, align 4
@AR_WA_POR_SHORT = common dso_local global i32 0, align 4
@AR_WA_UNTIE_RESET_EN = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@AR9285_WA_DEFAULT = common dso_local global i32 0, align 4
@AR9280_WA_DEFAULT = common dso_local global i32 0, align 4
@AR_PMCTRL_HOST_PME_EN = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_PMCTRL_AUX_PWR_DET = common dso_local global i32 0, align 4
@AR_PMCTRL_WOW_PME_CLR = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_WOW_PAT_BACKOFF = common dso_local global i32 0, align 4
@AR_WOW_PATTERN = common dso_local global i32 0, align 4
@AR_WOW_CNT_AIFS_CNT = common dso_local global i32 0, align 4
@AR_WOW_CNT_SLOT_CNT = common dso_local global i32 0, align 4
@AR_WOW_CNT_KA_CNT = common dso_local global i32 0, align 4
@AR_WOW_COUNT = common dso_local global i32 0, align 4
@AH_WOW_BEACON_MISS = common dso_local global i32 0, align 4
@AR_WOW_BEACON_TIMO = common dso_local global i32 0, align 4
@AR_WOW_BEACON_TIMO_MAX = common dso_local global i32 0, align 4
@AR_WOW_BCN_TIMO = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_NEVER = common dso_local global i32 0, align 4
@KAL_TIMEOUT = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_TIMO = common dso_local global i32 0, align 4
@KAL_DELAY = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_DELAY = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_AUTO_DIS = common dso_local global i32 0, align 4
@AH_WOW_LINK_CHANGE = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_FAIL = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE_FAIL_DIS = common dso_local global i32 0, align 4
@AR_WOW_KEEP_ALIVE = common dso_local global i32 0, align 4
@AR_RSSI_THR = common dso_local global i32 0, align 4
@AR_RSSI_THR_BM_THR = common dso_local global i32 0, align 4
@AR_WOW_BMISSTHRESHOLD = common dso_local global i32 0, align 4
@AR_WOW_BEACON_FAIL_EN = common dso_local global i32 0, align 4
@AR_WOW_BEACON_FAIL = common dso_local global i32 0, align 4
@AR_WOW_BCN_EN = common dso_local global i32 0, align 4
@AH_WOW_MAGIC_PATTERN_EN = common dso_local global i32 0, align 4
@AR_WOW_MAGIC_EN = common dso_local global i32 0, align 4
@AR_WOW_MAGIC_PAT_FOUND = common dso_local global i32 0, align 4
@AR_WOW_MAC_INTR_EN = common dso_local global i32 0, align 4
@AR_WOW_PATTERN_MATCH_LT_256B = common dso_local global i32 0, align 4
@AR_WOW_PATTERN_SUPPORTED = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_STATE_D1D3 = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_PMCTRL_PWR_STATE_D1D3_REAL = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_PRESERVE_SEQNUM = common dso_local global i32 0, align 4
@AR_PCIE_PHY_REG3 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_wow_enable(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* @AR_WA_RESET_EN, align 4
  %21 = load i32, i32* @AR_WA_POR_SHORT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @AR_WA_UNTIE_RESET_EN, align 4
  %24 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i32, i32* @AR_WA, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @REG_RMW(%struct.ath_hw* %26, i32 %27, i32 %28, i32 %29)
  br label %74

31:                                               ; preds = %15
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = call i64 @AR_SREV_9285(%struct.ath_hw* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = call i64 @AR_SREV_9287(%struct.ath_hw* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @AR9285_WA_DEFAULT, align 4
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @AR9280_WA_DEFAULT, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %43
  %56 = load i32, i32* @AR_WA_UNTIE_RESET_EN, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @AR_WA_RESET_EN, align 4
  %58 = load i32, i32* @AR_WA_POR_SHORT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR_WA, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @REG_RMW(%struct.ath_hw* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = call i32 @ath9k_hw_config_serdes_wow_sleep(%struct.ath_hw* %71)
  br label %73

73:                                               ; preds = %70, %55
  br label %74

74:                                               ; preds = %73, %19
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i32, i32* @AR_PMCTRL_HOST_PME_EN, align 4
  %77 = load i32, i32* @AR_PMCTRL_PWR_PM_CTRL_ENA, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @AR_PMCTRL_AUX_PWR_DET, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AR_PMCTRL_WOW_PME_CLR, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %84 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @REG_SET_BIT(%struct.ath_hw* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @AR_PMCTRL_WOW_PME_CLR, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %89 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @REG_CLR_BIT(%struct.ath_hw* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @AR_WOW_PAT_BACKOFF, align 4
  %93 = call i32 @AR_WOW_BACK_OFF_SHIFT(i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = load i32, i32* @AR_WOW_PATTERN, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @REG_SET_BIT(%struct.ath_hw* %94, i32 %95, i32 %96)
  %98 = load i32, i32* @AR_WOW_CNT_AIFS_CNT, align 4
  %99 = call i32 @AR_WOW_AIFS_CNT(i32 %98)
  %100 = load i32, i32* @AR_WOW_CNT_SLOT_CNT, align 4
  %101 = call i32 @AR_WOW_SLOT_CNT(i32 %100)
  %102 = or i32 %99, %101
  %103 = load i32, i32* @AR_WOW_CNT_KA_CNT, align 4
  %104 = call i32 @AR_WOW_KEEP_ALIVE_CNT(i32 %103)
  %105 = or i32 %102, %104
  store i32 %105, i32* %6, align 4
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = load i32, i32* @AR_WOW_COUNT, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @REG_SET_BIT(%struct.ath_hw* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %75
  %115 = load i32, i32* @AR_WOW_BEACON_TIMO, align 4
  store i32 %115, i32* %6, align 4
  br label %118

116:                                              ; preds = %75
  %117 = load i32, i32* @AR_WOW_BEACON_TIMO_MAX, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %120 = load i32, i32* @AR_WOW_BCN_TIMO, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @REG_WRITE(%struct.ath_hw* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %127 = call i64 @AR_SREV_9280(%struct.ath_hw* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %118
  %130 = load i32, i32* @AR_WOW_KEEP_ALIVE_NEVER, align 4
  store i32 %130, i32* %6, align 4
  br label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @KAL_TIMEOUT, align 4
  %133 = mul nsw i32 %132, 32
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %129
  %135 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %136 = load i32, i32* @AR_WOW_KEEP_ALIVE_TIMO, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @REG_WRITE(%struct.ath_hw* %135, i32 %136, i32 %137)
  %139 = load i32, i32* @KAL_DELAY, align 4
  %140 = mul nsw i32 %139, 1000
  store i32 %140, i32* %6, align 4
  %141 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %142 = load i32, i32* @AR_WOW_KEEP_ALIVE_DELAY, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @REG_WRITE(%struct.ath_hw* %141, i32 %142, i32 %143)
  %145 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %146 = call i32 @ath9k_wow_create_keep_alive_pattern(%struct.ath_hw* %145)
  store i32 0, i32* %6, align 4
  %147 = load i32, i32* @AR_WOW_KEEP_ALIVE_AUTO_DIS, align 4
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @AH_WOW_LINK_CHANGE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %134
  %153 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %158

156:                                              ; preds = %134
  %157 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL_DIS, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = load i32, i32* @AR_WOW_KEEP_ALIVE_FAIL_DIS, align 4
  store i32 %159, i32* %6, align 4
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = load i32, i32* @AR_WOW_KEEP_ALIVE, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @REG_RMW(%struct.ath_hw* %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %166 = load i32, i32* @AR_RSSI_THR, align 4
  %167 = load i32, i32* @AR_RSSI_THR_BM_THR, align 4
  %168 = load i32, i32* @AR_WOW_BMISSTHRESHOLD, align 4
  %169 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %165, i32 %166, i32 %167, i32 %168)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @AH_WOW_BEACON_MISS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %158
  %175 = load i32, i32* @AR_WOW_BEACON_FAIL_EN, align 4
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* @AR_WOW_BEACON_FAIL, align 4
  %177 = load i32, i32* %5, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %5, align 4
  br label %181

179:                                              ; preds = %158
  %180 = load i32, i32* @AR_WOW_BEACON_FAIL_EN, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %174
  %182 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %183 = load i32, i32* @AR_WOW_BCN_EN, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @REG_RMW(%struct.ath_hw* %182, i32 %183, i32 %184, i32 %185)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @AH_WOW_MAGIC_PATTERN_EN, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load i32, i32* @AR_WOW_MAGIC_EN, align 4
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* @AR_WOW_MAGIC_PAT_FOUND, align 4
  %194 = load i32, i32* %5, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %5, align 4
  br label %198

196:                                              ; preds = %181
  %197 = load i32, i32* @AR_WOW_MAGIC_EN, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %196, %191
  %199 = load i32, i32* @AR_WOW_MAC_INTR_EN, align 4
  %200 = load i32, i32* %6, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %6, align 4
  %202 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %203 = load i32, i32* @AR_WOW_PATTERN, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @REG_RMW(%struct.ath_hw* %202, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %208 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %198
  %211 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %212 = load i32, i32* @AR_WOW_PATTERN_MATCH_LT_256B, align 4
  %213 = load i32, i32* @AR_WOW_PATTERN_SUPPORTED, align 4
  %214 = call i32 @REG_WRITE(%struct.ath_hw* %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %210, %198
  store i32 0, i32* %7, align 4
  %216 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3, align 4
  %217 = load i32, i32* @AR_PMCTRL_HOST_PME_EN, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @AR_PMCTRL_PWR_PM_CTRL_ENA, align 4
  %220 = or i32 %218, %219
  store i32 %220, i32* %6, align 4
  %221 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %222 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %224, %215
  %227 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %228 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @REG_RMW(%struct.ath_hw* %227, i32 %228, i32 %229, i32 %230)
  %232 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %233 = call i64 @AR_SREV_9462(%struct.ath_hw* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %226
  %236 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %237 = call i64 @AR_SREV_9565(%struct.ath_hw* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %235, %226
  %240 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3, align 4
  store i32 %240, i32* %7, align 4
  %241 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %242 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @REG_CLR_BIT(%struct.ath_hw* %241, i32 %242, i32 %243)
  %245 = load i32, i32* @AR_PMCTRL_PWR_STATE_D1D3_REAL, align 4
  store i32 %245, i32* %6, align 4
  %246 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %247 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @REG_SET_BIT(%struct.ath_hw* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %239, %235
  %251 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %252 = load i32, i32* @AR_STA_ID1, align 4
  %253 = load i32, i32* @AR_STA_ID1_PRESERVE_SEQNUM, align 4
  %254 = call i32 @REG_CLR_BIT(%struct.ath_hw* %251, i32 %252, i32 %253)
  %255 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %256 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %250
  %259 = call i32 @BIT(i32 13)
  store i32 %259, i32* %6, align 4
  %260 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %261 = load i32, i32* @AR_PCIE_PHY_REG3, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @REG_SET_BIT(%struct.ath_hw* %260, i32 %261, i32 %262)
  %264 = call i32 @BIT(i32 5)
  store i32 %264, i32* %7, align 4
  %265 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %266 = load i32, i32* @AR_PCU_MISC_MODE3, align 4
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @REG_CLR_BIT(%struct.ath_hw* %265, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %258, %250
  %270 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %271 = call i32 @ath9k_hw_set_powermode_wow_sleep(%struct.ath_hw* %270)
  %272 = load i32, i32* %5, align 4
  %273 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %274 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  ret void
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_config_serdes_wow_sleep(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_WOW_BACK_OFF_SHIFT(i32) #1

declare dso_local i32 @AR_WOW_AIFS_CNT(i32) #1

declare dso_local i32 @AR_WOW_SLOT_CNT(i32) #1

declare dso_local i32 @AR_WOW_KEEP_ALIVE_CNT(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_wow_create_keep_alive_pattern(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath9k_hw_set_powermode_wow_sleep(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
