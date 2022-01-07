; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3052.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3052.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__, i32, %struct.rt2800_drv_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt2800_drv_data = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32 }
%struct.channel_info = type { i32, i32 }

@RFCSR6_R1 = common dso_local global i32 0, align 4
@RFCSR6_TXDIV = common dso_local global i32 0, align 4
@RFCSR5_R1 = common dso_local global i32 0, align 4
@RFCSR12_DR0 = common dso_local global i32 0, align 4
@RFCSR12_TX_POWER = common dso_local global i32 0, align 4
@RFCSR13_DR0 = common dso_local global i32 0, align 4
@RFCSR13_TX_POWER = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX2_PD = common dso_local global i32 0, align 4
@RFCSR1_TX2_PD = common dso_local global i32 0, align 4
@CAPABILITY_BT_COEXIST = common dso_local global i32 0, align 4
@RFCSR23_FREQ_OFFSET = common dso_local global i32 0, align 4
@RFCSR16_TXMIXER_GAIN = common dso_local global i32 0, align 4
@RFCSR7_BIT2 = common dso_local global i32 0, align 4
@RFCSR7_BIT3 = common dso_local global i32 0, align 4
@RFCSR7_BIT4 = common dso_local global i32 0, align 4
@RFCSR7_BITS67 = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR7 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL7 = common dso_local global i32 0, align 4
@RFCSR7_RF_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3052 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3052(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca %struct.rt2800_drv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 3
  %14 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %13, align 8
  store %struct.rt2800_drv_data* %14, %struct.rt2800_drv_data** %9, align 8
  %15 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %16 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 14
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %22 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %20, i32 25, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %27 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %25, i32 26, i32 %28)
  br label %35

30:                                               ; preds = %4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %31, i32 25, i32 9)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %34 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %33, i32 26, i32 255)
  br label %35

35:                                               ; preds = %30, %19
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %38 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 2, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %42 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %43 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 3, i32 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %46, i32 6, i32* %10)
  %48 = load i32, i32* @RFCSR6_R1, align 4
  %49 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %50 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rt2x00_set_field8(i32* %10, i32 %48, i32 %51)
  %53 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %54 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 14
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @RFCSR6_TXDIV, align 4
  %59 = call i32 @rt2x00_set_field8(i32* %10, i32 %58, i32 2)
  br label %63

60:                                               ; preds = %35
  %61 = load i32, i32* @RFCSR6_TXDIV, align 4
  %62 = call i32 @rt2x00_set_field8(i32* %10, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 6, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %67, i32 5, i32* %10)
  %69 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %70 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 14
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @RFCSR5_R1, align 4
  %75 = call i32 @rt2x00_set_field8(i32* %10, i32 %74, i32 1)
  br label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @RFCSR5_R1, align 4
  %78 = call i32 @rt2x00_set_field8(i32* %10, i32 %77, i32 2)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %80, i32 5, i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %84 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %83, i32 12, i32* %10)
  %85 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %86 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %87, 14
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i32, i32* @RFCSR12_DR0, align 4
  %91 = call i32 @rt2x00_set_field8(i32* %10, i32 %90, i32 3)
  %92 = load i32, i32* @RFCSR12_TX_POWER, align 4
  %93 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %94 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rt2x00_set_field8(i32* %10, i32 %92, i32 %95)
  br label %112

97:                                               ; preds = %79
  %98 = load i32, i32* @RFCSR12_DR0, align 4
  %99 = call i32 @rt2x00_set_field8(i32* %10, i32 %98, i32 7)
  %100 = load i32, i32* @RFCSR12_TX_POWER, align 4
  %101 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %102 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 3
  %105 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %106 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 12
  %109 = shl i32 %108, 1
  %110 = or i32 %104, %109
  %111 = call i32 @rt2x00_set_field8(i32* %10, i32 %100, i32 %110)
  br label %112

112:                                              ; preds = %97, %89
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %113, i32 12, i32 %114)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %117 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %116, i32 13, i32* %10)
  %118 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %119 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %120, 14
  br i1 %121, label %122, label %130

122:                                              ; preds = %112
  %123 = load i32, i32* @RFCSR13_DR0, align 4
  %124 = call i32 @rt2x00_set_field8(i32* %10, i32 %123, i32 3)
  %125 = load i32, i32* @RFCSR13_TX_POWER, align 4
  %126 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %127 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @rt2x00_set_field8(i32* %10, i32 %125, i32 %128)
  br label %145

130:                                              ; preds = %112
  %131 = load i32, i32* @RFCSR13_DR0, align 4
  %132 = call i32 @rt2x00_set_field8(i32* %10, i32 %131, i32 7)
  %133 = load i32, i32* @RFCSR13_TX_POWER, align 4
  %134 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %135 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 3
  %138 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %139 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 12
  %142 = shl i32 %141, 1
  %143 = or i32 %137, %142
  %144 = call i32 @rt2x00_set_field8(i32* %10, i32 %133, i32 %143)
  br label %145

145:                                              ; preds = %130, %122
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %146, i32 13, i32 %147)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %150 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %149, i32 1, i32* %10)
  %151 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %152 = call i32 @rt2x00_set_field8(i32* %10, i32 %151, i32 0)
  %153 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %154 = call i32 @rt2x00_set_field8(i32* %10, i32 %153, i32 0)
  %155 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %156 = call i32 @rt2x00_set_field8(i32* %10, i32 %155, i32 0)
  %157 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %158 = call i32 @rt2x00_set_field8(i32* %10, i32 %157, i32 0)
  %159 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %160 = call i32 @rt2x00_set_field8(i32* %10, i32 %159, i32 0)
  %161 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %162 = call i32 @rt2x00_set_field8(i32* %10, i32 %161, i32 0)
  %163 = load i32, i32* @CAPABILITY_BT_COEXIST, align 4
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %165 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %164, i32 0, i32 2
  %166 = call i64 @test_bit(i32 %163, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %145
  %169 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %170 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %171, 14
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %175 = call i32 @rt2x00_set_field8(i32* %10, i32 %174, i32 1)
  %176 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %177 = call i32 @rt2x00_set_field8(i32* %10, i32 %176, i32 1)
  br label %178

178:                                              ; preds = %173, %168
  %179 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %180 = call i32 @rt2x00_set_field8(i32* %10, i32 %179, i32 1)
  %181 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %182 = call i32 @rt2x00_set_field8(i32* %10, i32 %181, i32 1)
  br label %206

183:                                              ; preds = %145
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %185 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  switch i32 %187, label %194 [
    i32 1, label %188
    i32 2, label %191
  ]

188:                                              ; preds = %183
  %189 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %190 = call i32 @rt2x00_set_field8(i32* %10, i32 %189, i32 1)
  br label %191

191:                                              ; preds = %183, %188
  %192 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %193 = call i32 @rt2x00_set_field8(i32* %10, i32 %192, i32 1)
  br label %194

194:                                              ; preds = %183, %191
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %196 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  switch i32 %198, label %205 [
    i32 1, label %199
    i32 2, label %202
  ]

199:                                              ; preds = %194
  %200 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %201 = call i32 @rt2x00_set_field8(i32* %10, i32 %200, i32 1)
  br label %202

202:                                              ; preds = %194, %199
  %203 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %204 = call i32 @rt2x00_set_field8(i32* %10, i32 %203, i32 1)
  br label %205

205:                                              ; preds = %194, %202
  br label %206

206:                                              ; preds = %205, %178
  %207 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %207, i32 1, i32 %208)
  %210 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %211 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %210, i32 23, i32* %10)
  %212 = load i32, i32* @RFCSR23_FREQ_OFFSET, align 4
  %213 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %214 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @rt2x00_set_field8(i32* %10, i32 %212, i32 %215)
  %217 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %217, i32 23, i32 %218)
  %220 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %221 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %206
  %224 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %225 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %226 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %224, i32 24, i32 %227)
  %229 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %230 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %231 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %229, i32 31, i32 %232)
  br label %245

234:                                              ; preds = %206
  %235 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %236 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %237 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %235, i32 24, i32 %238)
  %240 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %241 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %242 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %240, i32 31, i32 %243)
  br label %245

245:                                              ; preds = %234, %223
  %246 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %247 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp sle i32 %248, 14
  br i1 %249, label %250, label %283

250:                                              ; preds = %245
  %251 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %252 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %251, i32 7, i32 216)
  %253 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %254 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %253, i32 9, i32 195)
  %255 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %256 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %255, i32 10, i32 241)
  %257 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %258 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %257, i32 11, i32 185)
  %259 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %260 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %259, i32 15, i32 83)
  store i32 76, i32* %10, align 4
  %261 = load i32, i32* @RFCSR16_TXMIXER_GAIN, align 4
  %262 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %263 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @rt2x00_set_field8(i32* %10, i32 %261, i32 %264)
  %266 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %267 = load i32, i32* %10, align 4
  %268 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %266, i32 16, i32 %267)
  %269 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %270 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %269, i32 17, i32 35)
  %271 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %272 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %271, i32 19, i32 147)
  %273 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %274 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %273, i32 20, i32 179)
  %275 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %276 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %275, i32 25, i32 21)
  %277 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %278 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %277, i32 26, i32 133)
  %279 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %280 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %279, i32 27, i32 0)
  %281 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %282 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %281, i32 29, i32 155)
  br label %353

283:                                              ; preds = %245
  %284 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %285 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %284, i32 7, i32* %10)
  %286 = load i32, i32* @RFCSR7_BIT2, align 4
  %287 = call i32 @rt2x00_set_field8(i32* %10, i32 %286, i32 1)
  %288 = load i32, i32* @RFCSR7_BIT3, align 4
  %289 = call i32 @rt2x00_set_field8(i32* %10, i32 %288, i32 0)
  %290 = load i32, i32* @RFCSR7_BIT4, align 4
  %291 = call i32 @rt2x00_set_field8(i32* %10, i32 %290, i32 1)
  %292 = load i32, i32* @RFCSR7_BITS67, align 4
  %293 = call i32 @rt2x00_set_field8(i32* %10, i32 %292, i32 0)
  %294 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %294, i32 7, i32 %295)
  %297 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %298 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %297, i32 9, i32 192)
  %299 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %300 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %299, i32 10, i32 241)
  %301 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %302 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %301, i32 11, i32 0)
  %303 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %304 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %303, i32 15, i32 67)
  store i32 122, i32* %10, align 4
  %305 = load i32, i32* @RFCSR16_TXMIXER_GAIN, align 4
  %306 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %307 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @rt2x00_set_field8(i32* %10, i32 %305, i32 %308)
  %310 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %311 = load i32, i32* %10, align 4
  %312 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %310, i32 16, i32 %311)
  %313 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %314 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %313, i32 17, i32 35)
  %315 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %316 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp sle i32 %317, 64
  br i1 %318, label %319, label %326

319:                                              ; preds = %283
  %320 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %321 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %320, i32 19, i32 183)
  %322 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %323 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %322, i32 20, i32 246)
  %324 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %325 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %324, i32 25, i32 61)
  br label %346

326:                                              ; preds = %283
  %327 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %328 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp sle i32 %329, 128
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %333 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %332, i32 19, i32 116)
  %334 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %335 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %334, i32 20, i32 244)
  %336 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %337 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %336, i32 25, i32 1)
  br label %345

338:                                              ; preds = %326
  %339 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %340 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %339, i32 19, i32 114)
  %341 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %342 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %341, i32 20, i32 243)
  %343 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %344 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %343, i32 25, i32 1)
  br label %345

345:                                              ; preds = %338, %331
  br label %346

346:                                              ; preds = %345, %319
  %347 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %348 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %347, i32 26, i32 135)
  %349 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %350 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %349, i32 27, i32 1)
  %351 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %352 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %351, i32 29, i32 159)
  br label %353

353:                                              ; preds = %346, %250
  %354 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %355 = load i32, i32* @GPIO_CTRL, align 4
  %356 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %354, i32 %355, i32* %11)
  %357 = load i32, i32* @GPIO_CTRL_DIR7, align 4
  %358 = call i32 @rt2x00_set_field32(i32* %11, i32 %357, i32 0)
  %359 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %360 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp sle i32 %361, 14
  br i1 %362, label %363, label %366

363:                                              ; preds = %353
  %364 = load i32, i32* @GPIO_CTRL_VAL7, align 4
  %365 = call i32 @rt2x00_set_field32(i32* %11, i32 %364, i32 1)
  br label %369

366:                                              ; preds = %353
  %367 = load i32, i32* @GPIO_CTRL_VAL7, align 4
  %368 = call i32 @rt2x00_set_field32(i32* %11, i32 %367, i32 0)
  br label %369

369:                                              ; preds = %366, %363
  %370 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %371 = load i32, i32* @GPIO_CTRL, align 4
  %372 = load i32, i32* %11, align 4
  %373 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %370, i32 %371, i32 %372)
  %374 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %375 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %374, i32 7, i32* %10)
  %376 = load i32, i32* @RFCSR7_RF_TUNING, align 4
  %377 = call i32 @rt2x00_set_field8(i32* %10, i32 %376, i32 1)
  %378 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %379 = load i32, i32* %10, align 4
  %380 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %378, i32 7, i32 %379)
  ret void
}

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
