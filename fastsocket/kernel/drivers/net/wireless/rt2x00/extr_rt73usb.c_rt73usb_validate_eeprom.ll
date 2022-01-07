; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MAC: %pM\0A\00", align 1
@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_NUM = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@ANTENNA_B = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_FRAME_TYPE = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_DYN_TXAGC = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@RF5226 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_LED = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_G = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_A = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_ACT = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_0 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_1 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_2 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_3 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_4 = common dso_local global i32 0, align 4
@EEPROM_LED_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Led: 0x%04x\0A\00", align 1
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@EEPROM_FREQ_SEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Freq: 0x%04x\0A\00", align 1
@EEPROM_RSSI_OFFSET_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG_1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"RSSI OFFSET BG: 0x%04x\0A\00", align 1
@EEPROM_RSSI_OFFSET_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A_1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A_2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"RSSI OFFSET A: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt73usb_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
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
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @eth_random_addr(i32* %19)
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = load i32, i32* @EEPROM_ANTENNA, align 4
  %28 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %26, i32 %27, i32* %3)
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %33 = call i32 @rt2x00_set_field16(i32* %3, i32 %32, i32 2)
  %34 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %35 = load i32, i32* @ANTENNA_B, align 4
  %36 = call i32 @rt2x00_set_field16(i32* %3, i32 %34, i32 %35)
  %37 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %38 = load i32, i32* @ANTENNA_B, align 4
  %39 = call i32 @rt2x00_set_field16(i32* %3, i32 %37, i32 %38)
  %40 = load i32, i32* @EEPROM_ANTENNA_FRAME_TYPE, align 4
  %41 = call i32 @rt2x00_set_field16(i32* %3, i32 %40, i32 0)
  %42 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %43 = call i32 @rt2x00_set_field16(i32* %3, i32 %42, i32 0)
  %44 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %45 = call i32 @rt2x00_set_field16(i32* %3, i32 %44, i32 0)
  %46 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %47 = load i32, i32* @RF5226, align 4
  %48 = call i32 @rt2x00_set_field16(i32* %3, i32 %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = load i32, i32* @EEPROM_ANTENNA, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %49, i32 %50, i32 %51)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %31, %25
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = load i32, i32* @EEPROM_NIC, align 4
  %59 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %57, i32 %58, i32* %3)
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, 65535
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA, align 4
  %64 = call i32 @rt2x00_set_field16(i32* %3, i32 %63, i32 0)
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = load i32, i32* @EEPROM_NIC, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %62, %56
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = load i32, i32* @EEPROM_LED, align 4
  %75 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %73, i32 %74, i32* %3)
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 65535
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load i32, i32* @EEPROM_LED_POLARITY_RDY_G, align 4
  %80 = call i32 @rt2x00_set_field16(i32* %3, i32 %79, i32 0)
  %81 = load i32, i32* @EEPROM_LED_POLARITY_RDY_A, align 4
  %82 = call i32 @rt2x00_set_field16(i32* %3, i32 %81, i32 0)
  %83 = load i32, i32* @EEPROM_LED_POLARITY_ACT, align 4
  %84 = call i32 @rt2x00_set_field16(i32* %3, i32 %83, i32 0)
  %85 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_0, align 4
  %86 = call i32 @rt2x00_set_field16(i32* %3, i32 %85, i32 0)
  %87 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_1, align 4
  %88 = call i32 @rt2x00_set_field16(i32* %3, i32 %87, i32 0)
  %89 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_2, align 4
  %90 = call i32 @rt2x00_set_field16(i32* %3, i32 %89, i32 0)
  %91 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_3, align 4
  %92 = call i32 @rt2x00_set_field16(i32* %3, i32 %91, i32 0)
  %93 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_4, align 4
  %94 = call i32 @rt2x00_set_field16(i32* %3, i32 %93, i32 0)
  %95 = load i32, i32* @EEPROM_LED_LED_MODE, align 4
  %96 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %97 = call i32 @rt2x00_set_field16(i32* %3, i32 %95, i32 %96)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = load i32, i32* @EEPROM_LED, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %78, %72
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = load i32, i32* @EEPROM_FREQ, align 4
  %108 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %106, i32 %107, i32* %3)
  %109 = load i32, i32* %3, align 4
  %110 = icmp eq i32 %109, 65535
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %113 = call i32 @rt2x00_set_field16(i32* %3, i32 %112, i32 0)
  %114 = load i32, i32* @EEPROM_FREQ_SEQ, align 4
  %115 = call i32 @rt2x00_set_field16(i32* %3, i32 %114, i32 0)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %117 = load i32, i32* @EEPROM_FREQ, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %116, i32 %117, i32 %118)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %111, %105
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %125 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %126 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %124, i32 %125, i32* %3)
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 %127, 65535
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %131 = call i32 @rt2x00_set_field16(i32* %3, i32 %130, i32 0)
  %132 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %133 = call i32 @rt2x00_set_field16(i32* %3, i32 %132, i32 0)
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %135 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %134, i32 %135, i32 %136)
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %170

141:                                              ; preds = %123
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %144 = call i32 @rt2x00_get_field16(i32 %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, -10
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %5, align 4
  %149 = icmp sgt i32 %148, 10
  br i1 %149, label %150, label %153

150:                                              ; preds = %147, %141
  %151 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %152 = call i32 @rt2x00_set_field16(i32* %3, i32 %151, i32 0)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %156 = call i32 @rt2x00_get_field16(i32 %154, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp slt i32 %157, -10
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* %5, align 4
  %161 = icmp sgt i32 %160, 10
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %153
  %163 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %164 = call i32 @rt2x00_set_field16(i32* %3, i32 %163, i32 0)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %167 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %165, %129
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %172 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %173 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %171, i32 %172, i32* %3)
  %174 = load i32, i32* %3, align 4
  %175 = icmp eq i32 %174, 65535
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %178 = call i32 @rt2x00_set_field16(i32* %3, i32 %177, i32 0)
  %179 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %180 = call i32 @rt2x00_set_field16(i32* %3, i32 %179, i32 0)
  %181 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %182 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %181, i32 %182, i32 %183)
  %185 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %217

188:                                              ; preds = %170
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %191 = call i32 @rt2x00_get_field16(i32 %189, i32 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp slt i32 %192, -10
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %5, align 4
  %196 = icmp sgt i32 %195, 10
  br i1 %196, label %197, label %200

197:                                              ; preds = %194, %188
  %198 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %199 = call i32 @rt2x00_set_field16(i32* %3, i32 %198, i32 0)
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %203 = call i32 @rt2x00_get_field16(i32 %201, i32 %202)
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %204, -10
  br i1 %205, label %209, label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %5, align 4
  %208 = icmp sgt i32 %207, 10
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %200
  %210 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %211 = call i32 @rt2x00_set_field16(i32* %3, i32 %210, i32 0)
  br label %212

212:                                              ; preds = %209, %206
  %213 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %214 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %176
  ret i32 0
}

declare dso_local i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
