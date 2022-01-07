; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath9k_htc_priv* }
%struct.ieee80211_conf = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ath9k_htc_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.ath_common = type { i32 }

@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Set channel: %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to set channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@ATH9K_PM_NETWORK_SLEEP = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath9k_htc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ieee80211_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %5, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__* %18)
  store %struct.ath_common* %19, %struct.ath_common** %6, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  store %struct.ieee80211_conf* %21, %struct.ieee80211_conf** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 3
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %26 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %2
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 7
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 7
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %2
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %68, i32 0, i32 5
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %76 = call i32 @ath9k_htc_add_monitor_interface(%struct.ath9k_htc_priv* %75)
  br label %88

77:                                               ; preds = %67, %60
  %78 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %78, i32 0, i32 5
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %86 = call i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %85)
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %55
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %94, %89
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %101, align 8
  store %struct.ieee80211_channel* %102, %struct.ieee80211_channel** %10, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %104, i32 0, i32 2
  %106 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %108 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %12, align 4
  %110 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %111 = load i32, i32* @CONFIG, align 4
  %112 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ath_dbg(%struct.ath_common* %110, i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %117 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %116, i32 0, i32 5
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @ath9k_cmn_update_ichannel(i32* %123, %struct.ieee80211_channel* %128, i32 %129)
  %131 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %133 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %134 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %133, i32 0, i32 5
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i64 @ath9k_htc_set_channel(%struct.ath9k_htc_priv* %131, %struct.ieee80211_hw* %132, i32* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %97
  %144 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %145 = call i32 @ath_err(%struct.ath_common* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  br label %202

148:                                              ; preds = %97
  br label %149

149:                                              ; preds = %148, %94
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %163 = load i32, i32* @ATH9K_PM_NETWORK_SLEEP, align 4
  %164 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %162, i32 %163)
  %165 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %166 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  br label %176

167:                                              ; preds = %154
  %168 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %169 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %171 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %170, i32 0, i32 6
  %172 = call i32 @cancel_work_sync(i32* %171)
  %173 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %174 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %175 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %161
  br label %177

177:                                              ; preds = %176, %149
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %177
  %183 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %184 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 2, %185
  %187 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %188 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %190 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %189, i32 0, i32 5
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %193 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %196 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %199 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %198, i32 0, i32 4
  %200 = call i32 @ath9k_cmn_update_txpow(%struct.TYPE_5__* %191, i32 %194, i32 %197, i32* %199)
  br label %201

201:                                              ; preds = %182, %177
  br label %202

202:                                              ; preds = %201, %143
  %203 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %204 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %203)
  %205 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %206 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %205, i32 0, i32 3
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load i32, i32* %9, align 4
  ret i32 %208
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_htc_add_monitor_interface(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_cmn_update_ichannel(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i64 @ath9k_htc_set_channel(%struct.ath9k_htc_priv*, %struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
