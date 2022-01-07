; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_init_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500usb.c_rt2500usb_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.rt2x00_dev*, i32)* }

@USB_DEVICE_MODE = common dso_local global i32 0, align 4
@USB_MODE_TEST = common dso_local global i32 0, align 4
@REGISTER_TIMEOUT = common dso_local global i32 0, align 4
@USB_SINGLE_WRITE = common dso_local global i32 0, align 4
@TXRX_CSR2 = common dso_local global i32 0, align 4
@TXRX_CSR2_DISABLE_RX = common dso_local global i32 0, align 4
@MAC_CSR13 = common dso_local global i32 0, align 4
@MAC_CSR14 = common dso_local global i32 0, align 4
@MAC_CSR1 = common dso_local global i32 0, align 4
@MAC_CSR1_SOFT_RESET = common dso_local global i32 0, align 4
@MAC_CSR1_BBP_RESET = common dso_local global i32 0, align 4
@MAC_CSR1_HOST_READY = common dso_local global i32 0, align 4
@TXRX_CSR5 = common dso_local global i32 0, align 4
@TXRX_CSR5_BBP_ID0 = common dso_local global i32 0, align 4
@TXRX_CSR5_BBP_ID0_VALID = common dso_local global i32 0, align 4
@TXRX_CSR5_BBP_ID1 = common dso_local global i32 0, align 4
@TXRX_CSR5_BBP_ID1_VALID = common dso_local global i32 0, align 4
@TXRX_CSR6 = common dso_local global i32 0, align 4
@TXRX_CSR6_BBP_ID0 = common dso_local global i32 0, align 4
@TXRX_CSR6_BBP_ID0_VALID = common dso_local global i32 0, align 4
@TXRX_CSR6_BBP_ID1 = common dso_local global i32 0, align 4
@TXRX_CSR6_BBP_ID1_VALID = common dso_local global i32 0, align 4
@TXRX_CSR7 = common dso_local global i32 0, align 4
@TXRX_CSR7_BBP_ID0 = common dso_local global i32 0, align 4
@TXRX_CSR7_BBP_ID0_VALID = common dso_local global i32 0, align 4
@TXRX_CSR7_BBP_ID1 = common dso_local global i32 0, align 4
@TXRX_CSR7_BBP_ID1_VALID = common dso_local global i32 0, align 4
@TXRX_CSR8 = common dso_local global i32 0, align 4
@TXRX_CSR8_BBP_ID0 = common dso_local global i32 0, align 4
@TXRX_CSR8_BBP_ID0_VALID = common dso_local global i32 0, align 4
@TXRX_CSR8_BBP_ID1 = common dso_local global i32 0, align 4
@TXRX_CSR8_BBP_ID1_VALID = common dso_local global i32 0, align 4
@TXRX_CSR19 = common dso_local global i32 0, align 4
@TXRX_CSR19_TSF_COUNT = common dso_local global i32 0, align 4
@TXRX_CSR19_TSF_SYNC = common dso_local global i32 0, align 4
@TXRX_CSR19_TBCN = common dso_local global i32 0, align 4
@TXRX_CSR19_BEACON_GEN = common dso_local global i32 0, align 4
@TXRX_CSR21 = common dso_local global i32 0, align 4
@MAC_CSR9 = common dso_local global i32 0, align 4
@STATE_AWAKE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RT2570_VERSION_C = common dso_local global i64 0, align 8
@PHY_CSR2 = common dso_local global i32 0, align 4
@PHY_CSR2_LNA = common dso_local global i32 0, align 4
@PHY_CSR2_LNA_MODE = common dso_local global i32 0, align 4
@MAC_CSR11 = common dso_local global i32 0, align 4
@MAC_CSR22 = common dso_local global i32 0, align 4
@MAC_CSR15 = common dso_local global i32 0, align 4
@MAC_CSR16 = common dso_local global i32 0, align 4
@MAC_CSR8 = common dso_local global i32 0, align 4
@MAC_CSR8_MAX_FRAME_UNIT = common dso_local global i32 0, align 4
@TXRX_CSR0 = common dso_local global i32 0, align 4
@TXRX_CSR0_ALGORITHM = common dso_local global i32 0, align 4
@CIPHER_NONE = common dso_local global i32 0, align 4
@TXRX_CSR0_IV_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@TXRX_CSR0_KEY_ID = common dso_local global i32 0, align 4
@MAC_CSR18 = common dso_local global i32 0, align 4
@MAC_CSR18_DELAY_AFTER_BEACON = common dso_local global i32 0, align 4
@PHY_CSR4 = common dso_local global i32 0, align 4
@PHY_CSR4_LOW_RF_LE = common dso_local global i32 0, align 4
@TXRX_CSR1 = common dso_local global i32 0, align 4
@TXRX_CSR1_AUTO_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500usb_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_init_registers(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = load i32, i32* @USB_DEVICE_MODE, align 4
  %7 = load i32, i32* @USB_MODE_TEST, align 4
  %8 = load i32, i32* @REGISTER_TIMEOUT, align 4
  %9 = call i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev* %5, i32 %6, i32 1, i32 %7, i32 %8)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = load i32, i32* @USB_SINGLE_WRITE, align 4
  %12 = load i32, i32* @REGISTER_TIMEOUT, align 4
  %13 = call i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev* %10, i32 %11, i32 776, i32 240, i32 %12)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = load i32, i32* @TXRX_CSR2, align 4
  %16 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %14, i32 %15, i32* %4)
  %17 = load i32, i32* @TXRX_CSR2_DISABLE_RX, align 4
  %18 = call i32 @rt2x00_set_field16(i32* %4, i32 %17, i32 1)
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = load i32, i32* @TXRX_CSR2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = load i32, i32* @MAC_CSR13, align 4
  %25 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %23, i32 %24, i32 4369)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @MAC_CSR14, align 4
  %28 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %26, i32 %27, i32 7697)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = load i32, i32* @MAC_CSR1, align 4
  %31 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %29, i32 %30, i32* %4)
  %32 = load i32, i32* @MAC_CSR1_SOFT_RESET, align 4
  %33 = call i32 @rt2x00_set_field16(i32* %4, i32 %32, i32 1)
  %34 = load i32, i32* @MAC_CSR1_BBP_RESET, align 4
  %35 = call i32 @rt2x00_set_field16(i32* %4, i32 %34, i32 1)
  %36 = load i32, i32* @MAC_CSR1_HOST_READY, align 4
  %37 = call i32 @rt2x00_set_field16(i32* %4, i32 %36, i32 0)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = load i32, i32* @MAC_CSR1, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = load i32, i32* @MAC_CSR1, align 4
  %44 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %42, i32 %43, i32* %4)
  %45 = load i32, i32* @MAC_CSR1_SOFT_RESET, align 4
  %46 = call i32 @rt2x00_set_field16(i32* %4, i32 %45, i32 0)
  %47 = load i32, i32* @MAC_CSR1_BBP_RESET, align 4
  %48 = call i32 @rt2x00_set_field16(i32* %4, i32 %47, i32 0)
  %49 = load i32, i32* @MAC_CSR1_HOST_READY, align 4
  %50 = call i32 @rt2x00_set_field16(i32* %4, i32 %49, i32 0)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = load i32, i32* @MAC_CSR1, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = load i32, i32* @TXRX_CSR5, align 4
  %57 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %55, i32 %56, i32* %4)
  %58 = load i32, i32* @TXRX_CSR5_BBP_ID0, align 4
  %59 = call i32 @rt2x00_set_field16(i32* %4, i32 %58, i32 13)
  %60 = load i32, i32* @TXRX_CSR5_BBP_ID0_VALID, align 4
  %61 = call i32 @rt2x00_set_field16(i32* %4, i32 %60, i32 1)
  %62 = load i32, i32* @TXRX_CSR5_BBP_ID1, align 4
  %63 = call i32 @rt2x00_set_field16(i32* %4, i32 %62, i32 12)
  %64 = load i32, i32* @TXRX_CSR5_BBP_ID1_VALID, align 4
  %65 = call i32 @rt2x00_set_field16(i32* %4, i32 %64, i32 1)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = load i32, i32* @TXRX_CSR5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %66, i32 %67, i32 %68)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = load i32, i32* @TXRX_CSR6, align 4
  %72 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %70, i32 %71, i32* %4)
  %73 = load i32, i32* @TXRX_CSR6_BBP_ID0, align 4
  %74 = call i32 @rt2x00_set_field16(i32* %4, i32 %73, i32 10)
  %75 = load i32, i32* @TXRX_CSR6_BBP_ID0_VALID, align 4
  %76 = call i32 @rt2x00_set_field16(i32* %4, i32 %75, i32 1)
  %77 = load i32, i32* @TXRX_CSR6_BBP_ID1, align 4
  %78 = call i32 @rt2x00_set_field16(i32* %4, i32 %77, i32 11)
  %79 = load i32, i32* @TXRX_CSR6_BBP_ID1_VALID, align 4
  %80 = call i32 @rt2x00_set_field16(i32* %4, i32 %79, i32 1)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %82 = load i32, i32* @TXRX_CSR6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %81, i32 %82, i32 %83)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = load i32, i32* @TXRX_CSR7, align 4
  %87 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %85, i32 %86, i32* %4)
  %88 = load i32, i32* @TXRX_CSR7_BBP_ID0, align 4
  %89 = call i32 @rt2x00_set_field16(i32* %4, i32 %88, i32 7)
  %90 = load i32, i32* @TXRX_CSR7_BBP_ID0_VALID, align 4
  %91 = call i32 @rt2x00_set_field16(i32* %4, i32 %90, i32 1)
  %92 = load i32, i32* @TXRX_CSR7_BBP_ID1, align 4
  %93 = call i32 @rt2x00_set_field16(i32* %4, i32 %92, i32 6)
  %94 = load i32, i32* @TXRX_CSR7_BBP_ID1_VALID, align 4
  %95 = call i32 @rt2x00_set_field16(i32* %4, i32 %94, i32 1)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = load i32, i32* @TXRX_CSR7, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %96, i32 %97, i32 %98)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %101 = load i32, i32* @TXRX_CSR8, align 4
  %102 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %100, i32 %101, i32* %4)
  %103 = load i32, i32* @TXRX_CSR8_BBP_ID0, align 4
  %104 = call i32 @rt2x00_set_field16(i32* %4, i32 %103, i32 5)
  %105 = load i32, i32* @TXRX_CSR8_BBP_ID0_VALID, align 4
  %106 = call i32 @rt2x00_set_field16(i32* %4, i32 %105, i32 1)
  %107 = load i32, i32* @TXRX_CSR8_BBP_ID1, align 4
  %108 = call i32 @rt2x00_set_field16(i32* %4, i32 %107, i32 0)
  %109 = load i32, i32* @TXRX_CSR8_BBP_ID1_VALID, align 4
  %110 = call i32 @rt2x00_set_field16(i32* %4, i32 %109, i32 0)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %112 = load i32, i32* @TXRX_CSR8, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %111, i32 %112, i32 %113)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %116 = load i32, i32* @TXRX_CSR19, align 4
  %117 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %115, i32 %116, i32* %4)
  %118 = load i32, i32* @TXRX_CSR19_TSF_COUNT, align 4
  %119 = call i32 @rt2x00_set_field16(i32* %4, i32 %118, i32 0)
  %120 = load i32, i32* @TXRX_CSR19_TSF_SYNC, align 4
  %121 = call i32 @rt2x00_set_field16(i32* %4, i32 %120, i32 0)
  %122 = load i32, i32* @TXRX_CSR19_TBCN, align 4
  %123 = call i32 @rt2x00_set_field16(i32* %4, i32 %122, i32 0)
  %124 = load i32, i32* @TXRX_CSR19_BEACON_GEN, align 4
  %125 = call i32 @rt2x00_set_field16(i32* %4, i32 %124, i32 0)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %127 = load i32, i32* @TXRX_CSR19, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %131 = load i32, i32* @TXRX_CSR21, align 4
  %132 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %130, i32 %131, i32 59279)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %134 = load i32, i32* @MAC_CSR9, align 4
  %135 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %133, i32 %134, i32 65309)
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %137 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64 (%struct.rt2x00_dev*, i32)*, i64 (%struct.rt2x00_dev*, i32)** %141, align 8
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %144 = load i32, i32* @STATE_AWAKE, align 4
  %145 = call i64 %142(%struct.rt2x00_dev* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %1
  %148 = load i32, i32* @EBUSY, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %252

150:                                              ; preds = %1
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %152 = load i32, i32* @MAC_CSR1, align 4
  %153 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %151, i32 %152, i32* %4)
  %154 = load i32, i32* @MAC_CSR1_SOFT_RESET, align 4
  %155 = call i32 @rt2x00_set_field16(i32* %4, i32 %154, i32 0)
  %156 = load i32, i32* @MAC_CSR1_BBP_RESET, align 4
  %157 = call i32 @rt2x00_set_field16(i32* %4, i32 %156, i32 0)
  %158 = load i32, i32* @MAC_CSR1_HOST_READY, align 4
  %159 = call i32 @rt2x00_set_field16(i32* %4, i32 %158, i32 1)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %161 = load i32, i32* @MAC_CSR1, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %160, i32 %161, i32 %162)
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %165 = call i64 @rt2x00_rev(%struct.rt2x00_dev* %164)
  %166 = load i64, i64* @RT2570_VERSION_C, align 8
  %167 = icmp sge i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %150
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %170 = load i32, i32* @PHY_CSR2, align 4
  %171 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %169, i32 %170, i32* %4)
  %172 = load i32, i32* @PHY_CSR2_LNA, align 4
  %173 = call i32 @rt2x00_set_field16(i32* %4, i32 %172, i32 0)
  br label %179

174:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  %175 = load i32, i32* @PHY_CSR2_LNA, align 4
  %176 = call i32 @rt2x00_set_field16(i32* %4, i32 %175, i32 1)
  %177 = load i32, i32* @PHY_CSR2_LNA_MODE, align 4
  %178 = call i32 @rt2x00_set_field16(i32* %4, i32 %177, i32 3)
  br label %179

179:                                              ; preds = %174, %168
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %181 = load i32, i32* @PHY_CSR2, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %180, i32 %181, i32 %182)
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %185 = load i32, i32* @MAC_CSR11, align 4
  %186 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %184, i32 %185, i32 2)
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %188 = load i32, i32* @MAC_CSR22, align 4
  %189 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %187, i32 %188, i32 83)
  %190 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %191 = load i32, i32* @MAC_CSR15, align 4
  %192 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %190, i32 %191, i32 494)
  %193 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %194 = load i32, i32* @MAC_CSR16, align 4
  %195 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %193, i32 %194, i32 0)
  %196 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %197 = load i32, i32* @MAC_CSR8, align 4
  %198 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %196, i32 %197, i32* %4)
  %199 = load i32, i32* @MAC_CSR8_MAX_FRAME_UNIT, align 4
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %201 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @rt2x00_set_field16(i32* %4, i32 %199, i32 %204)
  %206 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %207 = load i32, i32* @MAC_CSR8, align 4
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %206, i32 %207, i32 %208)
  %210 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %211 = load i32, i32* @TXRX_CSR0, align 4
  %212 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %210, i32 %211, i32* %4)
  %213 = load i32, i32* @TXRX_CSR0_ALGORITHM, align 4
  %214 = load i32, i32* @CIPHER_NONE, align 4
  %215 = call i32 @rt2x00_set_field16(i32* %4, i32 %213, i32 %214)
  %216 = load i32, i32* @TXRX_CSR0_IV_OFFSET, align 4
  %217 = load i32, i32* @IEEE80211_HEADER, align 4
  %218 = call i32 @rt2x00_set_field16(i32* %4, i32 %216, i32 %217)
  %219 = load i32, i32* @TXRX_CSR0_KEY_ID, align 4
  %220 = call i32 @rt2x00_set_field16(i32* %4, i32 %219, i32 0)
  %221 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %222 = load i32, i32* @TXRX_CSR0, align 4
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %221, i32 %222, i32 %223)
  %225 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %226 = load i32, i32* @MAC_CSR18, align 4
  %227 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %225, i32 %226, i32* %4)
  %228 = load i32, i32* @MAC_CSR18_DELAY_AFTER_BEACON, align 4
  %229 = call i32 @rt2x00_set_field16(i32* %4, i32 %228, i32 90)
  %230 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %231 = load i32, i32* @MAC_CSR18, align 4
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %230, i32 %231, i32 %232)
  %234 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %235 = load i32, i32* @PHY_CSR4, align 4
  %236 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %234, i32 %235, i32* %4)
  %237 = load i32, i32* @PHY_CSR4_LOW_RF_LE, align 4
  %238 = call i32 @rt2x00_set_field16(i32* %4, i32 %237, i32 1)
  %239 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %240 = load i32, i32* @PHY_CSR4, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %239, i32 %240, i32 %241)
  %243 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %244 = load i32, i32* @TXRX_CSR1, align 4
  %245 = call i32 @rt2500usb_register_read(%struct.rt2x00_dev* %243, i32 %244, i32* %4)
  %246 = load i32, i32* @TXRX_CSR1_AUTO_SEQUENCE, align 4
  %247 = call i32 @rt2x00_set_field16(i32* %4, i32 %246, i32 1)
  %248 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %249 = load i32, i32* @TXRX_CSR1, align 4
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @rt2500usb_register_write(%struct.rt2x00_dev* %248, i32 %249, i32 %250)
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %179, %147
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2500usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2500usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rev(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
