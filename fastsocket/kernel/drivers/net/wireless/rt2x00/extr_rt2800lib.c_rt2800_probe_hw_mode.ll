; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_7__, %struct.TYPE_11__*, i32, %struct.hw_mode_spec }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, %struct.TYPE_10__, i8*, i32 }
%struct.channel_info = type { i8, i8 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_HT_CCK_RATES = common dso_local global i32 0, align 4
@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@RF2820 = common dso_local global i32 0, align 4
@RF2720 = common dso_local global i32 0, align 4
@rf_vals = common dso_local global i8* null, align 8
@RF2850 = common dso_local global i32 0, align 4
@RF2750 = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@RF3322 = common dso_local global i32 0, align 4
@rf_vals_3x = common dso_local global i8* null, align 8
@RF5592 = common dso_local global i32 0, align 4
@MAC_DEBUG_INDEX = common dso_local global i32 0, align 4
@MAC_DEBUG_INDEX_XTAL = common dso_local global i32 0, align 4
@rf_vals_5592_xtal40 = common dso_local global i8* null, align 8
@rf_vals_5592_xtal20 = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BG1 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BG2 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_A1 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_A2 = common dso_local global i32 0, align 4
@CAPABILITY_VCO_RECALIBRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.hw_mode_spec*, align 8
  %5 = alloca %struct.channel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 4
  store %struct.hw_mode_spec* %12, %struct.hw_mode_spec** %4, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = call i64 @rt2x00_is_pci(%struct.rt2x00_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = call i64 @rt2x00_is_soc(%struct.rt2x00_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %22
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %20, %16
  %32 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %33 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IEEE80211_HW_SUPPORTS_HT_CCK_RATES, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = call i32 @rt2x00_is_usb(%struct.rt2x00_dev* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %31
  %51 = load i32, i32* @IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING, align 4
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %50, %31
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_11__* %61, i32 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %71 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %69, i32 %70)
  %72 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_11__* %68, i8* %71)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store i32 7, i32* %80, align 8
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 2
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %87 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %85, i32 %86, i32* %9)
  %88 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %89 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %90 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %92 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %95 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = load i32, i32* @RF2820, align 4
  %98 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %58
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %102 = load i32, i32* @RF2720, align 4
  %103 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100, %58
  %106 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %107 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %106, i32 0, i32 1
  store i32 14, i32* %107, align 4
  %108 = load i8*, i8** @rf_vals, align 8
  %109 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %110 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  br label %249

111:                                              ; preds = %100
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = load i32, i32* @RF2850, align 4
  %114 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = load i32, i32* @RF2750, align 4
  %119 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116, %111
  %122 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %123 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %124 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i8*, i8** @rf_vals, align 8
  %128 = call i8* @ARRAY_SIZE(i8* %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %131 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i8*, i8** @rf_vals, align 8
  %133 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %134 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %248

135:                                              ; preds = %116
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %137 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %136, i32 138)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %184, label %139

139:                                              ; preds = %135
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %141 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %140, i32 139)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %184, label %143

143:                                              ; preds = %139
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %145 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %144, i32 137)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %184, label %147

147:                                              ; preds = %143
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %149 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %148, i32 136)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %184, label %151

151:                                              ; preds = %147
  %152 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %153 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %152, i32 134)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %184, label %155

155:                                              ; preds = %151
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %157 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %156, i32 133)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %184, label %159

159:                                              ; preds = %155
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %161 = load i32, i32* @RF3322, align 4
  %162 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %184, label %164

164:                                              ; preds = %159
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %166 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %165, i32 132)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %164
  %169 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %170 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %169, i32 131)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %174 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %173, i32 130)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %178 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %177, i32 129)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %182 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %181, i32 128)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %180, %176, %172, %168, %164, %159, %155, %151, %147, %143, %139, %135
  %185 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %186 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %185, i32 0, i32 1
  store i32 14, i32* %186, align 4
  %187 = load i8*, i8** @rf_vals_3x, align 8
  %188 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %189 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  br label %247

190:                                              ; preds = %180
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %192 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %191, i32 135)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %196 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %197 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i8*, i8** @rf_vals_3x, align 8
  %201 = call i8* @ARRAY_SIZE(i8* %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %204 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i8*, i8** @rf_vals_3x, align 8
  %206 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %207 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  br label %246

208:                                              ; preds = %190
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %210 = load i32, i32* @RF5592, align 4
  %211 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %208
  %214 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %215 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %216 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %220 = load i32, i32* @MAC_DEBUG_INDEX, align 4
  %221 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %219, i32 %220, i32* %10)
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @MAC_DEBUG_INDEX_XTAL, align 4
  %224 = call i64 @rt2x00_get_field32(i32 %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %213
  %227 = load i8*, i8** @rf_vals_5592_xtal40, align 8
  %228 = call i8* @ARRAY_SIZE(i8* %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %231 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load i8*, i8** @rf_vals_5592_xtal40, align 8
  %233 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %234 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %233, i32 0, i32 4
  store i8* %232, i8** %234, align 8
  br label %244

235:                                              ; preds = %213
  %236 = load i8*, i8** @rf_vals_5592_xtal20, align 8
  %237 = call i8* @ARRAY_SIZE(i8* %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %240 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load i8*, i8** @rf_vals_5592_xtal20, align 8
  %242 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %243 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %242, i32 0, i32 4
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %235, %226
  br label %245

245:                                              ; preds = %244, %208
  br label %246

246:                                              ; preds = %245, %194
  br label %247

247:                                              ; preds = %246, %184
  br label %248

248:                                              ; preds = %247, %121
  br label %249

249:                                              ; preds = %248, %105
  %250 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %251 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %250, i32 0, i32 4
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i64 @WARN_ON_ONCE(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %249
  %259 = load i32, i32* @ENODEV, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %2, align 4
  br label %460

261:                                              ; preds = %249
  %262 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %263 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %262, i32 139)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %267 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  br label %273

269:                                              ; preds = %261
  %270 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %271 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  br label %273

273:                                              ; preds = %269, %265
  %274 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %275 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %282 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  store i32 %280, i32* %283, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %286 = call i32 @rt2x00_get_field16(i32 %284, i32 %285)
  %287 = icmp sge i32 %286, 2
  br i1 %287, label %288, label %295

288:                                              ; preds = %273
  %289 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %290 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %291 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %289
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %288, %273
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %298 = call i32 @rt2x00_get_field16(i32 %296, i32 %297)
  %299 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %300 = shl i32 %298, %299
  %301 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %302 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %300
  store i32 %305, i32* %303, align 4
  %306 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %307 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 2
  store i32 3, i32* %308, align 8
  %309 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %310 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 3
  store i32 4, i32* %311, align 4
  %312 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %313 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %317 = call i32 @rt2x00_get_field16(i32 %315, i32 %316)
  %318 = sub nsw i32 %317, 1
  %319 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %320 = shl i32 %318, %319
  %321 = or i32 %314, %320
  %322 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %323 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  store i32 %321, i32* %325, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %328 = call i32 @rt2x00_get_field16(i32 %326, i32 %327)
  switch i32 %328, label %356 [
    i32 3, label %329
    i32 2, label %336
    i32 1, label %343
  ]

329:                                              ; preds = %295
  %330 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %331 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  store i32 255, i32* %335, align 4
  br label %336

336:                                              ; preds = %295, %329
  %337 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %338 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1
  store i32 255, i32* %342, align 4
  br label %343

343:                                              ; preds = %295, %336
  %344 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %345 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  store i32 255, i32* %349, align 4
  %350 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %351 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 4
  store i32 1, i32* %355, align 4
  br label %356

356:                                              ; preds = %295, %343
  %357 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %358 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @GFP_KERNEL, align 4
  %361 = call %struct.channel_info* @kcalloc(i32 %359, i32 2, i32 %360)
  store %struct.channel_info* %361, %struct.channel_info** %5, align 8
  %362 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %363 = icmp ne %struct.channel_info* %362, null
  br i1 %363, label %367, label %364

364:                                              ; preds = %356
  %365 = load i32, i32* @ENOMEM, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %2, align 4
  br label %460

367:                                              ; preds = %356
  %368 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %369 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %370 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %369, i32 0, i32 2
  store %struct.channel_info* %368, %struct.channel_info** %370, align 8
  %371 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %372 = load i32, i32* @EEPROM_TXPOWER_BG1, align 4
  %373 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %371, i32 %372)
  store i8* %373, i8** %6, align 8
  %374 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %375 = load i32, i32* @EEPROM_TXPOWER_BG2, align 4
  %376 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %374, i32 %375)
  store i8* %376, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %377

377:                                              ; preds = %401, %367
  %378 = load i32, i32* %8, align 4
  %379 = icmp ult i32 %378, 14
  br i1 %379, label %380, label %404

380:                                              ; preds = %377
  %381 = load i8*, i8** %6, align 8
  %382 = load i32, i32* %8, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %381, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %387 = load i32, i32* %8, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %386, i64 %388
  %390 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %389, i32 0, i32 0
  store i8 %385, i8* %390, align 1
  %391 = load i8*, i8** %7, align 8
  %392 = load i32, i32* %8, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %397 = load i32, i32* %8, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %396, i64 %398
  %400 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %399, i32 0, i32 1
  store i8 %395, i8* %400, align 1
  br label %401

401:                                              ; preds = %380
  %402 = load i32, i32* %8, align 4
  %403 = add i32 %402, 1
  store i32 %403, i32* %8, align 4
  br label %377

404:                                              ; preds = %377
  %405 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %406 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = icmp sgt i32 %407, 14
  br i1 %408, label %409, label %449

409:                                              ; preds = %404
  %410 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %411 = load i32, i32* @EEPROM_TXPOWER_A1, align 4
  %412 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %410, i32 %411)
  store i8* %412, i8** %6, align 8
  %413 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %414 = load i32, i32* @EEPROM_TXPOWER_A2, align 4
  %415 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %413, i32 %414)
  store i8* %415, i8** %7, align 8
  store i32 14, i32* %8, align 4
  br label %416

416:                                              ; preds = %445, %409
  %417 = load i32, i32* %8, align 4
  %418 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %419 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp ult i32 %417, %420
  br i1 %421, label %422, label %448

422:                                              ; preds = %416
  %423 = load i8*, i8** %6, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sub i32 %424, 14
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds i8, i8* %423, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %430 = load i32, i32* %8, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %429, i64 %431
  %433 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %432, i32 0, i32 0
  store i8 %428, i8* %433, align 1
  %434 = load i8*, i8** %7, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sub i32 %435, 14
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %434, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %441 = load i32, i32* %8, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %440, i64 %442
  %444 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %443, i32 0, i32 1
  store i8 %439, i8* %444, align 1
  br label %445

445:                                              ; preds = %422
  %446 = load i32, i32* %8, align 4
  %447 = add i32 %446, 1
  store i32 %447, i32* %8, align 4
  br label %416

448:                                              ; preds = %416
  br label %449

449:                                              ; preds = %448, %404
  %450 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %451 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  switch i32 %453, label %459 [
    i32 139, label %454
    i32 138, label %454
    i32 137, label %454
    i32 136, label %454
    i32 133, label %454
    i32 135, label %454
    i32 134, label %454
    i32 132, label %454
    i32 131, label %454
    i32 130, label %454
    i32 129, label %454
    i32 128, label %454
  ]

454:                                              ; preds = %449, %449, %449, %449, %449, %449, %449, %449, %449, %449, %449, %449
  %455 = load i32, i32* @CAPABILITY_VCO_RECALIBRATION, align 4
  %456 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %457 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %456, i32 0, i32 0
  %458 = call i32 @__set_bit(i32 %455, i32* %457)
  br label %459

459:                                              ; preds = %449, %454
  store i32 0, i32* %2, align 4
  br label %460

460:                                              ; preds = %459, %364, %258
  %461 = load i32, i32* %2, align 4
  ret i32 %461
}

declare dso_local i64 @rt2x00_is_pci(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_is_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
