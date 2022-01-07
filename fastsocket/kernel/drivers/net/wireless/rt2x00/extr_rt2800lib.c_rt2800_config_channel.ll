; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32 }
%struct.channel_info = type { i8*, i8* }

@RFCSR30_TX_H20M = common dso_local global i32 0, align 4
@RFCSR30_RX_H20M = common dso_local global i32 0, align 4
@RFCSR3_VCOCAL_EN = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@CAPABILITY_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@TX_BAND_CFG = common dso_local global i32 0, align 4
@TX_BAND_CFG_HT40_MINUS = common dso_local global i32 0, align 4
@TX_BAND_CFG_A = common dso_local global i32 0, align 4
@TX_BAND_CFG_BG = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_A1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_G1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_A0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_G0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_RFTR_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_TRSW_EN = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@BBP4_BANDWIDTH = common dso_local global i32 0, align 4
@BBP3_HT40_MINUS = common dso_local global i32 0, align 4
@RT2860 = common dso_local global i32 0, align 4
@REV_RT2860C = common dso_local global i32 0, align 4
@CH_IDLE_STA = common dso_local global i32 0, align 4
@CH_BUSY_STA = common dso_local global i32 0, align 4
@CH_BUSY_STA_SEC = common dso_local global i32 0, align 4
@BBP49_UPDATE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %13 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %14 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 14
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %19 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @TXPOWER_G_TO_DEV(i8* %20)
  %22 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %23 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %25 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @TXPOWER_G_TO_DEV(i8* %26)
  %28 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %29 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %43

30:                                               ; preds = %4
  %31 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %32 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @TXPOWER_A_TO_DEV(i8* %33)
  %35 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %36 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %38 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @TXPOWER_A_TO_DEV(i8* %39)
  %41 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %42 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %30, %17
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %45 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %84 [
    i32 141, label %48
    i32 140, label %48
    i32 139, label %48
    i32 138, label %48
    i32 135, label %48
    i32 137, label %54
    i32 136, label %60
    i32 134, label %66
    i32 133, label %72
    i32 132, label %72
    i32 131, label %72
    i32 130, label %72
    i32 129, label %72
    i32 128, label %78
  ]

48:                                               ; preds = %43, %43, %43, %43, %43
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %50 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %51 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %52 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %53 = call i32 @rt2800_config_channel_rf3xxx(%struct.rt2x00_dev* %49, %struct.ieee80211_conf* %50, %struct.rf_channel* %51, %struct.channel_info* %52)
  br label %90

54:                                               ; preds = %43
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %57 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %58 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %59 = call i32 @rt2800_config_channel_rf3052(%struct.rt2x00_dev* %55, %struct.ieee80211_conf* %56, %struct.rf_channel* %57, %struct.channel_info* %58)
  br label %90

60:                                               ; preds = %43
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %63 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %64 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %65 = call i32 @rt2800_config_channel_rf3290(%struct.rt2x00_dev* %61, %struct.ieee80211_conf* %62, %struct.rf_channel* %63, %struct.channel_info* %64)
  br label %90

66:                                               ; preds = %43
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %69 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %70 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %71 = call i32 @rt2800_config_channel_rf3322(%struct.rt2x00_dev* %67, %struct.ieee80211_conf* %68, %struct.rf_channel* %69, %struct.channel_info* %70)
  br label %90

72:                                               ; preds = %43, %43, %43, %43, %43
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %74 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %75 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %76 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %77 = call i32 @rt2800_config_channel_rf53xx(%struct.rt2x00_dev* %73, %struct.ieee80211_conf* %74, %struct.rf_channel* %75, %struct.channel_info* %76)
  br label %90

78:                                               ; preds = %43
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %80 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %81 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %82 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %83 = call i32 @rt2800_config_channel_rf55xx(%struct.rt2x00_dev* %79, %struct.ieee80211_conf* %80, %struct.rf_channel* %81, %struct.channel_info* %82)
  br label %90

84:                                               ; preds = %43
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %86 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %87 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %88 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %89 = call i32 @rt2800_config_channel_rf2xxx(%struct.rt2x00_dev* %85, %struct.ieee80211_conf* %86, %struct.rf_channel* %87, %struct.channel_info* %88)
  br label %90

90:                                               ; preds = %84, %78, %72, %66, %60, %54, %48
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %92 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %91, i32 136)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %90
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %96 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %95, i32 134)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %94
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %100 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %99, i32 133)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %104 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %103, i32 132)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %108 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %107, i32 131)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %112 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %111, i32 130)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %116 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %115, i32 129)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %114, %110, %106, %102, %98, %94, %90
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %120 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %119, i32 30, i32* %12)
  %121 = load i32, i32* @RFCSR30_TX_H20M, align 4
  %122 = call i32 @rt2x00_set_field8(i32* %12, i32 %121, i32 0)
  %123 = load i32, i32* @RFCSR30_RX_H20M, align 4
  %124 = call i32 @rt2x00_set_field8(i32* %12, i32 %123, i32 0)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %125, i32 30, i32 %126)
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %129 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %128, i32 3, i32* %12)
  %130 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %131 = call i32 @rt2x00_set_field8(i32* %12, i32 %130, i32 1)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %132, i32 3, i32 %133)
  br label %135

135:                                              ; preds = %118, %114
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %137 = load i32, i32* @RT3352, align 4
  %138 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %142 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %141, i32 27, i32 0)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %145 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 38, %146
  %148 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %143, i32 66, i32 %147)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %150 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %149, i32 27, i32 32)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %152 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %153 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 38, %154
  %156 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %151, i32 66, i32 %155)
  br label %178

157:                                              ; preds = %135
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %159 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %160 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 55, %161
  %163 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %158, i32 62, i32 %162)
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %166 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 55, %167
  %169 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %164, i32 63, i32 %168)
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %172 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 55, %173
  %175 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %170, i32 64, i32 %174)
  %176 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %177 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %176, i32 86, i32 0)
  br label %178

178:                                              ; preds = %157, %140
  %179 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %180 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp sle i32 %181, 14
  br i1 %182, label %183, label %211

183:                                              ; preds = %178
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %185 = load i32, i32* @RT5390, align 4
  %186 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %210, label %188

188:                                              ; preds = %183
  %189 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %190 = load i32, i32* @RT5392, align 4
  %191 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %210, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_BG, align 4
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %196 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %195, i32 0, i32 1
  %197 = call i64 @test_bit(i32 %194, i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %201 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %200, i32 82, i32 98)
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %203 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %202, i32 75, i32 70)
  br label %209

204:                                              ; preds = %193
  %205 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %206 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %205, i32 82, i32 132)
  %207 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %208 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %207, i32 75, i32 80)
  br label %209

209:                                              ; preds = %204, %199
  br label %210

210:                                              ; preds = %209, %188, %183
  br label %235

211:                                              ; preds = %178
  %212 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %213 = load i32, i32* @RT3572, align 4
  %214 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %218 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %217, i32 82, i32 148)
  br label %222

219:                                              ; preds = %211
  %220 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %221 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %220, i32 82, i32 242)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* @CAPABILITY_EXTERNAL_LNA_A, align 4
  %224 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %225 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %224, i32 0, i32 1
  %226 = call i64 @test_bit(i32 %223, i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %230 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %229, i32 75, i32 70)
  br label %234

231:                                              ; preds = %222
  %232 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %233 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %232, i32 75, i32 80)
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %210
  %236 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %237 = load i32, i32* @TX_BAND_CFG, align 4
  %238 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %236, i32 %237, i32* %9)
  %239 = load i32, i32* @TX_BAND_CFG_HT40_MINUS, align 4
  %240 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %241 = call i32 @conf_is_ht40_minus(%struct.ieee80211_conf* %240)
  %242 = call i32 @rt2x00_set_field32(i32* %9, i32 %239, i32 %241)
  %243 = load i32, i32* @TX_BAND_CFG_A, align 4
  %244 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %245 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 14
  %248 = zext i1 %247 to i32
  %249 = call i32 @rt2x00_set_field32(i32* %9, i32 %243, i32 %248)
  %250 = load i32, i32* @TX_BAND_CFG_BG, align 4
  %251 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %252 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp sle i32 %253, 14
  %255 = zext i1 %254 to i32
  %256 = call i32 @rt2x00_set_field32(i32* %9, i32 %250, i32 %255)
  %257 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %258 = load i32, i32* @TX_BAND_CFG, align 4
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %257, i32 %258, i32 %259)
  %261 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %262 = load i32, i32* @RT3572, align 4
  %263 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %235
  %266 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %267 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %266, i32 8, i32 0)
  br label %268

268:                                              ; preds = %265, %235
  store i32 0, i32* %10, align 4
  %269 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %270 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %289

274:                                              ; preds = %268
  %275 = load i32, i32* @TX_PIN_CFG_PA_PE_A1_EN, align 4
  %276 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %277 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp sgt i32 %278, 14
  %280 = zext i1 %279 to i32
  %281 = call i32 @rt2x00_set_field32(i32* %10, i32 %275, i32 %280)
  %282 = load i32, i32* @TX_PIN_CFG_PA_PE_G1_EN, align 4
  %283 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %284 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp sle i32 %285, 14
  %287 = zext i1 %286 to i32
  %288 = call i32 @rt2x00_set_field32(i32* %10, i32 %282, i32 %287)
  br label %289

289:                                              ; preds = %274, %268
  %290 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %291 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 2
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load i32, i32* @TX_PIN_CFG_LNA_PE_A1_EN, align 4
  %297 = call i32 @rt2x00_set_field32(i32* %10, i32 %296, i32 1)
  %298 = load i32, i32* @TX_PIN_CFG_LNA_PE_G1_EN, align 4
  %299 = call i32 @rt2x00_set_field32(i32* %10, i32 %298, i32 1)
  br label %300

300:                                              ; preds = %295, %289
  %301 = load i32, i32* @TX_PIN_CFG_LNA_PE_A0_EN, align 4
  %302 = call i32 @rt2x00_set_field32(i32* %10, i32 %301, i32 1)
  %303 = load i32, i32* @TX_PIN_CFG_LNA_PE_G0_EN, align 4
  %304 = call i32 @rt2x00_set_field32(i32* %10, i32 %303, i32 1)
  %305 = load i32, i32* @TX_PIN_CFG_RFTR_EN, align 4
  %306 = call i32 @rt2x00_set_field32(i32* %10, i32 %305, i32 1)
  %307 = load i32, i32* @TX_PIN_CFG_TRSW_EN, align 4
  %308 = call i32 @rt2x00_set_field32(i32* %10, i32 %307, i32 1)
  %309 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %310 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %311 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %310, i32 0, i32 1
  %312 = call i64 @test_bit(i32 %309, i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %300
  %315 = load i32, i32* @TX_PIN_CFG_PA_PE_G0_EN, align 4
  %316 = call i32 @rt2x00_set_field32(i32* %10, i32 %315, i32 1)
  br label %325

317:                                              ; preds = %300
  %318 = load i32, i32* @TX_PIN_CFG_PA_PE_G0_EN, align 4
  %319 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %320 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp sle i32 %321, 14
  %323 = zext i1 %322 to i32
  %324 = call i32 @rt2x00_set_field32(i32* %10, i32 %318, i32 %323)
  br label %325

325:                                              ; preds = %317, %314
  %326 = load i32, i32* @TX_PIN_CFG_PA_PE_A0_EN, align 4
  %327 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %328 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp sgt i32 %329, 14
  %331 = zext i1 %330 to i32
  %332 = call i32 @rt2x00_set_field32(i32* %10, i32 %326, i32 %331)
  %333 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %334 = load i32, i32* @TX_PIN_CFG, align 4
  %335 = load i32, i32* %10, align 4
  %336 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %333, i32 %334, i32 %335)
  %337 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %338 = load i32, i32* @RT3572, align 4
  %339 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %325
  %342 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %343 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %342, i32 8, i32 128)
  br label %344

344:                                              ; preds = %341, %325
  %345 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %346 = load i32, i32* @RT5592, align 4
  %347 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %345, i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %378

349:                                              ; preds = %344
  %350 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %351 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %350, i32 195, i32 141)
  %352 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %353 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %354 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %353)
  %355 = icmp ne i32 %354, 0
  %356 = zext i1 %355 to i64
  %357 = select i1 %355, i32 16, i32 26
  %358 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %352, i32 196, i32 %357)
  %359 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %360 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp sle i32 %361, 14
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i32 28, i32 36
  %365 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %366 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 2, %367
  %369 = add nsw i32 %364, %368
  store i32 %369, i32* %9, align 4
  %370 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %371 = load i32, i32* %9, align 4
  %372 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %370, i32 66, i32 %371)
  %373 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %374 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %375 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @rt2800_iq_calibrate(%struct.rt2x00_dev* %373, i32 %376)
  br label %378

378:                                              ; preds = %349, %344
  %379 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %380 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %379, i32 4, i32* %11)
  %381 = load i32, i32* @BBP4_BANDWIDTH, align 4
  %382 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %383 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %382)
  %384 = mul nsw i32 2, %383
  %385 = call i32 @rt2x00_set_field8(i32* %11, i32 %381, i32 %384)
  %386 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %387 = load i32, i32* %11, align 4
  %388 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %386, i32 4, i32 %387)
  %389 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %390 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %389, i32 3, i32* %11)
  %391 = load i32, i32* @BBP3_HT40_MINUS, align 4
  %392 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %393 = call i32 @conf_is_ht40_minus(%struct.ieee80211_conf* %392)
  %394 = call i32 @rt2x00_set_field8(i32* %11, i32 %391, i32 %393)
  %395 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %396 = load i32, i32* %11, align 4
  %397 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %395, i32 3, i32 %396)
  %398 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %399 = load i32, i32* @RT2860, align 4
  %400 = load i32, i32* @REV_RT2860C, align 4
  %401 = call i64 @rt2x00_rt_rev(%struct.rt2x00_dev* %398, i32 %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %422

403:                                              ; preds = %378
  %404 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %405 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %409 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %408, i32 69, i32 26)
  %410 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %411 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %410, i32 70, i32 10)
  %412 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %413 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %412, i32 73, i32 22)
  br label %421

414:                                              ; preds = %403
  %415 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %416 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %415, i32 69, i32 22)
  %417 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %418 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %417, i32 70, i32 8)
  %419 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %420 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %419, i32 73, i32 17)
  br label %421

421:                                              ; preds = %414, %407
  br label %422

422:                                              ; preds = %421, %378
  %423 = call i32 @msleep(i32 1)
  %424 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %425 = load i32, i32* @CH_IDLE_STA, align 4
  %426 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %424, i32 %425, i32* %9)
  %427 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %428 = load i32, i32* @CH_BUSY_STA, align 4
  %429 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %427, i32 %428, i32* %9)
  %430 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %431 = load i32, i32* @CH_BUSY_STA_SEC, align 4
  %432 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %430, i32 %431, i32* %9)
  %433 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %434 = load i32, i32* @RT3352, align 4
  %435 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %433, i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %422
  %438 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %439 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %438, i32 49, i32* %11)
  %440 = load i32, i32* @BBP49_UPDATE_FLAG, align 4
  %441 = call i32 @rt2x00_set_field8(i32* %11, i32 %440, i32 0)
  %442 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %443 = load i32, i32* %11, align 4
  %444 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %442, i32 49, i32 %443)
  br label %445

445:                                              ; preds = %437, %422
  ret void
}

declare dso_local i8* @TXPOWER_G_TO_DEV(i8*) #1

declare dso_local i8* @TXPOWER_A_TO_DEV(i8*) #1

declare dso_local i32 @rt2800_config_channel_rf3xxx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3052(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3290(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3322(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf53xx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf55xx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf2xxx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @conf_is_ht40_minus(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_iq_calibrate(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00_rt_rev(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
