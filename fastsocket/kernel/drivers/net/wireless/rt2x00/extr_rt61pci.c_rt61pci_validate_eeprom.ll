; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt61pci.c_rt61pci_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.eeprom_93cx6 = type { i64, i64, i64, i64, i32, i32, i32, %struct.rt2x00_dev* }

@E2PROM_CSR = common dso_local global i32 0, align 4
@rt61pci_eepromregister_read = common dso_local global i32 0, align 4
@rt61pci_eepromregister_write = common dso_local global i32 0, align 4
@E2PROM_CSR_TYPE_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C66 = common dso_local global i32 0, align 4
@EEPROM_BASE = common dso_local global i32 0, align 4
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
@RF5225 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_ENABLE_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_NIC_TX_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_NIC_RX_FIXED = common dso_local global i32 0, align 4
@EEPROM_NIC_TX_FIXED = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_NIC_CARDBUS_ACCEL = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_LED = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.eeprom_93cx6, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = load i32, i32* @E2PROM_CSR, align 4
  %10 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %8, i32 %9, i32* %4)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 7
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %12, align 8
  %13 = load i32, i32* @rt61pci_eepromregister_read, align 4
  %14 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 6
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @rt61pci_eepromregister_write, align 4
  %16 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @E2PROM_CSR_TYPE_93C46, align 4
  %19 = call i64 @rt2x00_get_field32(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @PCI_EEPROM_WIDTH_93C66, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @EEPROM_BASE, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EEPROM_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %3, i32 %32, i32 %35, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %43 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %41, i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @is_valid_ether_addr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %25
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @eth_random_addr(i32* %48)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %25
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %56 = load i32, i32* @EEPROM_ANTENNA, align 4
  %57 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %55, i32 %56, i32* %5)
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 65535
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %62 = call i32 @rt2x00_set_field16(i32* %5, i32 %61, i32 2)
  %63 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %64 = load i32, i32* @ANTENNA_B, align 4
  %65 = call i32 @rt2x00_set_field16(i32* %5, i32 %63, i32 %64)
  %66 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %67 = load i32, i32* @ANTENNA_B, align 4
  %68 = call i32 @rt2x00_set_field16(i32* %5, i32 %66, i32 %67)
  %69 = load i32, i32* @EEPROM_ANTENNA_FRAME_TYPE, align 4
  %70 = call i32 @rt2x00_set_field16(i32* %5, i32 %69, i32 0)
  %71 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %72 = call i32 @rt2x00_set_field16(i32* %5, i32 %71, i32 0)
  %73 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %74 = call i32 @rt2x00_set_field16(i32* %5, i32 %73, i32 0)
  %75 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %76 = load i32, i32* @RF5225, align 4
  %77 = call i32 @rt2x00_set_field16(i32* %5, i32 %75, i32 %76)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = load i32, i32* @EEPROM_ANTENNA, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %78, i32 %79, i32 %80)
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %60, %54
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %87 = load i32, i32* @EEPROM_NIC, align 4
  %88 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %86, i32 %87, i32* %5)
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 65535
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load i32, i32* @EEPROM_NIC_ENABLE_DIVERSITY, align 4
  %93 = call i32 @rt2x00_set_field16(i32* %5, i32 %92, i32 0)
  %94 = load i32, i32* @EEPROM_NIC_TX_DIVERSITY, align 4
  %95 = call i32 @rt2x00_set_field16(i32* %5, i32 %94, i32 0)
  %96 = load i32, i32* @EEPROM_NIC_RX_FIXED, align 4
  %97 = call i32 @rt2x00_set_field16(i32* %5, i32 %96, i32 0)
  %98 = load i32, i32* @EEPROM_NIC_TX_FIXED, align 4
  %99 = call i32 @rt2x00_set_field16(i32* %5, i32 %98, i32 0)
  %100 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA_BG, align 4
  %101 = call i32 @rt2x00_set_field16(i32* %5, i32 %100, i32 0)
  %102 = load i32, i32* @EEPROM_NIC_CARDBUS_ACCEL, align 4
  %103 = call i32 @rt2x00_set_field16(i32* %5, i32 %102, i32 0)
  %104 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA_A, align 4
  %105 = call i32 @rt2x00_set_field16(i32* %5, i32 %104, i32 0)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = load i32, i32* @EEPROM_NIC, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %106, i32 %107, i32 %108)
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %91, %85
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %115 = load i32, i32* @EEPROM_LED, align 4
  %116 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %114, i32 %115, i32* %5)
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 65535
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load i32, i32* @EEPROM_LED_LED_MODE, align 4
  %121 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %122 = call i32 @rt2x00_set_field16(i32* %5, i32 %120, i32 %121)
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = load i32, i32* @EEPROM_LED, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %123, i32 %124, i32 %125)
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %119, %113
  %131 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %132 = load i32, i32* @EEPROM_FREQ, align 4
  %133 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %131, i32 %132, i32* %5)
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 %134, 65535
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %138 = call i32 @rt2x00_set_field16(i32* %5, i32 %137, i32 0)
  %139 = load i32, i32* @EEPROM_FREQ_SEQ, align 4
  %140 = call i32 @rt2x00_set_field16(i32* %5, i32 %139, i32 0)
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = load i32, i32* @EEPROM_FREQ, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %141, i32 %142, i32 %143)
  %145 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %136, %130
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %150 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %151 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %149, i32 %150, i32* %5)
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %152, 65535
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %156 = call i32 @rt2x00_set_field16(i32* %5, i32 %155, i32 0)
  %157 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %158 = call i32 @rt2x00_set_field16(i32* %5, i32 %157, i32 0)
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %160 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %159, i32 %160, i32 %161)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %195

166:                                              ; preds = %148
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %169 = call i32 @rt2x00_get_field16(i32 %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, -10
  br i1 %171, label %175, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %7, align 4
  %174 = icmp sgt i32 %173, 10
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %166
  %176 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %177 = call i32 @rt2x00_set_field16(i32* %5, i32 %176, i32 0)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %181 = call i32 @rt2x00_get_field16(i32 %179, i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %182, -10
  br i1 %183, label %187, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %7, align 4
  %186 = icmp sgt i32 %185, 10
  br i1 %186, label %187, label %190

187:                                              ; preds = %184, %178
  %188 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %189 = call i32 @rt2x00_set_field16(i32* %5, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %192 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %154
  %196 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %197 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %198 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %196, i32 %197, i32* %5)
  %199 = load i32, i32* %5, align 4
  %200 = icmp eq i32 %199, 65535
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %203 = call i32 @rt2x00_set_field16(i32* %5, i32 %202, i32 0)
  %204 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %205 = call i32 @rt2x00_set_field16(i32* %5, i32 %204, i32 0)
  %206 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %207 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %206, i32 %207, i32 %208)
  %210 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  br label %242

213:                                              ; preds = %195
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %216 = call i32 @rt2x00_get_field16(i32 %214, i32 %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp slt i32 %217, -10
  br i1 %218, label %222, label %219

219:                                              ; preds = %213
  %220 = load i32, i32* %7, align 4
  %221 = icmp sgt i32 %220, 10
  br i1 %221, label %222, label %225

222:                                              ; preds = %219, %213
  %223 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %224 = call i32 @rt2x00_set_field16(i32* %5, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %228 = call i32 @rt2x00_get_field16(i32 %226, i32 %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp slt i32 %229, -10
  br i1 %230, label %234, label %231

231:                                              ; preds = %225
  %232 = load i32, i32* %7, align 4
  %233 = icmp sgt i32 %232, 10
  br i1 %233, label %234, label %237

234:                                              ; preds = %231, %225
  %235 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %236 = call i32 @rt2x00_set_field16(i32* %5, i32 %235, i32 0)
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %239 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %237, %201
  ret i32 0
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6*, i32, i32, i32) #1

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
