; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfregs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rfregs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_gain_opt = type { %struct.ath5k_gain_opt_step* }
%struct.ath5k_gain_opt_step = type { i32* }
%struct.ath5k_hw = type { i32, i32, i32, i64, i32*, i64, i64, %struct.TYPE_4__, i32*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32**, i32**, i32*, i32*, i32*, i64**, i32* }
%struct.ieee80211_channel = type { i64, i64, i32 }
%struct.ath5k_rf_reg = type { i32 }
%struct.ath5k_ini_rfbuffer = type { i32, i32, i32* }

@rf_regs_5111 = common dso_local global i8* null, align 8
@rfb_5111 = common dso_local global i8* null, align 8
@rfgain_opt_5111 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@AR5K_SREV_RAD_5112A = common dso_local global i32 0, align 4
@rf_regs_5112a = common dso_local global i8* null, align 8
@rfb_5112a = common dso_local global i8* null, align 8
@rf_regs_5112 = common dso_local global i8* null, align 8
@rfb_5112 = common dso_local global i8* null, align 8
@rfgain_opt_5112 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@rf_regs_2413 = common dso_local global i8* null, align 8
@rfb_2413 = common dso_local global i8* null, align 8
@rf_regs_2316 = common dso_local global i8* null, align 8
@rfb_2316 = common dso_local global i8* null, align 8
@rf_regs_5413 = common dso_local global i8* null, align 8
@rfb_5413 = common dso_local global i8* null, align 8
@rf_regs_2425 = common dso_local global i8* null, align 8
@rfb_2317 = common dso_local global i8* null, align 8
@AR5K_SREV_AR2417 = common dso_local global i64 0, align 8
@rfb_2425 = common dso_local global i8* null, align 8
@rfb_2417 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AR5K_MAX_RF_BANKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid bank\0A\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR5K_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11B = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8
@AR5K_RF_OB_2GHZ = common dso_local global i32 0, align 4
@AR5K_RF_DB_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@AR5K_EEPROM_MODE_11A = common dso_local global i64 0, align 8
@AR5K_RF_OB_5GHZ = common dso_local global i32 0, align 4
@AR5K_RF_DB_5GHZ = common dso_local global i32 0, align 4
@AR5K_BWMODE_40MHZ = common dso_local global i64 0, align 8
@AR5K_RF_TURBO = common dso_local global i32 0, align 4
@AR5K_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR5K_PHY_FRAME_CTL_TX_CLIP = common dso_local global i32 0, align 4
@AR5K_RF_PWD_90 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_84 = common dso_local global i32 0, align 4
@AR5K_RF_RFGAIN_SEL = common dso_local global i32 0, align 4
@AR5K_RFGAIN_ACTIVE = common dso_local global i8* null, align 8
@AR5K_RF_PWD_XPD = common dso_local global i32 0, align 4
@AR5K_RF_XPD_GAIN = common dso_local global i32 0, align 4
@AR5K_RF_GAIN_I = common dso_local global i32 0, align 4
@AR5K_RF_PLO_SEL = common dso_local global i32 0, align 4
@AR5K_BWMODE_5MHZ = common dso_local global i64 0, align 8
@AR5K_BWMODE_10MHZ = common dso_local global i64 0, align 8
@AR5K_RF_WAIT_S = common dso_local global i32 0, align 4
@AR5K_RF_WAIT_I = common dso_local global i32 0, align 4
@AR5K_RF_MAX_TIME = common dso_local global i32 0, align 4
@AR5K_RF_MIXGAIN_OVR = common dso_local global i32 0, align 4
@AR5K_RF_PWD_138 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_137 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_136 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_132 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_131 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_130 = common dso_local global i32 0, align 4
@AR5K_RF_XPD_SEL = common dso_local global i32 0, align 4
@AR5K_RF_PD_GAIN_LO = common dso_local global i32 0, align 4
@AR5K_RF_PD_GAIN_HI = common dso_local global i32 0, align 4
@AR5K_SREV_REV = common dso_local global i32 0, align 4
@AR5K_RF_HIGH_VC_CP = common dso_local global i32 0, align 4
@AR5K_RF_MID_VC_CP = common dso_local global i32 0, align 4
@AR5K_RF_LOW_VC_CP = common dso_local global i32 0, align 4
@AR5K_RF_PUSH_UP = common dso_local global i32 0, align 4
@AR5K_SREV_PHY_5212A = common dso_local global i64 0, align 8
@AR5K_RF_PAD2GND = common dso_local global i32 0, align 4
@AR5K_RF_XB2_LVL = common dso_local global i32 0, align 4
@AR5K_RF_XB5_LVL = common dso_local global i32 0, align 4
@AR5K_RF_PWD_167 = common dso_local global i32 0, align 4
@AR5K_RF_PWD_166 = common dso_local global i32 0, align 4
@AR5K_RF_PD_PERIOD_A = common dso_local global i32 0, align 4
@AR5K_RF_PD_DELAY_A = common dso_local global i32 0, align 4
@AR5K_RF_DERBY_CHAN_SEL_MODE = common dso_local global i32 0, align 4
@AR5K_SREV_AR5424 = common dso_local global i64 0, align 8
@AR5K_SREV_AR5413 = common dso_local global i64 0, align 8
@AR5K_RF_PWD_ICLOBUF_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*, i32)* @ath5k_hw_rfregs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rfregs_init(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath5k_rf_reg*, align 8
  %9 = alloca %struct.ath5k_ini_rfbuffer*, align 8
  %10 = alloca %struct.ath5k_gain_opt*, align 8
  %11 = alloca %struct.ath5k_gain_opt_step*, align 8
  %12 = alloca %struct.ath5k_eeprom_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath5k_gain_opt* null, %struct.ath5k_gain_opt** %10, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %23, %struct.ath5k_eeprom_info** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %161 [
    i32 130, label %27
    i32 129, label %41
    i32 132, label %76
    i32 134, label %90
    i32 128, label %104
    i32 133, label %118
    i32 131, label %132
  ]

27:                                               ; preds = %3
  %28 = load i8*, i8** @rf_regs_5111, align 8
  %29 = bitcast i8* %28 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %29, %struct.ath5k_rf_reg** %8, align 8
  %30 = load i8*, i8** @rf_regs_5111, align 8
  %31 = call i8* @ARRAY_SIZE(i8* %30)
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @rfb_5111, align 8
  %35 = bitcast i8* %34 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %35, %struct.ath5k_ini_rfbuffer** %9, align 8
  %36 = load i8*, i8** @rfb_5111, align 8
  %37 = call i8* @ARRAY_SIZE(i8* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store %struct.ath5k_gain_opt* @rfgain_opt_5111, %struct.ath5k_gain_opt** %10, align 8
  br label %164

41:                                               ; preds = %3
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AR5K_SREV_RAD_5112A, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i8*, i8** @rf_regs_5112a, align 8
  %49 = bitcast i8* %48 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %49, %struct.ath5k_rf_reg** %8, align 8
  %50 = load i8*, i8** @rf_regs_5112a, align 8
  %51 = call i8* @ARRAY_SIZE(i8* %50)
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @rfb_5112a, align 8
  %55 = bitcast i8* %54 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %55, %struct.ath5k_ini_rfbuffer** %9, align 8
  %56 = load i8*, i8** @rfb_5112a, align 8
  %57 = call i8* @ARRAY_SIZE(i8* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %60 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %75

61:                                               ; preds = %41
  %62 = load i8*, i8** @rf_regs_5112, align 8
  %63 = bitcast i8* %62 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %63, %struct.ath5k_rf_reg** %8, align 8
  %64 = load i8*, i8** @rf_regs_5112, align 8
  %65 = call i8* @ARRAY_SIZE(i8* %64)
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @rfb_5112, align 8
  %69 = bitcast i8* %68 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %69, %struct.ath5k_ini_rfbuffer** %9, align 8
  %70 = load i8*, i8** @rfb_5112, align 8
  %71 = call i8* @ARRAY_SIZE(i8* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %74 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %61, %47
  store %struct.ath5k_gain_opt* @rfgain_opt_5112, %struct.ath5k_gain_opt** %10, align 8
  br label %164

76:                                               ; preds = %3
  %77 = load i8*, i8** @rf_regs_2413, align 8
  %78 = bitcast i8* %77 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %78, %struct.ath5k_rf_reg** %8, align 8
  %79 = load i8*, i8** @rf_regs_2413, align 8
  %80 = call i8* @ARRAY_SIZE(i8* %79)
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 9
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @rfb_2413, align 8
  %84 = bitcast i8* %83 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %84, %struct.ath5k_ini_rfbuffer** %9, align 8
  %85 = load i8*, i8** @rfb_2413, align 8
  %86 = call i8* @ARRAY_SIZE(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %89 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %164

90:                                               ; preds = %3
  %91 = load i8*, i8** @rf_regs_2316, align 8
  %92 = bitcast i8* %91 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %92, %struct.ath5k_rf_reg** %8, align 8
  %93 = load i8*, i8** @rf_regs_2316, align 8
  %94 = call i8* @ARRAY_SIZE(i8* %93)
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %96 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @rfb_2316, align 8
  %98 = bitcast i8* %97 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %98, %struct.ath5k_ini_rfbuffer** %9, align 8
  %99 = load i8*, i8** @rfb_2316, align 8
  %100 = call i8* @ARRAY_SIZE(i8* %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %164

104:                                              ; preds = %3
  %105 = load i8*, i8** @rf_regs_5413, align 8
  %106 = bitcast i8* %105 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %106, %struct.ath5k_rf_reg** %8, align 8
  %107 = load i8*, i8** @rf_regs_5413, align 8
  %108 = call i8* @ARRAY_SIZE(i8* %107)
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @rfb_5413, align 8
  %112 = bitcast i8* %111 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %112, %struct.ath5k_ini_rfbuffer** %9, align 8
  %113 = load i8*, i8** @rfb_5413, align 8
  %114 = call i8* @ARRAY_SIZE(i8* %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %117 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %164

118:                                              ; preds = %3
  %119 = load i8*, i8** @rf_regs_2425, align 8
  %120 = bitcast i8* %119 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %120, %struct.ath5k_rf_reg** %8, align 8
  %121 = load i8*, i8** @rf_regs_2425, align 8
  %122 = call i8* @ARRAY_SIZE(i8* %121)
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %124 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @rfb_2317, align 8
  %126 = bitcast i8* %125 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %126, %struct.ath5k_ini_rfbuffer** %9, align 8
  %127 = load i8*, i8** @rfb_2317, align 8
  %128 = call i8* @ARRAY_SIZE(i8* %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %131 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %164

132:                                              ; preds = %3
  %133 = load i8*, i8** @rf_regs_2425, align 8
  %134 = bitcast i8* %133 to %struct.ath5k_rf_reg*
  store %struct.ath5k_rf_reg* %134, %struct.ath5k_rf_reg** %8, align 8
  %135 = load i8*, i8** @rf_regs_2425, align 8
  %136 = call i8* @ARRAY_SIZE(i8* %135)
  %137 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %138 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %137, i32 0, i32 9
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %140 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AR5K_SREV_AR2417, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %132
  %145 = load i8*, i8** @rfb_2425, align 8
  %146 = bitcast i8* %145 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %146, %struct.ath5k_ini_rfbuffer** %9, align 8
  %147 = load i8*, i8** @rfb_2425, align 8
  %148 = call i8* @ARRAY_SIZE(i8* %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %151 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %160

152:                                              ; preds = %132
  %153 = load i8*, i8** @rfb_2417, align 8
  %154 = bitcast i8* %153 to %struct.ath5k_ini_rfbuffer*
  store %struct.ath5k_ini_rfbuffer* %154, %struct.ath5k_ini_rfbuffer** %9, align 8
  %155 = load i8*, i8** @rfb_2417, align 8
  %156 = call i8* @ARRAY_SIZE(i8* %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %159 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %144
  br label %164

161:                                              ; preds = %3
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %859

164:                                              ; preds = %160, %118, %104, %90, %76, %75, %27
  %165 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %166 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  %170 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %171 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 4, %173
  %175 = trunc i64 %174 to i32
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i32* @kmalloc(i32 %175, i32 %176)
  %178 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %179 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %178, i32 0, i32 8
  store i32* %177, i32** %179, align 8
  %180 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %181 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %180, i32 0, i32 8
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %169
  %185 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %186 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  br label %859

189:                                              ; preds = %169
  br label %190

190:                                              ; preds = %189, %164
  %191 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %192 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %191, i32 0, i32 8
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %194

194:                                              ; preds = %252, %190
  %195 = load i32, i32* %15, align 4
  %196 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %197 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %255

200:                                              ; preds = %194
  %201 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %201, i64 %203
  %205 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @AR5K_MAX_RF_BANKS, align 4
  %208 = icmp sge i32 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %200
  %210 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %211 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %859

214:                                              ; preds = %200
  %215 = load i32, i32* %17, align 4
  %216 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %216, i64 %218
  %220 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %215, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %214
  %224 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %224, i64 %226
  %228 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  store i32 %229, i32* %17, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %232 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %230, i32* %236, align 4
  br label %237

237:                                              ; preds = %223, %214
  %238 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %238, i64 %240
  %242 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %247, i32* %251, align 4
  br label %252

252:                                              ; preds = %237
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %194

255:                                              ; preds = %194
  %256 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %257 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %312

261:                                              ; preds = %255
  %262 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %263 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @AR5K_MODE_11B, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i64, i64* @AR5K_EEPROM_MODE_11B, align 8
  store i64 %268, i64* %13, align 8
  br label %271

269:                                              ; preds = %261
  %270 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  store i64 %270, i64* %13, align 8
  br label %271

271:                                              ; preds = %269, %267
  %272 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %273 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 130
  br i1 %275, label %281, label %276

276:                                              ; preds = %271
  %277 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %278 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 129
  br i1 %280, label %281, label %282

281:                                              ; preds = %276, %271
  store i32 0, i32* %16, align 4
  br label %283

282:                                              ; preds = %276
  store i32 1, i32* %16, align 4
  br label %283

283:                                              ; preds = %282, %281
  %284 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %285 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %286 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %287 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %286, i32 0, i32 0
  %288 = load i32**, i32*** %287, align 8
  %289 = load i64, i64* %13, align 8
  %290 = getelementptr inbounds i32*, i32** %288, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @AR5K_RF_OB_2GHZ, align 4
  %297 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %284, %struct.ath5k_rf_reg* %285, i32 %295, i32 %296, i32 1)
  %298 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %299 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %300 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %301 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %300, i32 0, i32 1
  %302 = load i32**, i32*** %301, align 8
  %303 = load i64, i64* %13, align 8
  %304 = getelementptr inbounds i32*, i32** %302, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @AR5K_RF_DB_2GHZ, align 4
  %311 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %298, %struct.ath5k_rf_reg* %299, i32 %309, i32 %310, i32 1)
  br label %390

312:                                              ; preds = %255
  %313 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %314 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %323, label %318

318:                                              ; preds = %312
  %319 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %320 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 130
  br i1 %322, label %323, label %389

323:                                              ; preds = %318, %312
  %324 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  store i64 %324, i64* %13, align 8
  %325 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %326 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = icmp sge i32 %327, 5725
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  br label %353

330:                                              ; preds = %323
  %331 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %332 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = icmp sge i32 %333, 5500
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %351

336:                                              ; preds = %330
  %337 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %338 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp sge i32 %339, 5260
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  br label %349

342:                                              ; preds = %336
  %343 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %344 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp sgt i32 %345, 4000
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i32 0, i32 -1
  br label %349

349:                                              ; preds = %342, %341
  %350 = phi i32 [ 1, %341 ], [ %348, %342 ]
  br label %351

351:                                              ; preds = %349, %335
  %352 = phi i32 [ 2, %335 ], [ %350, %349 ]
  br label %353

353:                                              ; preds = %351, %329
  %354 = phi i32 [ 3, %329 ], [ %352, %351 ]
  store i32 %354, i32* %16, align 4
  %355 = load i32, i32* %16, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %4, align 4
  br label %859

360:                                              ; preds = %353
  %361 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %362 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %363 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %364 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %363, i32 0, i32 0
  %365 = load i32**, i32*** %364, align 8
  %366 = load i64, i64* %13, align 8
  %367 = getelementptr inbounds i32*, i32** %365, i64 %366
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %16, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @AR5K_RF_OB_5GHZ, align 4
  %374 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %361, %struct.ath5k_rf_reg* %362, i32 %372, i32 %373, i32 1)
  %375 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %376 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %377 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %378 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %377, i32 0, i32 1
  %379 = load i32**, i32*** %378, align 8
  %380 = load i64, i64* %13, align 8
  %381 = getelementptr inbounds i32*, i32** %379, i64 %380
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @AR5K_RF_DB_5GHZ, align 4
  %388 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %375, %struct.ath5k_rf_reg* %376, i32 %386, i32 %387, i32 1)
  br label %389

389:                                              ; preds = %360, %318
  br label %390

390:                                              ; preds = %389, %283
  %391 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %10, align 8
  %392 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %391, i32 0, i32 0
  %393 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %392, align 8
  %394 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %395 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %394, i32 0, i32 7
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %393, i64 %397
  store %struct.ath5k_gain_opt_step* %398, %struct.ath5k_gain_opt_step** %11, align 8
  %399 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %400 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %399, i32 0, i32 5
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @AR5K_BWMODE_40MHZ, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %414

404:                                              ; preds = %390
  %405 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %406 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = icmp ne i32 %407, 128
  br i1 %408, label %409, label %414

409:                                              ; preds = %404
  %410 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %411 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %412 = load i32, i32* @AR5K_RF_TURBO, align 4
  %413 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %410, %struct.ath5k_rf_reg* %411, i32 1, i32 %412, i32 0)
  br label %414

414:                                              ; preds = %409, %404, %390
  %415 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %416 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = icmp eq i32 %417, 130
  br i1 %418, label %419, label %545

419:                                              ; preds = %414
  %420 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %421 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @AR5K_MODE_11B, align 8
  %424 = icmp ne i64 %422, %423
  br i1 %424, label %425, label %466

425:                                              ; preds = %419
  %426 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %427 = load i32, i32* @AR5K_PHY_FRAME_CTL, align 4
  %428 = load i32, i32* @AR5K_PHY_FRAME_CTL_TX_CLIP, align 4
  %429 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %430 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %429, i32 0, i32 0
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 0
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %426, i32 %427, i32 %428, i32 %433)
  %435 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %436 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %437 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %438 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %437, i32 0, i32 0
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 1
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @AR5K_RF_PWD_90, align 4
  %443 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %435, %struct.ath5k_rf_reg* %436, i32 %441, i32 %442, i32 1)
  %444 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %445 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %446 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %447 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 2
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @AR5K_RF_PWD_84, align 4
  %452 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %444, %struct.ath5k_rf_reg* %445, i32 %450, i32 %451, i32 1)
  %453 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %454 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %455 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %456 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %455, i32 0, i32 0
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 3
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @AR5K_RF_RFGAIN_SEL, align 4
  %461 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %453, %struct.ath5k_rf_reg* %454, i32 %459, i32 %460, i32 1)
  %462 = load i8*, i8** @AR5K_RFGAIN_ACTIVE, align 8
  %463 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %464 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %463, i32 0, i32 7
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 1
  store i8* %462, i8** %465, align 8
  br label %466

466:                                              ; preds = %425, %419
  %467 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %468 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %469 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %470 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %469, i32 0, i32 2
  %471 = load i32*, i32** %470, align 8
  %472 = load i64, i64* %13, align 8
  %473 = getelementptr inbounds i32, i32* %471, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, 0
  %476 = xor i1 %475, true
  %477 = zext i1 %476 to i32
  %478 = load i32, i32* @AR5K_RF_PWD_XPD, align 4
  %479 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %467, %struct.ath5k_rf_reg* %468, i32 %477, i32 %478, i32 1)
  %480 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %481 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %482 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %483 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %482, i32 0, i32 3
  %484 = load i32*, i32** %483, align 8
  %485 = load i64, i64* %13, align 8
  %486 = getelementptr inbounds i32, i32* %484, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @AR5K_RF_XPD_GAIN, align 4
  %489 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %480, %struct.ath5k_rf_reg* %481, i32 %487, i32 %488, i32 1)
  %490 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %491 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %492 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %493 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %492, i32 0, i32 4
  %494 = load i32*, i32** %493, align 8
  %495 = load i64, i64* %13, align 8
  %496 = getelementptr inbounds i32, i32* %494, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @AR5K_RF_GAIN_I, align 4
  %499 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %490, %struct.ath5k_rf_reg* %491, i32 %497, i32 %498, i32 1)
  %500 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %501 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %502 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %503 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %502, i32 0, i32 2
  %504 = load i32*, i32** %503, align 8
  %505 = load i64, i64* %13, align 8
  %506 = getelementptr inbounds i32, i32* %504, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @AR5K_RF_PLO_SEL, align 4
  %509 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %500, %struct.ath5k_rf_reg* %501, i32 %507, i32 %508, i32 1)
  %510 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %511 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %510, i32 0, i32 5
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %521, label %515

515:                                              ; preds = %466
  %516 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %517 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %516, i32 0, i32 5
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %544

521:                                              ; preds = %515, %466
  %522 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %523 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %524 = load i32, i32* @AR5K_RF_WAIT_S, align 4
  %525 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %522, %struct.ath5k_rf_reg* %523, i32 31, i32 %524, i32 1)
  %526 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %527 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %526, i32 0, i32 5
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %530 = icmp eq i64 %528, %529
  %531 = zext i1 %530 to i64
  %532 = select i1 %530, i32 31, i32 16
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %18, align 8
  %534 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %535 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %536 = load i64, i64* %18, align 8
  %537 = trunc i64 %536 to i32
  %538 = load i32, i32* @AR5K_RF_WAIT_I, align 4
  %539 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %534, %struct.ath5k_rf_reg* %535, i32 %537, i32 %538, i32 1)
  %540 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %541 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %542 = load i32, i32* @AR5K_RF_MAX_TIME, align 4
  %543 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %540, %struct.ath5k_rf_reg* %541, i32 3, i32 %542, i32 1)
  br label %544

544:                                              ; preds = %521, %515
  br label %545

545:                                              ; preds = %544, %414
  %546 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %547 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = icmp eq i32 %548, 129
  br i1 %549, label %550, label %798

550:                                              ; preds = %545
  %551 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %552 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %551, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  %554 = load i64, i64* @AR5K_MODE_11B, align 8
  %555 = icmp ne i64 %553, %554
  br i1 %555, label %556, label %624

556:                                              ; preds = %550
  %557 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %558 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %559 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %560 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %559, i32 0, i32 0
  %561 = load i32*, i32** %560, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 0
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @AR5K_RF_MIXGAIN_OVR, align 4
  %565 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %557, %struct.ath5k_rf_reg* %558, i32 %563, i32 %564, i32 1)
  %566 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %567 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %568 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %569 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %568, i32 0, i32 0
  %570 = load i32*, i32** %569, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 1
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @AR5K_RF_PWD_138, align 4
  %574 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %566, %struct.ath5k_rf_reg* %567, i32 %572, i32 %573, i32 1)
  %575 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %576 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %577 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %578 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %577, i32 0, i32 0
  %579 = load i32*, i32** %578, align 8
  %580 = getelementptr inbounds i32, i32* %579, i64 2
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* @AR5K_RF_PWD_137, align 4
  %583 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %575, %struct.ath5k_rf_reg* %576, i32 %581, i32 %582, i32 1)
  %584 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %585 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %586 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %587 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %586, i32 0, i32 0
  %588 = load i32*, i32** %587, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 3
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* @AR5K_RF_PWD_136, align 4
  %592 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %584, %struct.ath5k_rf_reg* %585, i32 %590, i32 %591, i32 1)
  %593 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %594 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %595 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %596 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %595, i32 0, i32 0
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 4
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* @AR5K_RF_PWD_132, align 4
  %601 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %593, %struct.ath5k_rf_reg* %594, i32 %599, i32 %600, i32 1)
  %602 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %603 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %604 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %605 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %604, i32 0, i32 0
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 5
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @AR5K_RF_PWD_131, align 4
  %610 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %602, %struct.ath5k_rf_reg* %603, i32 %608, i32 %609, i32 1)
  %611 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %612 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %613 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %11, align 8
  %614 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %613, i32 0, i32 0
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 6
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* @AR5K_RF_PWD_130, align 4
  %619 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %611, %struct.ath5k_rf_reg* %612, i32 %617, i32 %618, i32 1)
  %620 = load i8*, i8** @AR5K_RFGAIN_ACTIVE, align 8
  %621 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %622 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %621, i32 0, i32 7
  %623 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %622, i32 0, i32 1
  store i8* %620, i8** %623, align 8
  br label %624

624:                                              ; preds = %556, %550
  %625 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %626 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %627 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %628 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %627, i32 0, i32 2
  %629 = load i32*, i32** %628, align 8
  %630 = load i64, i64* %13, align 8
  %631 = getelementptr inbounds i32, i32* %629, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* @AR5K_RF_XPD_SEL, align 4
  %634 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %625, %struct.ath5k_rf_reg* %626, i32 %632, i32 %633, i32 1)
  %635 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %636 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* @AR5K_SREV_RAD_5112A, align 4
  %639 = icmp slt i32 %637, %638
  br i1 %639, label %640, label %651

640:                                              ; preds = %624
  %641 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %642 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %643 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %644 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %643, i32 0, i32 3
  %645 = load i32*, i32** %644, align 8
  %646 = load i64, i64* %13, align 8
  %647 = getelementptr inbounds i32, i32* %645, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = load i32, i32* @AR5K_RF_XPD_GAIN, align 4
  %650 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %641, %struct.ath5k_rf_reg* %642, i32 %648, i32 %649, i32 1)
  br label %756

651:                                              ; preds = %624
  %652 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %653 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %652, i32 0, i32 5
  %654 = load i64**, i64*** %653, align 8
  %655 = load i64, i64* %13, align 8
  %656 = getelementptr inbounds i64*, i64** %654, i64 %655
  %657 = load i64*, i64** %656, align 8
  store i64* %657, i64** %19, align 8
  %658 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %659 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %658, i32 0, i32 6
  %660 = load i32*, i32** %659, align 8
  %661 = load i64, i64* %13, align 8
  %662 = getelementptr inbounds i32, i32* %660, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = icmp sgt i32 %663, 1
  br i1 %664, label %665, label %682

665:                                              ; preds = %651
  %666 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %667 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %668 = load i64*, i64** %19, align 8
  %669 = getelementptr inbounds i64, i64* %668, i64 0
  %670 = load i64, i64* %669, align 8
  %671 = trunc i64 %670 to i32
  %672 = load i32, i32* @AR5K_RF_PD_GAIN_LO, align 4
  %673 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %666, %struct.ath5k_rf_reg* %667, i32 %671, i32 %672, i32 1)
  %674 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %675 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %676 = load i64*, i64** %19, align 8
  %677 = getelementptr inbounds i64, i64* %676, i64 1
  %678 = load i64, i64* %677, align 8
  %679 = trunc i64 %678 to i32
  %680 = load i32, i32* @AR5K_RF_PD_GAIN_HI, align 4
  %681 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %674, %struct.ath5k_rf_reg* %675, i32 %679, i32 %680, i32 1)
  br label %699

682:                                              ; preds = %651
  %683 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %684 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %685 = load i64*, i64** %19, align 8
  %686 = getelementptr inbounds i64, i64* %685, i64 0
  %687 = load i64, i64* %686, align 8
  %688 = trunc i64 %687 to i32
  %689 = load i32, i32* @AR5K_RF_PD_GAIN_LO, align 4
  %690 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %683, %struct.ath5k_rf_reg* %684, i32 %688, i32 %689, i32 1)
  %691 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %692 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %693 = load i64*, i64** %19, align 8
  %694 = getelementptr inbounds i64, i64* %693, i64 0
  %695 = load i64, i64* %694, align 8
  %696 = trunc i64 %695 to i32
  %697 = load i32, i32* @AR5K_RF_PD_GAIN_HI, align 4
  %698 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %691, %struct.ath5k_rf_reg* %692, i32 %696, i32 %697, i32 1)
  br label %699

699:                                              ; preds = %682, %665
  %700 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %701 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 8
  %703 = icmp eq i32 %702, 129
  br i1 %703, label %704, label %728

704:                                              ; preds = %699
  %705 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %706 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %705, i32 0, i32 2
  %707 = load i32, i32* %706, align 8
  %708 = load i32, i32* @AR5K_SREV_REV, align 4
  %709 = and i32 %707, %708
  %710 = icmp sgt i32 %709, 0
  br i1 %710, label %711, label %728

711:                                              ; preds = %704
  %712 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %713 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %714 = load i32, i32* @AR5K_RF_HIGH_VC_CP, align 4
  %715 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %712, %struct.ath5k_rf_reg* %713, i32 2, i32 %714, i32 1)
  %716 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %717 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %718 = load i32, i32* @AR5K_RF_MID_VC_CP, align 4
  %719 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %716, %struct.ath5k_rf_reg* %717, i32 2, i32 %718, i32 1)
  %720 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %721 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %722 = load i32, i32* @AR5K_RF_LOW_VC_CP, align 4
  %723 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %720, %struct.ath5k_rf_reg* %721, i32 2, i32 %722, i32 1)
  %724 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %725 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %726 = load i32, i32* @AR5K_RF_PUSH_UP, align 4
  %727 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %724, %struct.ath5k_rf_reg* %725, i32 2, i32 %726, i32 1)
  br label %728

728:                                              ; preds = %711, %704, %699
  %729 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %730 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %729, i32 0, i32 6
  %731 = load i64, i64* %730, align 8
  %732 = load i64, i64* @AR5K_SREV_PHY_5212A, align 8
  %733 = icmp sge i64 %731, %732
  br i1 %733, label %734, label %755

734:                                              ; preds = %728
  %735 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %736 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %737 = load i32, i32* @AR5K_RF_PAD2GND, align 4
  %738 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %735, %struct.ath5k_rf_reg* %736, i32 1, i32 %737, i32 1)
  %739 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %740 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %741 = load i32, i32* @AR5K_RF_XB2_LVL, align 4
  %742 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %739, %struct.ath5k_rf_reg* %740, i32 1, i32 %741, i32 1)
  %743 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %744 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %745 = load i32, i32* @AR5K_RF_XB5_LVL, align 4
  %746 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %743, %struct.ath5k_rf_reg* %744, i32 1, i32 %745, i32 1)
  %747 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %748 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %749 = load i32, i32* @AR5K_RF_PWD_167, align 4
  %750 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %747, %struct.ath5k_rf_reg* %748, i32 1, i32 %749, i32 1)
  %751 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %752 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %753 = load i32, i32* @AR5K_RF_PWD_166, align 4
  %754 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %751, %struct.ath5k_rf_reg* %752, i32 1, i32 %753, i32 1)
  br label %755

755:                                              ; preds = %734, %728
  br label %756

756:                                              ; preds = %755, %640
  %757 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %758 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %759 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %12, align 8
  %760 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %759, i32 0, i32 4
  %761 = load i32*, i32** %760, align 8
  %762 = load i64, i64* %13, align 8
  %763 = getelementptr inbounds i32, i32* %761, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = load i32, i32* @AR5K_RF_GAIN_I, align 4
  %766 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %757, %struct.ath5k_rf_reg* %758, i32 %764, i32 %765, i32 1)
  %767 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %768 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %767, i32 0, i32 5
  %769 = load i64, i64* %768, align 8
  %770 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %771 = icmp eq i64 %769, %770
  br i1 %771, label %778, label %772

772:                                              ; preds = %756
  %773 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %774 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %773, i32 0, i32 5
  %775 = load i64, i64* %774, align 8
  %776 = load i64, i64* @AR5K_BWMODE_10MHZ, align 8
  %777 = icmp eq i64 %775, %776
  br i1 %777, label %778, label %797

778:                                              ; preds = %772, %756
  %779 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %780 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %779, i32 0, i32 5
  %781 = load i64, i64* %780, align 8
  %782 = load i64, i64* @AR5K_BWMODE_5MHZ, align 8
  %783 = icmp eq i64 %781, %782
  %784 = zext i1 %783 to i64
  %785 = select i1 %783, i32 15, i32 8
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %20, align 8
  %787 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %788 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %789 = load i64, i64* %20, align 8
  %790 = trunc i64 %789 to i32
  %791 = load i32, i32* @AR5K_RF_PD_PERIOD_A, align 4
  %792 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %787, %struct.ath5k_rf_reg* %788, i32 %790, i32 %791, i32 1)
  %793 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %794 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %795 = load i32, i32* @AR5K_RF_PD_DELAY_A, align 4
  %796 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %793, %struct.ath5k_rf_reg* %794, i32 15, i32 %795, i32 1)
  br label %797

797:                                              ; preds = %778, %772
  br label %798

798:                                              ; preds = %797, %545
  %799 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %800 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 8
  %802 = icmp eq i32 %801, 128
  br i1 %802, label %803, label %832

803:                                              ; preds = %798
  %804 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %805 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %804, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %808 = icmp eq i64 %806, %807
  br i1 %808, label %809, label %832

809:                                              ; preds = %803
  %810 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %811 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %812 = load i32, i32* @AR5K_RF_DERBY_CHAN_SEL_MODE, align 4
  %813 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %810, %struct.ath5k_rf_reg* %811, i32 1, i32 %812, i32 1)
  %814 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %815 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %814, i32 0, i32 3
  %816 = load i64, i64* %815, align 8
  %817 = load i64, i64* @AR5K_SREV_AR5424, align 8
  %818 = icmp sge i64 %816, %817
  br i1 %818, label %819, label %831

819:                                              ; preds = %809
  %820 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %821 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %820, i32 0, i32 3
  %822 = load i64, i64* %821, align 8
  %823 = load i64, i64* @AR5K_SREV_AR5413, align 8
  %824 = icmp slt i64 %822, %823
  br i1 %824, label %825, label %831

825:                                              ; preds = %819
  %826 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %827 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %828 = call i32 @ath5k_hw_bitswap(i32 6, i32 3)
  %829 = load i32, i32* @AR5K_RF_PWD_ICLOBUF_2G, align 4
  %830 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %826, %struct.ath5k_rf_reg* %827, i32 %828, i32 %829, i32 1)
  br label %831

831:                                              ; preds = %825, %819, %809
  br label %832

832:                                              ; preds = %831, %803, %798
  store i32 0, i32* %15, align 4
  br label %833

833:                                              ; preds = %855, %832
  %834 = load i32, i32* %15, align 4
  %835 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %836 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %835, i32 0, i32 1
  %837 = load i32, i32* %836, align 4
  %838 = icmp slt i32 %834, %837
  br i1 %838, label %839, label %858

839:                                              ; preds = %833
  %840 = load i32, i32* %15, align 4
  %841 = call i32 @AR5K_REG_WAIT(i32 %840)
  %842 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %843 = load i32*, i32** %14, align 8
  %844 = load i32, i32* %15, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i32, i32* %843, i64 %845
  %847 = load i32, i32* %846, align 4
  %848 = load %struct.ath5k_ini_rfbuffer*, %struct.ath5k_ini_rfbuffer** %9, align 8
  %849 = load i32, i32* %15, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %848, i64 %850
  %852 = getelementptr inbounds %struct.ath5k_ini_rfbuffer, %struct.ath5k_ini_rfbuffer* %851, i32 0, i32 1
  %853 = load i32, i32* %852, align 4
  %854 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %842, i32 %847, i32 %853)
  br label %855

855:                                              ; preds = %839
  %856 = load i32, i32* %15, align 4
  %857 = add nsw i32 %856, 1
  store i32 %857, i32* %15, align 4
  br label %833

858:                                              ; preds = %833
  store i32 0, i32* %4, align 4
  br label %859

859:                                              ; preds = %858, %357, %209, %184, %161
  %860 = load i32, i32* %4, align 4
  ret i32 %860
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*) #1

declare dso_local i32 @ath5k_hw_rfb_op(%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i32, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_bitswap(i32, i32) #1

declare dso_local i32 @AR5K_REG_WAIT(i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
