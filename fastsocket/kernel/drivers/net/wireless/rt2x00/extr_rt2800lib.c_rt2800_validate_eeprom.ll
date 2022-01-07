; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32, i32 }

@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MAC: %pM\0A\00", align 1
@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RF_TYPE = common dso_local global i32 0, align 4
@RF2820 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@RT2860 = common dso_local global i32 0, align 4
@RT2872 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_HW_RADIO = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_TX_ALC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_LNA_2G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_LNA_5G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_CARDBUS_ACCEL = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_SB_2G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_SB_5G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_WPS_PBC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_2G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_5G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BROADBAND_EXT_LNA = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_INTERNAL_TX_ALC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BT_COEXIST = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_DAC_TEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Freq: 0x%04x\0A\00", align 1
@EEPROM_FREQ_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_TXRX_ACTIVITY = common dso_local global i32 0, align 4
@EEPROM_FREQ_LED_POLARITY = common dso_local global i32 0, align 4
@EEPROM_LED_AG_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_ACT_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Led Mode: 0x%04x\0A\00", align 1
@EEPROM_LNA = common dso_local global i32 0, align 4
@EEPROM_LNA_A0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG_OFFSET0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG_OFFSET1 = common dso_local global i32 0, align 4
@EEPROM_TXMIXER_GAIN_BG = common dso_local global i32 0, align 4
@EEPROM_TXMIXER_GAIN_BG_VAL = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_OFFSET2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_LNA_A1 = common dso_local global i32 0, align 4
@EEPROM_TXMIXER_GAIN_A = common dso_local global i32 0, align 4
@EEPROM_TXMIXER_GAIN_A_VAL = common dso_local global i32 0, align 4
@EEPROM_RSSI_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_A_OFFSET0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A_OFFSET1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_OFFSET2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_LNA_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2800_drv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %10, align 8
  store %struct.rt2800_drv_data* %11, %struct.rt2800_drv_data** %4, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = call i32 @rt2800_read_eeprom(%struct.rt2x00_dev* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %312

18:                                               ; preds = %1
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %21 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @is_valid_ether_addr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @eth_random_addr(i32* %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %34 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %32, i32 %33, i32* %5)
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 65535
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %39 = call i32 @rt2x00_set_field16(i32* %5, i32 %38, i32 2)
  %40 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %41 = call i32 @rt2x00_set_field16(i32* %5, i32 %40, i32 1)
  %42 = load i32, i32* @EEPROM_NIC_CONF0_RF_TYPE, align 4
  %43 = load i32, i32* @RF2820, align 4
  %44 = call i32 @rt2x00_set_field16(i32* %5, i32 %42, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %76

52:                                               ; preds = %31
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %54 = load i32, i32* @RT2860, align 4
  %55 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load i32, i32* @RT2872, align 4
  %60 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %65 = call i32 @rt2x00_get_field16(i32 %63, i32 %64)
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %69 = call i32 @rt2x00_set_field16(i32* %5, i32 %68, i32 2)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %57
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %79 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %77, i32 %78, i32* %5)
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 65535
  br i1 %81, label %82, label %120

82:                                               ; preds = %76
  %83 = load i32, i32* @EEPROM_NIC_CONF1_HW_RADIO, align 4
  %84 = call i32 @rt2x00_set_field16(i32* %5, i32 %83, i32 0)
  %85 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_TX_ALC, align 4
  %86 = call i32 @rt2x00_set_field16(i32* %5, i32 %85, i32 0)
  %87 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, align 4
  %88 = call i32 @rt2x00_set_field16(i32* %5, i32 %87, i32 0)
  %89 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, align 4
  %90 = call i32 @rt2x00_set_field16(i32* %5, i32 %89, i32 0)
  %91 = load i32, i32* @EEPROM_NIC_CONF1_CARDBUS_ACCEL, align 4
  %92 = call i32 @rt2x00_set_field16(i32* %5, i32 %91, i32 0)
  %93 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_SB_2G, align 4
  %94 = call i32 @rt2x00_set_field16(i32* %5, i32 %93, i32 0)
  %95 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_SB_5G, align 4
  %96 = call i32 @rt2x00_set_field16(i32* %5, i32 %95, i32 0)
  %97 = load i32, i32* @EEPROM_NIC_CONF1_WPS_PBC, align 4
  %98 = call i32 @rt2x00_set_field16(i32* %5, i32 %97, i32 0)
  %99 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_2G, align 4
  %100 = call i32 @rt2x00_set_field16(i32* %5, i32 %99, i32 0)
  %101 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_5G, align 4
  %102 = call i32 @rt2x00_set_field16(i32* %5, i32 %101, i32 0)
  %103 = load i32, i32* @EEPROM_NIC_CONF1_BROADBAND_EXT_LNA, align 4
  %104 = call i32 @rt2x00_set_field16(i32* %5, i32 %103, i32 0)
  %105 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %106 = call i32 @rt2x00_set_field16(i32* %5, i32 %105, i32 0)
  %107 = load i32, i32* @EEPROM_NIC_CONF1_INTERNAL_TX_ALC, align 4
  %108 = call i32 @rt2x00_set_field16(i32* %5, i32 %107, i32 0)
  %109 = load i32, i32* @EEPROM_NIC_CONF1_BT_COEXIST, align 4
  %110 = call i32 @rt2x00_set_field16(i32* %5, i32 %109, i32 0)
  %111 = load i32, i32* @EEPROM_NIC_CONF1_DAC_TEST, align 4
  %112 = call i32 @rt2x00_set_field16(i32* %5, i32 %111, i32 0)
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %113, i32 %114, i32 %115)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %82, %76
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = load i32, i32* @EEPROM_FREQ, align 4
  %123 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %121, i32 %122, i32* %5)
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 255
  br i1 %126, label %127, label %137

127:                                              ; preds = %120
  %128 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %129 = call i32 @rt2x00_set_field16(i32* %5, i32 %128, i32 0)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %131 = load i32, i32* @EEPROM_FREQ, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %130, i32 %131, i32 %132)
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %127, %120
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 65280
  %140 = icmp eq i32 %139, 65280
  br i1 %140, label %141, label %163

141:                                              ; preds = %137
  %142 = load i32, i32* @EEPROM_FREQ_LED_MODE, align 4
  %143 = load i32, i32* @LED_MODE_TXRX_ACTIVITY, align 4
  %144 = call i32 @rt2x00_set_field16(i32* %5, i32 %142, i32 %143)
  %145 = load i32, i32* @EEPROM_FREQ_LED_POLARITY, align 4
  %146 = call i32 @rt2x00_set_field16(i32* %5, i32 %145, i32 0)
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %148 = load i32, i32* @EEPROM_FREQ, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %147, i32 %148, i32 %149)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %152 = load i32, i32* @EEPROM_LED_AG_CONF, align 4
  %153 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %151, i32 %152, i32 21845)
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %155 = load i32, i32* @EEPROM_LED_ACT_CONF, align 4
  %156 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %154, i32 %155, i32 8737)
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %158 = load i32, i32* @EEPROM_LED_POLARITY, align 4
  %159 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %157, i32 %158, i32 43512)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %141, %137
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %165 = load i32, i32* @EEPROM_LNA, align 4
  %166 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %164, i32 %165, i32* %5)
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @EEPROM_LNA_A0, align 4
  %169 = call i32 @rt2x00_get_field16(i32 %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %171 = load i32, i32* @EEPROM_RSSI_BG, align 4
  %172 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %170, i32 %171, i32* %5)
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @EEPROM_RSSI_BG_OFFSET0, align 4
  %175 = call i32 @rt2x00_get_field16(i32 %173, i32 %174)
  %176 = call i32 @abs(i32 %175) #3
  %177 = icmp sgt i32 %176, 10
  br i1 %177, label %178, label %181

178:                                              ; preds = %163
  %179 = load i32, i32* @EEPROM_RSSI_BG_OFFSET0, align 4
  %180 = call i32 @rt2x00_set_field16(i32* %5, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %178, %163
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @EEPROM_RSSI_BG_OFFSET1, align 4
  %184 = call i32 @rt2x00_get_field16(i32 %182, i32 %183)
  %185 = call i32 @abs(i32 %184) #3
  %186 = icmp sgt i32 %185, 10
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @EEPROM_RSSI_BG_OFFSET1, align 4
  %189 = call i32 @rt2x00_set_field16(i32* %5, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %181
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %192 = load i32, i32* @EEPROM_RSSI_BG, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %191, i32 %192, i32 %193)
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %196 = load i32, i32* @EEPROM_TXMIXER_GAIN_BG, align 4
  %197 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %195, i32 %196, i32* %5)
  %198 = load i32, i32* %5, align 4
  %199 = and i32 %198, 255
  %200 = icmp ne i32 %199, 255
  br i1 %200, label %201, label %207

201:                                              ; preds = %190
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @EEPROM_TXMIXER_GAIN_BG_VAL, align 4
  %204 = call i32 @rt2x00_get_field16(i32 %202, i32 %203)
  %205 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %206 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  br label %210

207:                                              ; preds = %190
  %208 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %209 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %208, i32 0, i32 0
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %201
  %211 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %212 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %213 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %211, i32 %212, i32* %5)
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @EEPROM_RSSI_BG2_OFFSET2, align 4
  %216 = call i32 @rt2x00_get_field16(i32 %214, i32 %215)
  %217 = call i32 @abs(i32 %216) #3
  %218 = icmp sgt i32 %217, 10
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = load i32, i32* @EEPROM_RSSI_BG2_OFFSET2, align 4
  %221 = call i32 @rt2x00_set_field16(i32* %5, i32 %220, i32 0)
  br label %222

222:                                              ; preds = %219, %210
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %225 = call i32 @rt2x00_get_field16(i32 %223, i32 %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %230 = call i32 @rt2x00_get_field16(i32 %228, i32 %229)
  %231 = icmp eq i32 %230, 255
  br i1 %231, label %232, label %236

232:                                              ; preds = %227, %222
  %233 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @rt2x00_set_field16(i32* %5, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %227
  %237 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %238 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %239 = load i32, i32* %5, align 4
  %240 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %237, i32 %238, i32 %239)
  %241 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %242 = load i32, i32* @EEPROM_TXMIXER_GAIN_A, align 4
  %243 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %241, i32 %242, i32* %5)
  %244 = load i32, i32* %5, align 4
  %245 = and i32 %244, 255
  %246 = icmp ne i32 %245, 255
  br i1 %246, label %247, label %253

247:                                              ; preds = %236
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @EEPROM_TXMIXER_GAIN_A_VAL, align 4
  %250 = call i32 @rt2x00_get_field16(i32 %248, i32 %249)
  %251 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %252 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %256

253:                                              ; preds = %236
  %254 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %255 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  br label %256

256:                                              ; preds = %253, %247
  %257 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %258 = load i32, i32* @EEPROM_RSSI_A, align 4
  %259 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %257, i32 %258, i32* %5)
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @EEPROM_RSSI_A_OFFSET0, align 4
  %262 = call i32 @rt2x00_get_field16(i32 %260, i32 %261)
  %263 = call i32 @abs(i32 %262) #3
  %264 = icmp sgt i32 %263, 10
  br i1 %264, label %265, label %268

265:                                              ; preds = %256
  %266 = load i32, i32* @EEPROM_RSSI_A_OFFSET0, align 4
  %267 = call i32 @rt2x00_set_field16(i32* %5, i32 %266, i32 0)
  br label %268

268:                                              ; preds = %265, %256
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* @EEPROM_RSSI_A_OFFSET1, align 4
  %271 = call i32 @rt2x00_get_field16(i32 %269, i32 %270)
  %272 = call i32 @abs(i32 %271) #3
  %273 = icmp sgt i32 %272, 10
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load i32, i32* @EEPROM_RSSI_A_OFFSET1, align 4
  %276 = call i32 @rt2x00_set_field16(i32* %5, i32 %275, i32 0)
  br label %277

277:                                              ; preds = %274, %268
  %278 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %279 = load i32, i32* @EEPROM_RSSI_A, align 4
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %278, i32 %279, i32 %280)
  %282 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %283 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %284 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %282, i32 %283, i32* %5)
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @EEPROM_RSSI_A2_OFFSET2, align 4
  %287 = call i32 @rt2x00_get_field16(i32 %285, i32 %286)
  %288 = call i32 @abs(i32 %287) #3
  %289 = icmp sgt i32 %288, 10
  br i1 %289, label %290, label %293

290:                                              ; preds = %277
  %291 = load i32, i32* @EEPROM_RSSI_A2_OFFSET2, align 4
  %292 = call i32 @rt2x00_set_field16(i32* %5, i32 %291, i32 0)
  br label %293

293:                                              ; preds = %290, %277
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %296 = call i32 @rt2x00_get_field16(i32 %294, i32 %295)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %293
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %301 = call i32 @rt2x00_get_field16(i32 %299, i32 %300)
  %302 = icmp eq i32 %301, 255
  br i1 %302, label %303, label %307

303:                                              ; preds = %298, %293
  %304 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %305 = load i32, i32* %7, align 4
  %306 = call i32 @rt2x00_set_field16(i32* %5, i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %303, %298
  %308 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %309 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %310 = load i32, i32* %5, align 4
  %311 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %308, i32 %309, i32 %310)
  store i32 0, i32* %2, align 4
  br label %312

312:                                              ; preds = %307, %16
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @rt2800_read_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, ...) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
