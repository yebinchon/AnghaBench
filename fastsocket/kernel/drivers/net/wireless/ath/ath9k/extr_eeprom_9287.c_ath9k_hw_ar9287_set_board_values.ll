; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_board_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.modal_eep_ar9287_header }
%struct.modal_eep_ar9287_header = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ath9k_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR9287_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_GAIN_2GHZ_XATTEN1_DB = common dso_local global i32 0, align 4
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR9280_PHY_RXGAIN_TXRX_ATTEN = common dso_local global i32 0, align 4
@AR9280_PHY_RXGAIN_TXRX_MARGIN = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i64 0, align 8
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i64 0, align 8
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i64 0, align 8
@AR_PHY_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR_PHY_CCA = common dso_local global i64 0, align 8
@AR9280_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0 = common dso_local global i64 0, align 8
@AR_PHY_EXT_CCA0_THRESH62 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_CH0 = common dso_local global i64 0, align 8
@AR9287_AN_RF2G3_DB1 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_DB2 = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_CCK = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_PSK = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_QAM = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_OB_PAL_OFF = common dso_local global i32 0, align 4
@AR9287_AN_RF2G3_CH1 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL2 = common dso_local global i64 0, align 8
@AR_PHY_TX_END_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_END_PA_ON = common dso_local global i32 0, align 4
@AR9287_AN_TOP2 = common dso_local global i32 0, align 4
@AR9287_AN_TOP2_XPABIAS_LVL = common dso_local global i32 0, align 4
@AR9287_AN_TOP2_XPABIAS_LVL_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_ar9287_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ar9287_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ar9287_eeprom*, align 8
  %6 = alloca %struct.modal_eep_ar9287_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ar9287_eeprom* %13, %struct.ar9287_eeprom** %5, align 8
  %14 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %5, align 8
  %15 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %14, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %15, %struct.modal_eep_ar9287_header** %6, align 8
  %16 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %5, align 8
  %17 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %16, i32 0, i32 0
  store %struct.modal_eep_ar9287_header* %17, %struct.modal_eep_ar9287_header** %6, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %20 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %21 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %18, i64 %19, i32 %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %138, %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @AR9287_MAX_CHAINS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %141

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 4096
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %37 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REG_WRITE(%struct.ath_hw* %31, i64 %35, i32 %42)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @REG_READ(%struct.ath_hw* %49, i64 %53)
  %55 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %56 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %61 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %60, i32 0, i32 23
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %68 = call i32 @SM(i32 %66, i32 %67)
  %69 = or i32 %59, %68
  %70 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %71 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %70, i32 0, i32 22
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %78 = call i32 @SM(i32 %76, i32 %77)
  %79 = or i32 %69, %78
  %80 = call i32 @REG_WRITE(%struct.ath_hw* %44, i64 %48, i32 %79)
  %81 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %82 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %81, i32 0, i32 21
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %89 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, align 4
  %94 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %95 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %94, i32 0, i32 20
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %88, i64 %92, i32 %93, i32 %100)
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i32, i32* @AR_PHY_GAIN_2GHZ_XATTEN1_DB, align 4
  %108 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %109 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %108, i32 0, i32 19
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %102, i64 %106, i32 %107, i32 %114)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %117 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_ATTEN, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %116, i64 %120, i32 %121, i32 %122)
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = load i32, i32* @AR9280_PHY_RXGAIN_TXRX_MARGIN, align 4
  %130 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %131 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %130, i32 0, i32 18
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %124, i64 %128, i32 %129, i32 %136)
  br label %138

138:                                              ; preds = %28
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %24

141:                                              ; preds = %24
  %142 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %143 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %147 = load i64, i64* @AR_PHY_SETTLING, align 8
  %148 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %149 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %150 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %149, i32 0, i32 17
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %146, i64 %147, i32 %148, i32 %151)
  br label %161

153:                                              ; preds = %141
  %154 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %155 = load i64, i64* @AR_PHY_SETTLING, align 8
  %156 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %157 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %158 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %157, i32 0, i32 16
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %154, i64 %155, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %153, %145
  %162 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %163 = load i64, i64* @AR_PHY_DESIRED_SZ, align 8
  %164 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %165 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %166 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %165, i32 0, i32 15
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %162, i64 %163, i32 %164, i32 %167)
  %169 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %170 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %171 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %172 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %175 = call i32 @SM(i32 %173, i32 %174)
  %176 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %177 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %176, i32 0, i32 14
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %180 = call i32 @SM(i32 %178, i32 %179)
  %181 = or i32 %175, %180
  %182 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %183 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %182, i32 0, i32 13
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %186 = call i32 @SM(i32 %184, i32 %185)
  %187 = or i32 %181, %186
  %188 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %189 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %188, i32 0, i32 13
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %192 = call i32 @SM(i32 %190, i32 %191)
  %193 = or i32 %187, %192
  %194 = call i32 @REG_WRITE(%struct.ath_hw* %169, i64 %170, i32 %193)
  %195 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %196 = load i64, i64* @AR_PHY_RF_CTL3, align 8
  %197 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %198 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %199 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %198, i32 0, i32 12
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %195, i64 %196, i32 %197, i32 %200)
  %202 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %203 = load i64, i64* @AR_PHY_CCA, align 8
  %204 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %205 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %206 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %202, i64 %203, i32 %204, i32 %207)
  %209 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %210 = load i64, i64* @AR_PHY_EXT_CCA0, align 8
  %211 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %212 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %213 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %212, i32 0, i32 11
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %209, i64 %210, i32 %211, i32 %214)
  %216 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %217 = load i64, i64* @AR9287_AN_RF2G3_CH0, align 8
  %218 = call i32 @REG_READ(%struct.ath_hw* %216, i64 %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %220 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %229 = or i32 %227, %228
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %8, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %8, align 4
  %233 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %234 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %237 = call i32 @SM(i32 %235, i32 %236)
  %238 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %239 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %242 = call i32 @SM(i32 %240, i32 %241)
  %243 = or i32 %237, %242
  %244 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %245 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %248 = call i32 @SM(i32 %246, i32 %247)
  %249 = or i32 %243, %248
  %250 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %251 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %254 = call i32 @SM(i32 %252, i32 %253)
  %255 = or i32 %249, %254
  %256 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %257 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %260 = call i32 @SM(i32 %258, i32 %259)
  %261 = or i32 %255, %260
  %262 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %263 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %266 = call i32 @SM(i32 %264, i32 %265)
  %267 = or i32 %261, %266
  %268 = load i32, i32* %8, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %8, align 4
  %270 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %271 = load i64, i64* @AR9287_AN_RF2G3_CH0, align 8
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @ath9k_hw_analog_shift_regwrite(%struct.ath_hw* %270, i64 %271, i32 %272)
  %274 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %275 = load i64, i64* @AR9287_AN_RF2G3_CH1, align 8
  %276 = call i32 @REG_READ(%struct.ath_hw* %274, i64 %275)
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %278 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %287 = or i32 %285, %286
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %8, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %8, align 4
  %291 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %292 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @AR9287_AN_RF2G3_DB1, align 4
  %295 = call i32 @SM(i32 %293, i32 %294)
  %296 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %297 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @AR9287_AN_RF2G3_DB2, align 4
  %300 = call i32 @SM(i32 %298, i32 %299)
  %301 = or i32 %295, %300
  %302 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %303 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @AR9287_AN_RF2G3_OB_CCK, align 4
  %306 = call i32 @SM(i32 %304, i32 %305)
  %307 = or i32 %301, %306
  %308 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %309 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @AR9287_AN_RF2G3_OB_PSK, align 4
  %312 = call i32 @SM(i32 %310, i32 %311)
  %313 = or i32 %307, %312
  %314 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %315 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @AR9287_AN_RF2G3_OB_QAM, align 4
  %318 = call i32 @SM(i32 %316, i32 %317)
  %319 = or i32 %313, %318
  %320 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %321 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @AR9287_AN_RF2G3_OB_PAL_OFF, align 4
  %324 = call i32 @SM(i32 %322, i32 %323)
  %325 = or i32 %319, %324
  %326 = load i32, i32* %8, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %8, align 4
  %328 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %329 = load i64, i64* @AR9287_AN_RF2G3_CH1, align 8
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @ath9k_hw_analog_shift_regwrite(%struct.ath_hw* %328, i64 %329, i32 %330)
  %332 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %333 = load i64, i64* @AR_PHY_RF_CTL2, align 8
  %334 = load i32, i32* @AR_PHY_TX_END_DATA_START, align 4
  %335 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %336 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %332, i64 %333, i32 %334, i32 %337)
  %339 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %340 = load i64, i64* @AR_PHY_RF_CTL2, align 8
  %341 = load i32, i32* @AR_PHY_TX_END_PA_ON, align 4
  %342 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %343 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %339, i64 %340, i32 %341, i32 %344)
  %346 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %347 = load i32, i32* @AR9287_AN_TOP2, align 4
  %348 = load i32, i32* @AR9287_AN_TOP2_XPABIAS_LVL, align 4
  %349 = load i32, i32* @AR9287_AN_TOP2_XPABIAS_LVL_S, align 4
  %350 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %6, align 8
  %351 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %346, i32 %347, i32 %348, i32 %349, i32 %352)
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i64 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i64, i32, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_analog_shift_regwrite(%struct.ath_hw*, i64, i32) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
