; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_board_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.base_eep_header_4k, %struct.modal_eep_4k_header }
%struct.base_eep_header_4k = type { i32, i64 }
%struct.modal_eep_4k_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i32 0, align 4
@AR_PHY_MULTICHAIN_GAIN_CTL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_CTL_ALL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_CTL = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_LNACONF = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_ALT_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_9285_ANT_DIV_MAIN_GAINTB = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_cck = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_cck_S = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_psk = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_psk_S = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_qam = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_OB_qam_S = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_DB_1 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G3_DB_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G4_DB_2 = common dso_local global i32 0, align 4
@AR9271_AN_RF2G4_DB_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_0_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_3_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_OB_4_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_0_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G3_DB1_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_3_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB1_4_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_0 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_0_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_1 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_1_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_2 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_2_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_3 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_3_S = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_4 = common dso_local global i32 0, align 4
@AR9285_AN_RF2G4_DB2_4_S = common dso_local global i32 0, align 4
@AR_PHY_SETTLING = common dso_local global i32 0, align 4
@AR_PHY_SETTLING_SWITCH = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ = common dso_local global i32 0, align 4
@AR_PHY_DESIRED_SZ_ADC = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL4 = common dso_local global i32 0, align 4
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
@AR5416_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_DATA_START = common dso_local global i32 0, align 4
@AR_PHY_TX_END_PA_ON = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_3 = common dso_local global i32 0, align 4
@EEP_4K_BB_DESIRED_SCALE_MASK = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL8 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL10 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL12 = common dso_local global i32 0, align 4
@AR_PHY_TX_PWRCTRL9 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL11 = common dso_local global i32 0, align 4
@AR_PHY_CH0_TX_PWRCTRL13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_4k_set_board_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_4k_set_board_values(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.modal_eep_4k_header*, align 8
  %6 = alloca %struct.ar5416_eeprom_4k*, align 8
  %7 = alloca %struct.base_eep_header_4k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca [5 x i32], align 16
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ar5416_eeprom_4k* %22, %struct.ar5416_eeprom_4k** %6, align 8
  %23 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %24 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %23, i32 0, i32 0
  store %struct.base_eep_header_4k* %24, %struct.base_eep_header_4k** %7, align 8
  %25 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %26 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %25, i32 0, i32 1
  store %struct.modal_eep_4k_header* %26, %struct.modal_eep_4k_header** %5, align 8
  store i32 23, i32* %8, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %29 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %30 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %35 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ath9k_hw_4k_set_gain(%struct.ath_hw* %33, %struct.modal_eep_4k_header* %34, %struct.ar5416_eeprom_4k* %35, i32 %36)
  %38 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %39 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 3
  br i1 %41, label %42, label %111

42:                                               ; preds = %2
  %43 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %44 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %47 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %51 = call i32 @REG_READ(%struct.ath_hw* %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @AR_PHY_9285_ANT_DIV_CTL_ALL, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @AR_PHY_9285_ANT_DIV_CTL, align 4
  %58 = call i32 @SM(i32 %56, i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_LNACONF, align 4
  %63 = call i32 @SM(i32 %61, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = ashr i32 %66, 2
  %68 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_LNACONF, align 4
  %69 = call i32 @SM(i32 %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %12, align 4
  %73 = ashr i32 %72, 1
  %74 = load i32, i32* @AR_PHY_9285_ANT_DIV_ALT_GAINTB, align 4
  %75 = call i32 @SM(i32 %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %12, align 4
  %79 = ashr i32 %78, 2
  %80 = load i32, i32* @AR_PHY_9285_ANT_DIV_MAIN_GAINTB, align 4
  %81 = call i32 @SM(i32 %79, i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @REG_WRITE(%struct.ath_hw* %84, i32 %85, i32 %86)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %89 = load i32, i32* @AR_PHY_MULTICHAIN_GAIN_CTL, align 4
  %90 = call i32 @REG_READ(%struct.ath_hw* %88, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %92 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %93 = call i32 @REG_READ(%struct.ath_hw* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = ashr i32 %98, 3
  %100 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %101 = call i32 @SM(i32 %99, i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %105 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @REG_WRITE(%struct.ath_hw* %104, i32 %105, i32 %106)
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %110 = call i32 @REG_READ(%struct.ath_hw* %108, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %42, %2
  %112 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %113 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 2
  br i1 %115, label %116, label %177

116:                                              ; preds = %111
  %117 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %118 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  store i32 %119, i32* %120, align 16
  %121 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %122 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %126 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %127, i32* %128, align 8
  %129 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %130 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  store i32 %131, i32* %132, align 4
  %133 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %134 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  store i32 %135, i32* %136, align 16
  %137 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %138 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 %139, i32* %140, align 16
  %141 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %142 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  store i32 %143, i32* %144, align 4
  %145 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %146 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 %147, i32* %148, align 8
  %149 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %150 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  store i32 %151, i32* %152, align 4
  %153 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %154 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  store i32 %155, i32* %156, align 16
  %157 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %158 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %159, i32* %160, align 16
  %161 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %162 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %161, i32 0, i32 15
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  %165 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %166 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %165, i32 0, i32 16
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %167, i32* %168, align 8
  %169 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %170 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %169, i32 0, i32 17
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %171, i32* %172, align 4
  %173 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %174 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %173, i32 0, i32 18
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %175, i32* %176, align 16
  br label %244

177:                                              ; preds = %111
  %178 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %179 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %216

182:                                              ; preds = %177
  %183 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %184 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  store i32 %185, i32* %186, align 16
  %187 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %188 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  store i32 %189, i32* %190, align 16
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  store i32 %189, i32* %191, align 4
  %192 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %189, i32* %192, align 8
  %193 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %195 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32 %196, i32* %197, align 16
  %198 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %199 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  store i32 %200, i32* %201, align 16
  %202 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  store i32 %200, i32* %202, align 4
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 %200, i32* %203, align 8
  %204 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  store i32 %200, i32* %204, align 4
  %205 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %206 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %205, i32 0, i32 14
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %207, i32* %208, align 16
  %209 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %210 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %209, i32 0, i32 15
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %211, i32* %212, align 16
  %213 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %211, i32* %213, align 4
  %214 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %211, i32* %214, align 8
  %215 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %211, i32* %215, align 4
  br label %243

216:                                              ; preds = %177
  store i32 0, i32* %16, align 4
  br label %217

217:                                              ; preds = %239, %216
  %218 = load i32, i32* %16, align 4
  %219 = icmp slt i32 %218, 5
  br i1 %219, label %220, label %242

220:                                              ; preds = %217
  %221 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %222 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %225
  store i32 %223, i32* %226, align 4
  %227 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %228 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %231
  store i32 %229, i32* %232, align 4
  %233 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %234 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %237
  store i32 %235, i32* %238, align 4
  br label %239

239:                                              ; preds = %220
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  br label %217

242:                                              ; preds = %217
  br label %243

243:                                              ; preds = %242, %182
  br label %244

244:                                              ; preds = %243, %116
  %245 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %246 = call i64 @AR_SREV_9271(%struct.ath_hw* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %284

248:                                              ; preds = %244
  %249 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %250 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %251 = load i32, i32* @AR9271_AN_RF2G3_OB_cck, align 4
  %252 = load i32, i32* @AR9271_AN_RF2G3_OB_cck_S, align 4
  %253 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %254 = load i32, i32* %253, align 16
  %255 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %249, i32 %250, i32 %251, i32 %252, i32 %254)
  %256 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %257 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %258 = load i32, i32* @AR9271_AN_RF2G3_OB_psk, align 4
  %259 = load i32, i32* @AR9271_AN_RF2G3_OB_psk_S, align 4
  %260 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %256, i32 %257, i32 %258, i32 %259, i32 %261)
  %263 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %264 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %265 = load i32, i32* @AR9271_AN_RF2G3_OB_qam, align 4
  %266 = load i32, i32* @AR9271_AN_RF2G3_OB_qam_S, align 4
  %267 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %263, i32 %264, i32 %265, i32 %266, i32 %268)
  %270 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %271 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %272 = load i32, i32* @AR9271_AN_RF2G3_DB_1, align 4
  %273 = load i32, i32* @AR9271_AN_RF2G3_DB_1_S, align 4
  %274 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %275 = load i32, i32* %274, align 16
  %276 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %270, i32 %271, i32 %272, i32 %273, i32 %275)
  %277 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %278 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %279 = load i32, i32* @AR9271_AN_RF2G4_DB_2, align 4
  %280 = load i32, i32* @AR9271_AN_RF2G4_DB_2_S, align 4
  %281 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %282 = load i32, i32* %281, align 16
  %283 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %277, i32 %278, i32 %279, i32 %280, i32 %282)
  br label %390

284:                                              ; preds = %244
  %285 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %286 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %287 = load i32, i32* @AR9285_AN_RF2G3_OB_0, align 4
  %288 = load i32, i32* @AR9285_AN_RF2G3_OB_0_S, align 4
  %289 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %290 = load i32, i32* %289, align 16
  %291 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %285, i32 %286, i32 %287, i32 %288, i32 %290)
  %292 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %293 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %294 = load i32, i32* @AR9285_AN_RF2G3_OB_1, align 4
  %295 = load i32, i32* @AR9285_AN_RF2G3_OB_1_S, align 4
  %296 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %292, i32 %293, i32 %294, i32 %295, i32 %297)
  %299 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %300 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %301 = load i32, i32* @AR9285_AN_RF2G3_OB_2, align 4
  %302 = load i32, i32* @AR9285_AN_RF2G3_OB_2_S, align 4
  %303 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %299, i32 %300, i32 %301, i32 %302, i32 %304)
  %306 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %307 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %308 = load i32, i32* @AR9285_AN_RF2G3_OB_3, align 4
  %309 = load i32, i32* @AR9285_AN_RF2G3_OB_3_S, align 4
  %310 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %306, i32 %307, i32 %308, i32 %309, i32 %311)
  %313 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %314 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %315 = load i32, i32* @AR9285_AN_RF2G3_OB_4, align 4
  %316 = load i32, i32* @AR9285_AN_RF2G3_OB_4_S, align 4
  %317 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  %318 = load i32, i32* %317, align 16
  %319 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %313, i32 %314, i32 %315, i32 %316, i32 %318)
  %320 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %321 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %322 = load i32, i32* @AR9285_AN_RF2G3_DB1_0, align 4
  %323 = load i32, i32* @AR9285_AN_RF2G3_DB1_0_S, align 4
  %324 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %325 = load i32, i32* %324, align 16
  %326 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %320, i32 %321, i32 %322, i32 %323, i32 %325)
  %327 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %328 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %329 = load i32, i32* @AR9285_AN_RF2G3_DB1_1, align 4
  %330 = load i32, i32* @AR9285_AN_RF2G3_DB1_1_S, align 4
  %331 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %327, i32 %328, i32 %329, i32 %330, i32 %332)
  %334 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %335 = load i32, i32* @AR9285_AN_RF2G3, align 4
  %336 = load i32, i32* @AR9285_AN_RF2G3_DB1_2, align 4
  %337 = load i32, i32* @AR9285_AN_RF2G3_DB1_2_S, align 4
  %338 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %334, i32 %335, i32 %336, i32 %337, i32 %339)
  %341 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %342 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %343 = load i32, i32* @AR9285_AN_RF2G4_DB1_3, align 4
  %344 = load i32, i32* @AR9285_AN_RF2G4_DB1_3_S, align 4
  %345 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %341, i32 %342, i32 %343, i32 %344, i32 %346)
  %348 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %349 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %350 = load i32, i32* @AR9285_AN_RF2G4_DB1_4, align 4
  %351 = load i32, i32* @AR9285_AN_RF2G4_DB1_4_S, align 4
  %352 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  %353 = load i32, i32* %352, align 16
  %354 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %348, i32 %349, i32 %350, i32 %351, i32 %353)
  %355 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %356 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %357 = load i32, i32* @AR9285_AN_RF2G4_DB2_0, align 4
  %358 = load i32, i32* @AR9285_AN_RF2G4_DB2_0_S, align 4
  %359 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %360 = load i32, i32* %359, align 16
  %361 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %355, i32 %356, i32 %357, i32 %358, i32 %360)
  %362 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %363 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %364 = load i32, i32* @AR9285_AN_RF2G4_DB2_1, align 4
  %365 = load i32, i32* @AR9285_AN_RF2G4_DB2_1_S, align 4
  %366 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %362, i32 %363, i32 %364, i32 %365, i32 %367)
  %369 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %370 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %371 = load i32, i32* @AR9285_AN_RF2G4_DB2_2, align 4
  %372 = load i32, i32* @AR9285_AN_RF2G4_DB2_2_S, align 4
  %373 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %369, i32 %370, i32 %371, i32 %372, i32 %374)
  %376 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %377 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %378 = load i32, i32* @AR9285_AN_RF2G4_DB2_3, align 4
  %379 = load i32, i32* @AR9285_AN_RF2G4_DB2_3_S, align 4
  %380 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %376, i32 %377, i32 %378, i32 %379, i32 %381)
  %383 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %384 = load i32, i32* @AR9285_AN_RF2G4, align 4
  %385 = load i32, i32* @AR9285_AN_RF2G4_DB2_4, align 4
  %386 = load i32, i32* @AR9285_AN_RF2G4_DB2_4_S, align 4
  %387 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %388 = load i32, i32* %387, align 16
  %389 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %383, i32 %384, i32 %385, i32 %386, i32 %388)
  br label %390

390:                                              ; preds = %284, %248
  %391 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %392 = load i32, i32* @AR_PHY_SETTLING, align 4
  %393 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %394 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %395 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %394, i32 0, i32 28
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %391, i32 %392, i32 %393, i32 %396)
  %398 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %399 = load i32, i32* @AR_PHY_DESIRED_SZ, align 4
  %400 = load i32, i32* @AR_PHY_DESIRED_SZ_ADC, align 4
  %401 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %402 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %401, i32 0, i32 27
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %398, i32 %399, i32 %400, i32 %403)
  %405 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %406 = load i32, i32* @AR_PHY_RF_CTL4, align 4
  %407 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %408 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %407, i32 0, i32 19
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAA_OFF, align 4
  %411 = call i32 @SM(i32 %409, i32 %410)
  %412 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %413 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %412, i32 0, i32 19
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @AR_PHY_RF_CTL4_TX_END_XPAB_OFF, align 4
  %416 = call i32 @SM(i32 %414, i32 %415)
  %417 = or i32 %411, %416
  %418 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %419 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %418, i32 0, i32 20
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAA_ON, align 4
  %422 = call i32 @SM(i32 %420, i32 %421)
  %423 = or i32 %417, %422
  %424 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %425 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %424, i32 0, i32 20
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @AR_PHY_RF_CTL4_FRAME_XPAB_ON, align 4
  %428 = call i32 @SM(i32 %426, i32 %427)
  %429 = or i32 %423, %428
  %430 = call i32 @REG_WRITE(%struct.ath_hw* %405, i32 %406, i32 %429)
  %431 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %432 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %433 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %434 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %435 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %434, i32 0, i32 26
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %431, i32 %432, i32 %433, i32 %436)
  %438 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %439 = call i64 @AR_SREV_9271_10(%struct.ath_hw* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %449

441:                                              ; preds = %390
  %442 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %443 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %444 = load i32, i32* @AR_PHY_TX_END_TO_A2_RX_ON, align 4
  %445 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %446 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %445, i32 0, i32 26
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %442, i32 %443, i32 %444, i32 %447)
  br label %449

449:                                              ; preds = %441, %390
  %450 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %451 = load i32, i32* @AR_PHY_CCA, align 4
  %452 = load i32, i32* @AR9280_PHY_CCA_THRESH62, align 4
  %453 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %454 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %453, i32 0, i32 25
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %450, i32 %451, i32 %452, i32 %455)
  %457 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %458 = load i32, i32* @AR_PHY_EXT_CCA0, align 4
  %459 = load i32, i32* @AR_PHY_EXT_CCA0_THRESH62, align 4
  %460 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %461 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %460, i32 0, i32 25
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %457, i32 %458, i32 %459, i32 %462)
  %464 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %465 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %469 = and i32 %467, %468
  %470 = load i32, i32* @AR5416_EEP_MINOR_VER_2, align 4
  %471 = icmp sge i32 %469, %470
  br i1 %471, label %472, label %487

472:                                              ; preds = %449
  %473 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %474 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %475 = load i32, i32* @AR_PHY_TX_END_DATA_START, align 4
  %476 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %477 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %476, i32 0, i32 24
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %473, i32 %474, i32 %475, i32 %478)
  %480 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %481 = load i32, i32* @AR_PHY_RF_CTL2, align 4
  %482 = load i32, i32* @AR_PHY_TX_END_PA_ON, align 4
  %483 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %484 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %483, i32 0, i32 23
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %480, i32 %481, i32 %482, i32 %485)
  br label %487

487:                                              ; preds = %472, %449
  %488 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %6, align 8
  %489 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %493 = and i32 %491, %492
  %494 = load i32, i32* @AR5416_EEP_MINOR_VER_3, align 4
  %495 = icmp sge i32 %493, %494
  br i1 %495, label %496, label %509

496:                                              ; preds = %487
  %497 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %498 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %508

500:                                              ; preds = %496
  %501 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %502 = load i32, i32* @AR_PHY_SETTLING, align 4
  %503 = load i32, i32* @AR_PHY_SETTLING_SWITCH, align 4
  %504 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %505 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %504, i32 0, i32 22
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %501, i32 %502, i32 %503, i32 %506)
  br label %508

508:                                              ; preds = %500, %496
  br label %509

509:                                              ; preds = %508, %487
  %510 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %5, align 8
  %511 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %510, i32 0, i32 21
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @EEP_4K_BB_DESIRED_SCALE_MASK, align 4
  %514 = and i32 %512, %513
  store i32 %514, i32* %14, align 4
  %515 = load %struct.base_eep_header_4k*, %struct.base_eep_header_4k** %7, align 8
  %516 = getelementptr inbounds %struct.base_eep_header_4k, %struct.base_eep_header_4k* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %587

519:                                              ; preds = %509
  %520 = load i32, i32* %14, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %587

522:                                              ; preds = %519
  %523 = call i32 @BIT(i32 0)
  %524 = call i32 @BIT(i32 5)
  %525 = or i32 %523, %524
  %526 = call i32 @BIT(i32 10)
  %527 = or i32 %525, %526
  %528 = call i32 @BIT(i32 15)
  %529 = or i32 %527, %528
  %530 = call i32 @BIT(i32 20)
  %531 = or i32 %529, %530
  %532 = call i32 @BIT(i32 25)
  %533 = or i32 %531, %532
  store i32 %533, i32* %18, align 4
  %534 = load i32, i32* %18, align 4
  %535 = load i32, i32* %14, align 4
  %536 = mul nsw i32 %534, %535
  store i32 %536, i32* %17, align 4
  %537 = load i32, i32* %18, align 4
  %538 = mul nsw i32 %537, 31
  store i32 %538, i32* %19, align 4
  %539 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %540 = load i32, i32* @AR_PHY_TX_PWRCTRL8, align 4
  %541 = load i32, i32* %17, align 4
  %542 = load i32, i32* %19, align 4
  %543 = call i32 @REG_RMW(%struct.ath_hw* %539, i32 %540, i32 %541, i32 %542)
  %544 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %545 = load i32, i32* @AR_PHY_TX_PWRCTRL10, align 4
  %546 = load i32, i32* %17, align 4
  %547 = load i32, i32* %19, align 4
  %548 = call i32 @REG_RMW(%struct.ath_hw* %544, i32 %545, i32 %546, i32 %547)
  %549 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %550 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL12, align 4
  %551 = load i32, i32* %17, align 4
  %552 = load i32, i32* %19, align 4
  %553 = call i32 @REG_RMW(%struct.ath_hw* %549, i32 %550, i32 %551, i32 %552)
  %554 = call i32 @BIT(i32 0)
  %555 = call i32 @BIT(i32 5)
  %556 = or i32 %554, %555
  %557 = call i32 @BIT(i32 15)
  %558 = or i32 %556, %557
  store i32 %558, i32* %18, align 4
  %559 = load i32, i32* %18, align 4
  %560 = load i32, i32* %14, align 4
  %561 = mul nsw i32 %559, %560
  store i32 %561, i32* %17, align 4
  %562 = load i32, i32* %18, align 4
  %563 = mul nsw i32 %562, 31
  store i32 %563, i32* %19, align 4
  %564 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %565 = load i32, i32* @AR_PHY_TX_PWRCTRL9, align 4
  %566 = load i32, i32* %17, align 4
  %567 = load i32, i32* %19, align 4
  %568 = call i32 @REG_RMW(%struct.ath_hw* %564, i32 %565, i32 %566, i32 %567)
  %569 = call i32 @BIT(i32 0)
  %570 = call i32 @BIT(i32 5)
  %571 = or i32 %569, %570
  store i32 %571, i32* %18, align 4
  %572 = load i32, i32* %18, align 4
  %573 = load i32, i32* %14, align 4
  %574 = mul nsw i32 %572, %573
  store i32 %574, i32* %17, align 4
  %575 = load i32, i32* %18, align 4
  %576 = mul nsw i32 %575, 31
  store i32 %576, i32* %19, align 4
  %577 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %578 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL11, align 4
  %579 = load i32, i32* %17, align 4
  %580 = load i32, i32* %19, align 4
  %581 = call i32 @REG_RMW(%struct.ath_hw* %577, i32 %578, i32 %579, i32 %580)
  %582 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %583 = load i32, i32* @AR_PHY_CH0_TX_PWRCTRL13, align 4
  %584 = load i32, i32* %17, align 4
  %585 = load i32, i32* %19, align 4
  %586 = call i32 @REG_RMW(%struct.ath_hw* %582, i32 %583, i32 %584, i32 %585)
  br label %587

587:                                              ; preds = %522, %519, %509
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_4k_set_gain(%struct.ath_hw*, %struct.modal_eep_4k_header*, %struct.ar5416_eeprom_4k*, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9271_10(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
