; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath_softc* }
%struct.ieee80211_conf = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ath_softc = type { i32, i64, i32, i32, %struct.TYPE_4__, i64, %struct.ath_hw*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ath_hw = type { i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.ath_common = type { i32 }

@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Monitor mode is enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Monitor mode is disabled\0A\00", align 1
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Set channel: %d MHz type: %d\0A\00", align 1
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to set channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"DFS enabled at freq %d\0A\00", align 1
@SPECTRAL_CHANSCAN = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Set power: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath9k_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 1
  %20 = load %struct.ath_softc*, %struct.ath_softc** %19, align 8
  store %struct.ath_softc* %20, %struct.ath_softc** %6, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 6
  %23 = load %struct.ath_hw*, %struct.ath_hw** %22, align 8
  store %struct.ath_hw* %23, %struct.ath_hw** %7, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %25 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %24)
  store %struct.ath_common* %25, %struct.ath_common** %8, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  store %struct.ieee80211_conf* %27, %struct.ieee80211_conf** %9, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %29 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %37
  %54 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %55 = call i32 @ath_cancel_work(%struct.ath_softc* %54)
  %56 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %57 = call i32 @ath9k_stop_btcoex(%struct.ath_softc* %56)
  br label %64

58:                                               ; preds = %37
  %59 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %60 = call i32 @ath9k_start_btcoex(%struct.ath_softc* %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 9
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %83 = call i32 @ath9k_enable_ps(%struct.ath_softc* %82)
  br label %87

84:                                               ; preds = %70
  %85 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %86 = call i32 @ath9k_disable_ps(%struct.ath_softc* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 9
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %65
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %106 = load i32, i32* @CONFIG, align 4
  %107 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %105, i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %109 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %108, i32 0, i32 6
  %110 = load %struct.ath_hw*, %struct.ath_hw** %109, align 8
  %111 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %120

112:                                              ; preds = %97
  %113 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %114 = load i32, i32* @CONFIG, align 4
  %115 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %113, i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %117 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %116, i32 0, i32 6
  %118 = load %struct.ath_hw*, %struct.ath_hw** %117, align 8
  %119 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %104
  br label %121

121:                                              ; preds = %120, %92
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %331

129:                                              ; preds = %126, %121
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %133, align 8
  store %struct.ieee80211_channel* %134, %struct.ieee80211_channel** %12, align 8
  %135 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %136 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %135, i32 0, i32 3
  %137 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_6__* %136)
  store i32 %137, i32* %13, align 4
  %138 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %139 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %141 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %142 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %129
  %146 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %147 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %150 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = ptrtoint i32* %148 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %145, %129
  %159 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %160 = load i32, i32* @CONFIG, align 4
  %161 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %162 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %159, i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %167 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %166, i32 0, i32 0
  %168 = load i64, i64* %16, align 8
  %169 = call i32 @spin_lock_irqsave(i32* %167, i64 %168)
  %170 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %171 = call i32 @ath_update_survey_stats(%struct.ath_softc* %170)
  %172 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %173 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %172, i32 0, i32 0
  %174 = load i64, i64* %16, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %177 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %176, i32 0, i32 6
  %178 = load %struct.ath_hw*, %struct.ath_hw** %177, align 8
  %179 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @ath9k_cmn_update_ichannel(i32* %183, %struct.ieee80211_channel* %184, i32 %185)
  %187 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %188 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %239, label %194

194:                                              ; preds = %158
  %195 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %196 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %195, i32 0, i32 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %199 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %198, i32 0, i32 7
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %202
  %204 = icmp ne %struct.TYPE_5__* %197, %203
  br i1 %204, label %205, label %239

205:                                              ; preds = %194
  %206 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %207 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %206, i32 0, i32 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = icmp ne %struct.TYPE_5__* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %214 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %213, i32 0, i32 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %212
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %210, %205
  %220 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %221 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %220, i32 0, i32 7
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %224
  %226 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %227 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %226, i32 0, i32 8
  store %struct.TYPE_5__* %225, %struct.TYPE_5__** %227, align 8
  %228 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %229 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %228, i32 0, i32 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = call i32 @memset(%struct.TYPE_5__* %230, i32 0, i32 4)
  %232 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %233 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %234 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %233, i32 0, i32 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %232
  store i32 %238, i32* %236, align 4
  br label %260

239:                                              ; preds = %194, %158
  %240 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %241 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %240, i32 0, i32 7
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %239
  %252 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %253 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %252, i32 0, i32 7
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i64 %256
  %258 = call i32 @memset(%struct.TYPE_5__* %257, i32 0, i32 4)
  br label %259

259:                                              ; preds = %251, %239
  br label %260

260:                                              ; preds = %259, %219
  %261 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %262 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %263 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %264 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %263, i32 0, i32 6
  %265 = load %struct.ath_hw*, %struct.ath_hw** %264, align 8
  %266 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = call i64 @ath_set_channel(%struct.ath_softc* %261, %struct.ieee80211_hw* %262, i32* %270)
  %272 = icmp slt i64 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %260
  %274 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %275 = call i32 @ath_err(%struct.ath_common* %274, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %276 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %277 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %276, i32 0, i32 2
  %278 = call i32 @mutex_unlock(i32* %277)
  %279 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %280 = call i32 @ath9k_ps_restore(%struct.ath_softc* %279)
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %3, align 4
  br label %367

283:                                              ; preds = %260
  %284 = load i32, i32* %15, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @ath_update_survey_nf(%struct.ath_softc* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %283
  %291 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %292 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %315

296:                                              ; preds = %290
  %297 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %298 = call i32 @ath9k_hw_set_radar_params(%struct.ath_hw* %297)
  %299 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %300 = call i32 @ath9k_hw_getrxfilter(%struct.ath_hw* %299)
  store i32 %300, i32* %17, align 4
  %301 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %302 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* %17, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %17, align 4
  %306 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %307 = load i32, i32* %17, align 4
  %308 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %306, i32 %307)
  %309 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %310 = load i32, i32* @DFS, align 4
  %311 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %312 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %309, i32 %310, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %313)
  br label %330

315:                                              ; preds = %290
  %316 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %317 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %315
  %321 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %322 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @SPECTRAL_CHANSCAN, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %328 = call i32 @ath9k_spectral_scan_trigger(%struct.ieee80211_hw* %327)
  br label %329

329:                                              ; preds = %326, %320, %315
  br label %330

330:                                              ; preds = %329, %296
  br label %331

331:                                              ; preds = %330, %126
  %332 = load i32, i32* %5, align 4
  %333 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %361

336:                                              ; preds = %331
  %337 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %338 = load i32, i32* @CONFIG, align 4
  %339 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %340 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %337, i32 %338, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %341)
  %343 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %344 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 2, %345
  %347 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %348 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  store i32 %346, i32* %349, align 8
  %350 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %351 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %352 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %355 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %359 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %358, i32 0, i32 3
  %360 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %350, i32 %353, i32 %357, i32* %359)
  br label %361

361:                                              ; preds = %336, %331
  %362 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %363 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %362, i32 0, i32 2
  %364 = call i32 @mutex_unlock(i32* %363)
  %365 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %366 = call i32 @ath9k_ps_restore(%struct.ath_softc* %365)
  store i32 0, i32* %3, align 4
  br label %367

367:                                              ; preds = %361, %273
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_stop_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_start_btcoex(%struct.ath_softc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath9k_enable_ps(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_disable_ps(%struct.ath_softc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_6__*) #1

declare dso_local i32 @ath_update_survey_stats(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_update_ichannel(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ath_set_channel(%struct.ath_softc*, %struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ath_update_survey_nf(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath9k_hw_set_radar_params(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_getrxfilter(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_spectral_scan_trigger(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
