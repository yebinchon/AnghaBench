; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MAC: %pM\0A\00", align 1
@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_NUM = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_DYN_TXAGC = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@RF2522 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_CARDBUS_ACCEL = common dso_local global i32 0, align 4
@EEPROM_NIC_DYN_BBP_TUNE = common dso_local global i32 0, align 4
@EEPROM_NIC_CCK_TX_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_CALIBRATE_OFFSET = common dso_local global i32 0, align 4
@EEPROM_CALIBRATE_OFFSET_RSSI = common dso_local global i32 0, align 4
@DEFAULT_RSSI_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Calibrate offset: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_THRESHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"BBPtune: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_VGC = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_VGCUPPER = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_VGCLOWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"BBPtune vgc: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R17 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R17_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R17_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"BBPtune r17: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R24 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R24_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R24_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"BBPtune r24: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R25 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R25_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R25_HIGH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"BBPtune r25: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R61 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R61_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R61_HIGH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"BBPtune r61: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500usb_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EEPROM_SIZE, align 4
  %11 = call i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev* %6, i32 %9, i32 %10)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %14 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %12, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @is_valid_ether_addr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @eth_random_addr(i32* %19)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = load i32, i32* @EEPROM_ANTENNA, align 4
  %27 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %25, i32 %26, i32* %3)
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %32 = call i32 @rt2x00_set_field16(i32* %3, i32 %31, i32 2)
  %33 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %34 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %35 = call i32 @rt2x00_set_field16(i32* %3, i32 %33, i32 %34)
  %36 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %37 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %38 = call i32 @rt2x00_set_field16(i32* %3, i32 %36, i32 %37)
  %39 = load i32, i32* @EEPROM_ANTENNA_LED_MODE, align 4
  %40 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %41 = call i32 @rt2x00_set_field16(i32* %3, i32 %39, i32 %40)
  %42 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %43 = call i32 @rt2x00_set_field16(i32* %3, i32 %42, i32 0)
  %44 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %45 = call i32 @rt2x00_set_field16(i32* %3, i32 %44, i32 0)
  %46 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %47 = load i32, i32* @RF2522, align 4
  %48 = call i32 @rt2x00_set_field16(i32* %3, i32 %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = load i32, i32* @EEPROM_ANTENNA, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %49, i32 %50, i32 %51)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %30, %24
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = load i32, i32* @EEPROM_NIC, align 4
  %59 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %57, i32 %58, i32* %3)
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i32, i32* @EEPROM_NIC_CARDBUS_ACCEL, align 4
  %64 = call i32 @rt2x00_set_field16(i32* %3, i32 %63, i32 0)
  %65 = load i32, i32* @EEPROM_NIC_DYN_BBP_TUNE, align 4
  %66 = call i32 @rt2x00_set_field16(i32* %3, i32 %65, i32 0)
  %67 = load i32, i32* @EEPROM_NIC_CCK_TX_POWER, align 4
  %68 = call i32 @rt2x00_set_field16(i32* %3, i32 %67, i32 0)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = load i32, i32* @EEPROM_NIC, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %62, %56
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %79 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %77, i32 %78, i32* %3)
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 65535
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i32, i32* @EEPROM_CALIBRATE_OFFSET_RSSI, align 4
  %84 = load i32, i32* @DEFAULT_RSSI_OFFSET, align 4
  %85 = call i32 @rt2x00_set_field16(i32* %3, i32 %83, i32 %84)
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %87 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %82, %76
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = load i32, i32* @EEPROM_BBPTUNE, align 4
  %96 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %94, i32 %95, i32* %3)
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 65535
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load i32, i32* @EEPROM_BBPTUNE_THRESHOLD, align 4
  %101 = call i32 @rt2x00_set_field16(i32* %3, i32 %100, i32 45)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %103 = load i32, i32* @EEPROM_BBPTUNE, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %99, %93
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %111 = call i32 @rt2500usb_bbp_read(%struct.rt2x00_dev* %110, i32 17, i32* %5)
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 %112, 6
  store i32 %113, i32* %5, align 4
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %115 = load i32, i32* @EEPROM_BBPTUNE_VGC, align 4
  %116 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %114, i32 %115, i32* %3)
  %117 = load i32, i32* %3, align 4
  %118 = icmp eq i32 %117, 65535
  br i1 %118, label %119, label %132

119:                                              ; preds = %109
  %120 = load i32, i32* @EEPROM_BBPTUNE_VGCUPPER, align 4
  %121 = call i32 @rt2x00_set_field16(i32* %3, i32 %120, i32 64)
  %122 = load i32, i32* @EEPROM_BBPTUNE_VGCLOWER, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @rt2x00_set_field16(i32* %3, i32 %122, i32 %123)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %126 = load i32, i32* @EEPROM_BBPTUNE_VGC, align 4
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  br label %140

132:                                              ; preds = %109
  %133 = load i32, i32* @EEPROM_BBPTUNE_VGCLOWER, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @rt2x00_set_field16(i32* %3, i32 %133, i32 %134)
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %137 = load i32, i32* @EEPROM_BBPTUNE_VGC, align 4
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %119
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = load i32, i32* @EEPROM_BBPTUNE_R17, align 4
  %143 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %141, i32 %142, i32* %3)
  %144 = load i32, i32* %3, align 4
  %145 = icmp eq i32 %144, 65535
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load i32, i32* @EEPROM_BBPTUNE_R17_LOW, align 4
  %148 = call i32 @rt2x00_set_field16(i32* %3, i32 %147, i32 72)
  %149 = load i32, i32* @EEPROM_BBPTUNE_R17_HIGH, align 4
  %150 = call i32 @rt2x00_set_field16(i32* %3, i32 %149, i32 65)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %152 = load i32, i32* @EEPROM_BBPTUNE_R17, align 4
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %151, i32 %152, i32 %153)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %146, %140
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %160 = load i32, i32* @EEPROM_BBPTUNE_R24, align 4
  %161 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %159, i32 %160, i32* %3)
  %162 = load i32, i32* %3, align 4
  %163 = icmp eq i32 %162, 65535
  br i1 %163, label %164, label %176

164:                                              ; preds = %158
  %165 = load i32, i32* @EEPROM_BBPTUNE_R24_LOW, align 4
  %166 = call i32 @rt2x00_set_field16(i32* %3, i32 %165, i32 64)
  %167 = load i32, i32* @EEPROM_BBPTUNE_R24_HIGH, align 4
  %168 = call i32 @rt2x00_set_field16(i32* %3, i32 %167, i32 128)
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %170 = load i32, i32* @EEPROM_BBPTUNE_R24, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %169, i32 %170, i32 %171)
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %174 = load i32, i32* %3, align 4
  %175 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %164, %158
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %178 = load i32, i32* @EEPROM_BBPTUNE_R25, align 4
  %179 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %177, i32 %178, i32* %3)
  %180 = load i32, i32* %3, align 4
  %181 = icmp eq i32 %180, 65535
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load i32, i32* @EEPROM_BBPTUNE_R25_LOW, align 4
  %184 = call i32 @rt2x00_set_field16(i32* %3, i32 %183, i32 64)
  %185 = load i32, i32* @EEPROM_BBPTUNE_R25_HIGH, align 4
  %186 = call i32 @rt2x00_set_field16(i32* %3, i32 %185, i32 80)
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %188 = load i32, i32* @EEPROM_BBPTUNE_R25, align 4
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %187, i32 %188, i32 %189)
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %192 = load i32, i32* %3, align 4
  %193 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %182, %176
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %196 = load i32, i32* @EEPROM_BBPTUNE_R61, align 4
  %197 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %195, i32 %196, i32* %3)
  %198 = load i32, i32* %3, align 4
  %199 = icmp eq i32 %198, 65535
  br i1 %199, label %200, label %212

200:                                              ; preds = %194
  %201 = load i32, i32* @EEPROM_BBPTUNE_R61_LOW, align 4
  %202 = call i32 @rt2x00_set_field16(i32* %3, i32 %201, i32 96)
  %203 = load i32, i32* @EEPROM_BBPTUNE_R61_HIGH, align 4
  %204 = call i32 @rt2x00_set_field16(i32* %3, i32 %203, i32 109)
  %205 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %206 = load i32, i32* @EEPROM_BBPTUNE_R61, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %205, i32 %206, i32 %207)
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %210 = load i32, i32* %3, align 4
  %211 = call i32 (%struct.rt2x00_dev*, i8*, ...) @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %200, %194
  ret i32 0
}

declare dso_local i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, ...) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2500usb_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
