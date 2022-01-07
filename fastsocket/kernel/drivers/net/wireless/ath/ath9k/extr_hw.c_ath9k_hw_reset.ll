; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32, %struct.ath9k_hw_cal_data*, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i64 (%struct.ath_hw*, i32)* }
%struct.ath9k_channel = type { i64, i64, i64 }
%struct.ath9k_hw_cal_data = type { i64, i64, i64, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AR_DEF_ANTENNA = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_BASE_RATE_11B = common dso_local global i32 0, align 4
@EEP_OL_PWRCTRL = common dso_local global i32 0, align 4
@AR_CFG_LED = common dso_local global i32 0, align 4
@AR_CFG_LED_ASSOC_CTL = common dso_local global i32 0, align 4
@AR_CFG_LED_MODE_SEL = common dso_local global i32 0, align 4
@AR_CFG_LED_BLINK_THRESH_SEL = common dso_local global i32 0, align 4
@AR_CFG_LED_BLINK_SLOW = common dso_local global i32 0, align 4
@AR9271_RESET_POWER_DOWN_CONTROL = common dso_local global i32 0, align 4
@AR9271_RADIO_RF_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Chip reset failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR9271_GATE_MAC_CTL = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_JTAG_DISABLE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RFSILENT = common dso_local global i32 0, align 4
@AR_MAC_PCU_LOGIC_ANALYZER = common dso_local global i32 0, align 4
@AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768 = common dso_local global i32 0, align 4
@AR_AHB_MODE = common dso_local global i32 0, align 4
@AR_AHB_CUSTOM_BURST_EN = common dso_local global i32 0, align 4
@AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_ENABLE_AGGWEP = common dso_local global i32 0, align 4
@AR_STA_ID1_PRESERVE_SEQNUM = common dso_local global i32 0, align 4
@AR_OBS = common dso_local global i32 0, align 4
@AR_RIMT = common dso_local global i32 0, align 4
@AR_RIMT_LAST = common dso_local global i32 0, align 4
@AR_RIMT_FIRST = common dso_local global i32 0, align 4
@AR_TIMT = common dso_local global i32 0, align 4
@AR_TIMT_LAST = common dso_local global i32 0, align 4
@AR_TIMT_FIRST = common dso_local global i32 0, align 4
@AR_CFG_SCLK_32KHZ = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_LNADIV = common dso_local global i32 0, align 4
@AR_BTCOEX_WL_LNADIV_FORCE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_reset(%struct.ath_hw* %0, %struct.ath9k_channel* %1, %struct.ath9k_hw_cal_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca %struct.ath9k_hw_cal_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %7, align 8
  store %struct.ath9k_hw_cal_data* %2, %struct.ath9k_hw_cal_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %10, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %24 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %28 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %29 = call i32 @ar9003_mci_start_reset(%struct.ath_hw* %27, %struct.ath9k_channel* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %495

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %36 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %37 = call i32 @ath9k_hw_setpower(%struct.ath_hw* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %495

42:                                               ; preds = %34
  %43 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 11
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 11
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ath9k_hw_getnf(%struct.ath_hw* %53, i64 %56)
  br label %58

58:                                               ; preds = %52, %47, %42
  %59 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %60 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %61 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %60, i32 0, i32 10
  store %struct.ath9k_hw_cal_data* %59, %struct.ath9k_hw_cal_data** %61, align 8
  %62 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %63 = icmp ne %struct.ath9k_hw_cal_data* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %58
  %65 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %66 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %69 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %88, label %72

72:                                               ; preds = %64
  %73 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %74 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %77 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %82 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %85 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %80, %72, %64
  %89 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %90 = call i32 @memset(%struct.ath9k_hw_cal_data* %89, i32 0, i32 40)
  %91 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %92 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %93 = call i32 @ath9k_init_nfcal_hist_buffer(%struct.ath_hw* %91, %struct.ath9k_channel* %92)
  br label %101

94:                                               ; preds = %80, %58
  %95 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %96 = icmp ne %struct.ath9k_hw_cal_data* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %99 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %98, i32 0, i32 3
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %88
  %102 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %103 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %104 = call i32 @ath9k_hw_getchan_noise(%struct.ath_hw* %102, %struct.ath9k_channel* %103)
  %105 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %106 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %111 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %112 = call i32 @ath9k_hw_do_fastcc(%struct.ath_hw* %110, %struct.ath9k_channel* %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %5, align 4
  br label %495

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %120 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @ar9003_mci_stop_bt(%struct.ath_hw* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %128 = load i32, i32* @AR_DEF_ANTENNA, align 4
  %129 = call i32 @REG_READ(%struct.ath_hw* %127, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 1, i32* %12, align 4
  br label %133

133:                                              ; preds = %132, %126
  %134 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %135 = load i32, i32* @AR_STA_ID1, align 4
  %136 = call i32 @REG_READ(%struct.ath_hw* %134, i32 %135)
  %137 = load i32, i32* @AR_STA_ID1_BASE_RATE_11B, align 4
  %138 = and i32 %136, %137
  store i32 %138, i32* %13, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %140 = call i64 @AR_SREV_9100(%struct.ath_hw* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %133
  %143 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %144 = call i64 @AR_SREV_9280(%struct.ath_hw* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %148 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %147, i32 0, i32 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64 (%struct.ath_hw*, i32)*, i64 (%struct.ath_hw*, i32)** %150, align 8
  %152 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %153 = load i32, i32* @EEP_OL_PWRCTRL, align 4
  %154 = call i64 %151(%struct.ath_hw* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146, %133
  %157 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %158 = call i64 @ath9k_hw_gettsf64(%struct.ath_hw* %157)
  store i64 %158, i64* %14, align 8
  br label %159

159:                                              ; preds = %156, %146, %142
  %160 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %161 = load i32, i32* @AR_CFG_LED, align 4
  %162 = call i32 @REG_READ(%struct.ath_hw* %160, i32 %161)
  %163 = load i32, i32* @AR_CFG_LED_ASSOC_CTL, align 4
  %164 = load i32, i32* @AR_CFG_LED_MODE_SEL, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @AR_CFG_LED_BLINK_THRESH_SEL, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @AR_CFG_LED_BLINK_SLOW, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %162, %169
  store i32 %170, i32* %11, align 4
  %171 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %172 = call i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw* %171)
  %173 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %174 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %176 = call i64 @AR_SREV_9271(%struct.ath_hw* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %159
  %179 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %180 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %185 = load i32, i32* @AR9271_RESET_POWER_DOWN_CONTROL, align 4
  %186 = load i32, i32* @AR9271_RADIO_RF_RST, align 4
  %187 = call i32 @REG_WRITE(%struct.ath_hw* %184, i32 %185, i32 %186)
  %188 = call i32 @udelay(i32 50)
  br label %189

189:                                              ; preds = %183, %178, %159
  %190 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %191 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %192 = call i32 @ath9k_hw_chip_reset(%struct.ath_hw* %190, %struct.ath9k_channel* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %196 = call i32 @ath_err(%struct.ath_common* %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %5, align 4
  br label %495

199:                                              ; preds = %189
  %200 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %201 = call i64 @AR_SREV_9271(%struct.ath_hw* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %199
  %204 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %205 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %210 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %209, i32 0, i32 2
  store i32 0, i32* %210, align 8
  %211 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %212 = load i32, i32* @AR9271_RESET_POWER_DOWN_CONTROL, align 4
  %213 = load i32, i32* @AR9271_GATE_MAC_CTL, align 4
  %214 = call i32 @REG_WRITE(%struct.ath_hw* %211, i32 %212, i32 %213)
  %215 = call i32 @udelay(i32 50)
  br label %216

216:                                              ; preds = %208, %203, %199
  %217 = load i64, i64* %14, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %221 = load i64, i64* %14, align 8
  %222 = call i32 @ath9k_hw_settsf64(%struct.ath_hw* %220, i64 %221)
  br label %223

223:                                              ; preds = %219, %216
  %224 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %225 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %229 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %230 = load i32, i32* @AR_GPIO_JTAG_DISABLE, align 4
  %231 = call i32 @REG_SET_BIT(%struct.ath_hw* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %223
  %233 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %234 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %238 = call i32 @ar9002_hw_enable_async_fifo(%struct.ath_hw* %237)
  br label %239

239:                                              ; preds = %236, %232
  %240 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %241 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %242 = call i32 @ath9k_hw_process_ini(%struct.ath_hw* %240, %struct.ath9k_channel* %241)
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load i32, i32* %15, align 4
  store i32 %246, i32* %5, align 4
  br label %495

247:                                              ; preds = %239
  %248 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %249 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %247
  %252 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %253 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %254 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %253)
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @ar9003_mci_reset(%struct.ath_hw* %252, i32 0, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %251, %247
  %258 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %259 = call i64 @AR_SREV_9100(%struct.ath_hw* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %263 = call i64 @ath9k_hw_gettsf64(%struct.ath_hw* %262)
  %264 = load i64, i64* %14, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load i64, i64* %14, align 8
  %268 = add nsw i64 %267, 1500
  store i64 %268, i64* %14, align 8
  %269 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %270 = load i64, i64* %14, align 8
  %271 = call i32 @ath9k_hw_settsf64(%struct.ath_hw* %269, i64 %270)
  br label %272

272:                                              ; preds = %266, %261, %257
  %273 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %274 = call i32 @ath9k_hw_init_mfp(%struct.ath_hw* %273)
  %275 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %276 = call i64 @IS_CHAN_OFDM(%struct.ath9k_channel* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %272
  %279 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %280 = call i64 @IS_CHAN_HT(%struct.ath9k_channel* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %278, %272
  %283 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %284 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %285 = call i32 @ath9k_hw_set_delta_slope(%struct.ath_hw* %283, %struct.ath9k_channel* %284)
  br label %286

286:                                              ; preds = %282, %278
  %287 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %288 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %289 = call i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw* %287, %struct.ath9k_channel* %288)
  %290 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %291 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %290, i32 0, i32 8
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %293, align 8
  %295 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %296 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %297 = call i32 %294(%struct.ath_hw* %295, %struct.ath9k_channel* %296)
  %298 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @ath9k_hw_reset_opmode(%struct.ath_hw* %298, i32 %299, i32 %300)
  %302 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %303 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %304 = call i32 @ath9k_hw_rf_set_freq(%struct.ath_hw* %302, %struct.ath9k_channel* %303)
  store i32 %304, i32* %15, align 4
  %305 = load i32, i32* %15, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %286
  %308 = load i32, i32* %15, align 4
  store i32 %308, i32* %5, align 4
  br label %495

309:                                              ; preds = %286
  %310 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %311 = call i32 @ath9k_hw_set_clockrate(%struct.ath_hw* %310)
  %312 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %313 = call i32 @ath9k_hw_init_queues(%struct.ath_hw* %312)
  %314 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %315 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %316 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @ath9k_hw_init_interrupt_masks(%struct.ath_hw* %314, i32 %317)
  %319 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %320 = call i32 @ath9k_hw_ani_cache_ini_regs(%struct.ath_hw* %319)
  %321 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %322 = call i32 @ath9k_hw_init_qos(%struct.ath_hw* %321)
  %323 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %324 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %323, i32 0, i32 6
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @ATH9K_HW_CAP_RFSILENT, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %309
  %331 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %332 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %333 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @ath9k_hw_cfg_gpio_input(%struct.ath_hw* %331, i32 %334)
  br label %336

336:                                              ; preds = %330, %309
  %337 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %338 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %337)
  %339 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %340 = call i64 @AR_SREV_9287(%struct.ath_hw* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %360

342:                                              ; preds = %336
  %343 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %344 = call i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %360

346:                                              ; preds = %342
  %347 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %348 = load i32, i32* @AR_MAC_PCU_LOGIC_ANALYZER, align 4
  %349 = load i32, i32* @AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768, align 4
  %350 = call i32 @REG_SET_BIT(%struct.ath_hw* %347, i32 %348, i32 %349)
  %351 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %352 = load i32, i32* @AR_AHB_MODE, align 4
  %353 = load i32, i32* @AR_AHB_CUSTOM_BURST_EN, align 4
  %354 = load i32, i32* @AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL, align 4
  %355 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %351, i32 %352, i32 %353, i32 %354)
  %356 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %357 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %358 = load i32, i32* @AR_PCU_MISC_MODE2_ENABLE_AGGWEP, align 4
  %359 = call i32 @REG_SET_BIT(%struct.ath_hw* %356, i32 %357, i32 %358)
  br label %360

360:                                              ; preds = %346, %342, %336
  %361 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %362 = load i32, i32* @AR_STA_ID1, align 4
  %363 = load i32, i32* @AR_STA_ID1_PRESERVE_SEQNUM, align 4
  %364 = call i32 @REG_SET_BIT(%struct.ath_hw* %361, i32 %362, i32 %363)
  %365 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %366 = call i32 @ath9k_hw_set_dma(%struct.ath_hw* %365)
  %367 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %368 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %360
  %371 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %372 = load i32, i32* @AR_OBS, align 4
  %373 = call i32 @REG_WRITE(%struct.ath_hw* %371, i32 %372, i32 8)
  br label %374

374:                                              ; preds = %370, %360
  %375 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %376 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %374
  %381 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %382 = load i32, i32* @AR_RIMT, align 4
  %383 = load i32, i32* @AR_RIMT_LAST, align 4
  %384 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %381, i32 %382, i32 %383, i32 500)
  %385 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %386 = load i32, i32* @AR_RIMT, align 4
  %387 = load i32, i32* @AR_RIMT_FIRST, align 4
  %388 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %385, i32 %386, i32 %387, i32 2000)
  br label %389

389:                                              ; preds = %380, %374
  %390 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %391 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %390, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %389
  %396 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %397 = load i32, i32* @AR_TIMT, align 4
  %398 = load i32, i32* @AR_TIMT_LAST, align 4
  %399 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %396, i32 %397, i32 %398, i32 300)
  %400 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %401 = load i32, i32* @AR_TIMT, align 4
  %402 = load i32, i32* @AR_TIMT_FIRST, align 4
  %403 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %400, i32 %401, i32 %402, i32 750)
  br label %404

404:                                              ; preds = %395, %389
  %405 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %406 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %407 = call i32 @ath9k_hw_init_bb(%struct.ath_hw* %405, %struct.ath9k_channel* %406)
  %408 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %409 = icmp ne %struct.ath9k_hw_cal_data* %408, null
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %412 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %411, i32 0, i32 4
  store i32 0, i32* %412, align 4
  %413 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %414 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %413, i32 0, i32 5
  store i32 0, i32* %414, align 8
  br label %415

415:                                              ; preds = %410, %404
  %416 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %417 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %418 = call i32 @ath9k_hw_init_cal(%struct.ath_hw* %416, %struct.ath9k_channel* %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %415
  %421 = load i32, i32* @EIO, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %5, align 4
  br label %495

423:                                              ; preds = %415
  %424 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %425 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %436

427:                                              ; preds = %423
  %428 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %429 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %430 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %8, align 8
  %431 = call i64 @ar9003_mci_end_reset(%struct.ath_hw* %428, %struct.ath9k_channel* %429, %struct.ath9k_hw_cal_data* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %427
  %434 = load i32, i32* @EIO, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %5, align 4
  br label %495

436:                                              ; preds = %427, %423
  %437 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %438 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %437)
  %439 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %440 = call i32 @ath9k_hw_restore_chainmask(%struct.ath_hw* %439)
  %441 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %442 = load i32, i32* @AR_CFG_LED, align 4
  %443 = load i32, i32* %11, align 4
  %444 = load i32, i32* @AR_CFG_SCLK_32KHZ, align 4
  %445 = or i32 %443, %444
  %446 = call i32 @REG_WRITE(%struct.ath_hw* %441, i32 %442, i32 %445)
  %447 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %448 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %447)
  %449 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %450 = call i32 @ath9k_hw_init_desc(%struct.ath_hw* %449)
  %451 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %452 = call i64 @ath9k_hw_btcoex_is_enabled(%struct.ath_hw* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %436
  %455 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %456 = call i32 @ath9k_hw_btcoex_enable(%struct.ath_hw* %455)
  br label %457

457:                                              ; preds = %454, %436
  %458 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %459 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %463 = call i32 @ar9003_mci_check_bt(%struct.ath_hw* %462)
  br label %464

464:                                              ; preds = %461, %457
  %465 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %466 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %467 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %465, %struct.ath9k_channel* %466)
  %468 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %469 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %468, i32 1)
  %470 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %471 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %478

473:                                              ; preds = %464
  %474 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %475 = call i32 @ar9003_hw_bb_watchdog_config(%struct.ath_hw* %474)
  %476 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %477 = call i32 @ar9003_hw_disable_phy_restart(%struct.ath_hw* %476)
  br label %478

478:                                              ; preds = %473, %464
  %479 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %480 = call i32 @ath9k_hw_apply_gpio_override(%struct.ath_hw* %479)
  %481 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %482 = call i64 @AR_SREV_9565(%struct.ath_hw* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %494

484:                                              ; preds = %478
  %485 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %486 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %485, i32 0, i32 3
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %494

489:                                              ; preds = %484
  %490 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %491 = load i32, i32* @AR_BTCOEX_WL_LNADIV, align 4
  %492 = load i32, i32* @AR_BTCOEX_WL_LNADIV_FORCE_ON, align 4
  %493 = call i32 @REG_SET_BIT(%struct.ath_hw* %490, i32 %491, i32 %492)
  br label %494

494:                                              ; preds = %489, %484, %478
  store i32 0, i32* %5, align 4
  br label %495

495:                                              ; preds = %494, %433, %420, %307, %245, %194, %115, %39, %32
  %496 = load i32, i32* %5, align 4
  ret i32 %496
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_start_reset(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_setpower(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_getnf(%struct.ath_hw*, i64) #1

declare dso_local i32 @memset(%struct.ath9k_hw_cal_data*, i32, i32) #1

declare dso_local i32 @ath9k_init_nfcal_hist_buffer(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_getchan_noise(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_do_fastcc(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_stop_bt(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_chip_reset(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_hw_settsf64(%struct.ath_hw*, i64) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_enable_async_fifo(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_process_ini(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_reset(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_init_mfp(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_OFDM(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_delta_slope(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_reset_opmode(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_rf_set_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_clockrate(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_queues(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_interrupt_masks(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_ani_cache_ini_regs(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_qos(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_cfg_gpio_input(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_dma(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_bb(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_init_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @ar9003_mci_end_reset(%struct.ath_hw*, %struct.ath9k_channel*, %struct.ath9k_hw_cal_data*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_restore_chainmask(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_desc(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_btcoex_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_enable(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_check_bt(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_hw_bb_watchdog_config(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_disable_phy_restart(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_apply_gpio_override(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
