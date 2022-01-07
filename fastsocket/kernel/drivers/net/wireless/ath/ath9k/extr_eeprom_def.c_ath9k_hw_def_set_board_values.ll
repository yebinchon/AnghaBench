; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_board_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.TYPE_4__, %struct.modal_eep_header* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.modal_eep_header = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.ath9k_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0 = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_OB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_OB_S = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_DB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH0_DB_S = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1 = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_OB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_OB_S = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_DB = common dso_local global i32 0, align 4
@AR_AN_RF2G1_CH1_DB_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_OB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_OB5_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_DB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH0_DB5_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_OB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_OB5_S = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_DB5 = common dso_local global i32 0, align 4
@AR_AN_RF5G1_CH1_DB5_S = common dso_local global i32 0, align 4
@AR_AN_TOP2 = common dso_local global i32 0, align 4
@AR_AN_TOP2_XPABIAS_LVL = common dso_local global i32 0, align 4
@AR_AN_TOP2_XPABIAS_LVL_S = common dso_local global i32 0, align 4
@AR_AN_TOP2_LOCALBIAS = common dso_local global i32 0, align 4
@AR_AN_TOP2_LOCALBIAS_S = common dso_local global i32 0, align 4
@LNA_CTL_LOCAL_BIAS = common dso_local global i32 0, align 4
@AR_PHY_XPA_CFG = common dso_local global i32 0, align 4
@AR_PHY_FORCE_XPA_CFG = common dso_local global i32 0, align 4
@LNA_CTL_FORCE_XPA = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_PGA = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAA_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4_FRAME_XPAB_ON = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_TO_A2_RX_ON = common dso_local global i32 0, align 4
@AR_PHY_CCA = common dso_local global i32 0, align 4
@AR9280_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA0_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA_THRESH62 = common dso_local global i32 0, align 4
@AR5416_VER_MASK = common dso_local global i64 0, align 8
@AR5416_EEP_MINOR_VER_2 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_END_PA_ON = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i64 0, align 8
@AR5416_EEP_MINOR_VER_19 = common dso_local global i64 0, align 8
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_20 = common dso_local global i64 0, align 8
@AR_AN_TOP1 = common dso_local global i32 0, align 4
@AR_AN_TOP1_DACIPMODE = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL_TX_CLIP = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_TX_DESIRED_SCALE_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_def_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_def_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.modal_eep_header*, align 8
  %6 = alloca %struct.ar5416_eeprom_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %12, %struct.ar5416_eeprom_def** %6, align 8
  %13 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %14 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %13, i32 0, i32 1
  %15 = load %struct.modal_eep_header*, %struct.modal_eep_header** %14, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %15, i64 %18
  store %struct.modal_eep_header* %19, %struct.modal_eep_header** %5, align 8
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %21 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %20)
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 23, i32 44
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %27 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %28 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 65535
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %25, i64 %26, i32 %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %124, %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %127

36:                                               ; preds = %32
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i64 @AR_SREV_9280(%struct.ath_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %127

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %36
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %63

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 8192, i32 4096
  store i32 %62, i32* %8, align 4
  br label %66

63:                                               ; preds = %55, %50
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 4096
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %73 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REG_WRITE(%struct.ath_hw* %67, i64 %71, i32 %78)
  %80 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %81 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %86 = call i64 @AR_PHY_TIMING_CTRL4(i32 0)
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @REG_READ(%struct.ath_hw* %85, i64 %89)
  %91 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %92 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %90, %94
  %96 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %97 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %96, i32 0, i32 20
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF, align 4
  %104 = call i32 @SM(i32 %102, i32 %103)
  %105 = or i32 %95, %104
  %106 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %107 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %106, i32 0, i32 19
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF, align 4
  %114 = call i32 @SM(i32 %112, i32 %113)
  %115 = or i32 %105, %114
  %116 = call i32 @REG_WRITE(%struct.ath_hw* %80, i64 %84, i32 %115)
  %117 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %118 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %119 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ath9k_hw_def_set_gain(%struct.ath_hw* %117, %struct.modal_eep_header* %118, %struct.ar5416_eeprom_def* %119, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %66
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %32

127:                                              ; preds = %43, %32
  %128 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %129 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %237

131:                                              ; preds = %127
  %132 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %133 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %131
  %136 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %137 = load i32, i32* @AR_AN_RF2G1_CH0, align 4
  %138 = load i32, i32* @AR_AN_RF2G1_CH0_OB, align 4
  %139 = load i32, i32* @AR_AN_RF2G1_CH0_OB_S, align 4
  %140 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %141 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %136, i32 %137, i32 %138, i32 %139, i32 %142)
  %144 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %145 = load i32, i32* @AR_AN_RF2G1_CH0, align 4
  %146 = load i32, i32* @AR_AN_RF2G1_CH0_DB, align 4
  %147 = load i32, i32* @AR_AN_RF2G1_CH0_DB_S, align 4
  %148 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %149 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %144, i32 %145, i32 %146, i32 %147, i32 %150)
  %152 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %153 = load i32, i32* @AR_AN_RF2G1_CH1, align 4
  %154 = load i32, i32* @AR_AN_RF2G1_CH1_OB, align 4
  %155 = load i32, i32* @AR_AN_RF2G1_CH1_OB_S, align 4
  %156 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %157 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %152, i32 %153, i32 %154, i32 %155, i32 %158)
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = load i32, i32* @AR_AN_RF2G1_CH1, align 4
  %162 = load i32, i32* @AR_AN_RF2G1_CH1_DB, align 4
  %163 = load i32, i32* @AR_AN_RF2G1_CH1_DB_S, align 4
  %164 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %165 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %160, i32 %161, i32 %162, i32 %163, i32 %166)
  br label %201

168:                                              ; preds = %131
  %169 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %170 = load i32, i32* @AR_AN_RF5G1_CH0, align 4
  %171 = load i32, i32* @AR_AN_RF5G1_CH0_OB5, align 4
  %172 = load i32, i32* @AR_AN_RF5G1_CH0_OB5_S, align 4
  %173 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %174 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %169, i32 %170, i32 %171, i32 %172, i32 %175)
  %177 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %178 = load i32, i32* @AR_AN_RF5G1_CH0, align 4
  %179 = load i32, i32* @AR_AN_RF5G1_CH0_DB5, align 4
  %180 = load i32, i32* @AR_AN_RF5G1_CH0_DB5_S, align 4
  %181 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %182 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %177, i32 %178, i32 %179, i32 %180, i32 %183)
  %185 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %186 = load i32, i32* @AR_AN_RF5G1_CH1, align 4
  %187 = load i32, i32* @AR_AN_RF5G1_CH1_OB5, align 4
  %188 = load i32, i32* @AR_AN_RF5G1_CH1_OB5_S, align 4
  %189 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %190 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %185, i32 %186, i32 %187, i32 %188, i32 %191)
  %193 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %194 = load i32, i32* @AR_AN_RF5G1_CH1, align 4
  %195 = load i32, i32* @AR_AN_RF5G1_CH1_DB5, align 4
  %196 = load i32, i32* @AR_AN_RF5G1_CH1_DB5_S, align 4
  %197 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %198 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %193, i32 %194, i32 %195, i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %168, %135
  %202 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %203 = load i32, i32* @AR_AN_TOP2, align 4
  %204 = load i32, i32* @AR_AN_TOP2_XPABIAS_LVL, align 4
  %205 = load i32, i32* @AR_AN_TOP2_XPABIAS_LVL_S, align 4
  %206 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %207 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %202, i32 %203, i32 %204, i32 %205, i32 %208)
  %210 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %211 = load i32, i32* @AR_AN_TOP2, align 4
  %212 = load i32, i32* @AR_AN_TOP2_LOCALBIAS, align 4
  %213 = load i32, i32* @AR_AN_TOP2_LOCALBIAS_S, align 4
  %214 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %215 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @LNA_CTL_LOCAL_BIAS, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %210, i32 %211, i32 %212, i32 %213, i32 %222)
  %224 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %225 = load i32, i32* @AR_PHY_XPA_CFG, align 4
  %226 = load i32, i32* @AR_PHY_FORCE_XPA_CFG, align 4
  %227 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %228 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @LNA_CTL_FORCE_XPA, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %224, i32 %225, i32 %226, i32 %235)
  br label %237

237:                                              ; preds = %201, %127
  %238 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %239 = load i32, i32* @AR_PHY_SETTLING, align 4
  %240 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %241 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %242 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %238, i32 %239, i32 %240, i32 %243)
  %245 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %246 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %247 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %248 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %249 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %245, i32 %246, i32 %247, i32 %250)
  %252 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %253 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %237
  %256 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %257 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %258 = load i32, i32* @AR_PHY_DESIRED_SZ_PGA, align 4
  %259 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %260 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %259, i32 0, i32 10
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %256, i32 %257, i32 %258, i32 %261)
  br label %263

263:                                              ; preds = %255, %237
  %264 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %265 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %266 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %267 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %266, i32 0, i32 18
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %270 = call i32 @SM(i32 %268, i32 %269)
  %271 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %272 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %271, i32 0, i32 18
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %275 = call i32 @SM(i32 %273, i32 %274)
  %276 = or i32 %270, %275
  %277 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %278 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %277, i32 0, i32 17
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %281 = call i32 @SM(i32 %279, i32 %280)
  %282 = or i32 %276, %281
  %283 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %284 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %283, i32 0, i32 17
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %287 = call i32 @SM(i32 %285, i32 %286)
  %288 = or i32 %282, %287
  %289 = call i32 @REG_WRITE(%struct.ath_hw* %264, i64 %265, i32 %288)
  %290 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %291 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %292 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %293 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %294 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %290, i32 %291, i32 %292, i32 %295)
  %297 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %298 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %263
  %301 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %302 = load i32, i32* @AR_PHY_CCA, align 4
  %303 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %304 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %305 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %301, i32 %302, i32 %303, i32 %306)
  %308 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %309 = load i32, i32* @AR_PHY_EXT_CCA0, align 4
  %310 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %311 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %312 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %308, i32 %309, i32 %310, i32 %313)
  br label %330

315:                                              ; preds = %263
  %316 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %317 = load i32, i32* @AR_PHY_CCA, align 4
  %318 = load i32, i32* @AR_PHY_CCA_THRESH62, align 4
  %319 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %320 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %316, i32 %317, i32 %318, i32 %321)
  %323 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %324 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %325 = load i32, i32* @AR_PHY_EXT_CCA_THRESH62, align 4
  %326 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %327 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %326, i32 0, i32 12
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %323, i32 %324, i32 %325, i32 %328)
  br label %330

330:                                              ; preds = %315, %300
  %331 = load i64, i64* @AR5416_VER_MASK, align 8
  %332 = load i64, i64* @AR5416_EEP_MINOR_VER_2, align 8
  %333 = icmp sge i64 %331, %332
  br i1 %333, label %334, label %349

334:                                              ; preds = %330
  %335 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %336 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %337 = load i32, i32* @AR_PHY_TX_END_DATA_START, align 4
  %338 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %339 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %335, i32 %336, i32 %337, i32 %340)
  %342 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %343 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %344 = load i32, i32* @AR_PHY_TX_END_PA_ON, align 4
  %345 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %346 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %345, i32 0, i32 14
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %342, i32 %343, i32 %344, i32 %347)
  br label %349

349:                                              ; preds = %334, %330
  %350 = load i64, i64* @AR5416_VER_MASK, align 8
  %351 = load i64, i64* @AR5416_EEP_MINOR_VER_3, align 8
  %352 = icmp sge i64 %350, %351
  br i1 %352, label %353, label %366

353:                                              ; preds = %349
  %354 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %355 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %359 = load i32, i32* @AR_PHY_SETTLING, align 4
  %360 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %361 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %362 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %361, i32 0, i32 15
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %358, i32 %359, i32 %360, i32 %363)
  br label %365

365:                                              ; preds = %357, %353
  br label %366

366:                                              ; preds = %365, %349
  %367 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %368 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %366
  %371 = load i64, i64* @AR5416_VER_MASK, align 8
  %372 = load i64, i64* @AR5416_EEP_MINOR_VER_19, align 8
  %373 = icmp sge i64 %371, %372
  br i1 %373, label %374, label %382

374:                                              ; preds = %370
  %375 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %376 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %377 = load i32, i32* @AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK, align 4
  %378 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %379 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %378, i32 0, i32 16
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %375, i32 %376, i32 %377, i32 %380)
  br label %382

382:                                              ; preds = %374, %370, %366
  %383 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %384 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %442

386:                                              ; preds = %382
  %387 = load i64, i64* @AR5416_VER_MASK, align 8
  %388 = load i64, i64* @AR5416_EEP_MINOR_VER_20, align 8
  %389 = icmp sge i64 %387, %388
  br i1 %389, label %390, label %442

390:                                              ; preds = %386
  %391 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %392 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %403

394:                                              ; preds = %390
  %395 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %396 = load i32, i32* @AR_AN_TOP1, align 4
  %397 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %398 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %399 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %395, i32 %396, i32 %397, i32 %401)
  br label %424

403:                                              ; preds = %390
  %404 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %405 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %403
  %410 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %411 = load i32, i32* @AR_AN_TOP1, align 4
  %412 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %413 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %410, i32 %411, i32 %412, i32 0)
  br label %423

414:                                              ; preds = %403
  %415 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %416 = load i32, i32* @AR_AN_TOP1, align 4
  %417 = load i32, i32* @AR_AN_TOP1_DACIPMODE, align 4
  %418 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %419 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %415, i32 %416, i32 %417, i32 %421)
  br label %423

423:                                              ; preds = %414, %409
  br label %424

424:                                              ; preds = %423, %394
  %425 = call i32 @udelay(i32 100)
  %426 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %427 = load i32, i32* @AR_PHY_FRAME_CTL, align 4
  %428 = load i32, i32* @AR_PHY_FRAME_CTL_TX_CLIP, align 4
  %429 = load %struct.modal_eep_header*, %struct.modal_eep_header** %5, align 8
  %430 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %429, i32 0, i32 16
  %431 = load i32, i32* %430, align 8
  %432 = ashr i32 %431, 2
  %433 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %426, i32 %427, i32 %428, i32 %432)
  %434 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %435 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %436 = load i32, i32* @AR_PHY_TX_DESIRED_SCALE_CCK, align 4
  %437 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %438 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %434, i32 %435, i32 %436, i32 %440)
  br label %442

442:                                              ; preds = %424, %386, %382
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i64, i32) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath9k_hw_def_set_gain(%struct.ath_hw*, %struct.modal_eep_header*, %struct.ar5416_eeprom_def*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
