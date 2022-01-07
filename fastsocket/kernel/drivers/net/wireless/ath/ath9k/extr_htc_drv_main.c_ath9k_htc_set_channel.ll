; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_10__, i32, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_hw* }
%struct.TYPE_10__ = type { i32 }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_hw = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }

@OP_INVALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@WMI_DISABLE_INTR_CMDID = common dso_local global i32 0, align 4
@WMI_DRAIN_TXQ_ALL_CMDID = common dso_local global i32 0, align 4
@WMI_STOP_RECV_CMDID = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"(%u MHz) -> (%u MHz), HT: %d, HT40: %d fastcc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to reset channel (%u Mhz) reset status %d\0A\00", align 1
@WMI_START_RECV_CMDID = common dso_local global i32 0, align 4
@WMI_SET_MODE_CMDID = common dso_local global i32 0, align 4
@WMI_ENABLE_INTR_CMDID = common dso_local global i32 0, align 4
@OP_SCANNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH9K_HTC_TX_CLEANUP_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ieee80211_hw*, %struct.ath9k_channel*)* @ath9k_htc_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_set_channel(%struct.ath9k_htc_priv* %0, %struct.ieee80211_hw* %1, %struct.ath9k_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca %struct.ath9k_hw_cal_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %6, align 8
  store %struct.ath9k_channel* %2, %struct.ath9k_channel** %7, align 8
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 6
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  store %struct.ath_hw* %20, %struct.ath_hw** %8, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %21)
  store %struct.ath_common* %22, %struct.ath_common** %9, align 8
  %23 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %24 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.ieee80211_conf* %26, %struct.ieee80211_conf** %10, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  store %struct.ieee80211_channel* %31, %struct.ieee80211_channel** %12, align 8
  store %struct.ath9k_hw_cal_data* null, %struct.ath9k_hw_cal_data** %13, align 8
  %32 = load i32, i32* @OP_INVALID, align 4
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %174

40:                                               ; preds = %3
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %52 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %51)
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @del_timer_sync(i32* %55)
  %57 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %58 = call i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv* %57)
  %59 = load i32, i32* @WMI_DISABLE_INTR_CMDID, align 4
  %60 = call i32 @WMI_CMD(i32 %59)
  %61 = load i32, i32* @WMI_DRAIN_TXQ_ALL_CMDID, align 4
  %62 = call i32 @WMI_CMD(i32 %61)
  %63 = load i32, i32* @WMI_STOP_RECV_CMDID, align 4
  %64 = call i32 @WMI_CMD(i32 %63)
  %65 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %66 = call i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv* %65)
  %67 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %68 = load i32, i32* @CONFIG, align 4
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 6
  %71 = load %struct.ath_hw*, %struct.ath_hw** %70, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %80 = call i32 @conf_is_ht(%struct.ieee80211_conf* %79)
  %81 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %82 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @ath_dbg(%struct.ath_common* %67, i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78, i32 %80, i32 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %40
  %88 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %89 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %88, i32 0, i32 5
  store %struct.ath9k_hw_cal_data* %89, %struct.ath9k_hw_cal_data** %13, align 8
  br label %90

90:                                               ; preds = %87, %40
  %91 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %92 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %93 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ath9k_hw_reset(%struct.ath_hw* %91, %struct.ath9k_channel* %92, %struct.ath9k_hw_cal_data* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %101 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @ath_err(%struct.ath_common* %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103)
  br label %170

105:                                              ; preds = %90
  %106 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %107 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %108 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %111 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %114 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %113, i32 0, i32 3
  %115 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %106, i32 %109, i32 %112, i32* %114)
  %116 = load i32, i32* @WMI_START_RECV_CMDID, align 4
  %117 = call i32 @WMI_CMD(i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %170

121:                                              ; preds = %105
  %122 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %123 = call i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv* %122)
  %124 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %125 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %126 = call i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv* %124, %struct.ath9k_channel* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @cpu_to_be16(i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* @WMI_SET_MODE_CMDID, align 4
  %130 = call i32 @WMI_CMD_BUF(i32 %129, i32* %15)
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %170

134:                                              ; preds = %121
  %135 = load i32, i32* @WMI_ENABLE_INTR_CMDID, align 4
  %136 = call i32 @WMI_CMD(i32 %135)
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %170

140:                                              ; preds = %134
  %141 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %142 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @htc_start(i32 %143)
  %145 = load i32, i32* @OP_SCANNING, align 4
  %146 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %147 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %146, i32 0, i32 1
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %140
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %152 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %160 = call i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv* %159)
  br label %161

161:                                              ; preds = %158, %150, %140
  %162 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %163 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* @jiffies, align 8
  %166 = load i32, i32* @ATH9K_HTC_TX_CLEANUP_INTERVAL, align 4
  %167 = call i64 @msecs_to_jiffies(i32 %166)
  %168 = add nsw i64 %165, %167
  %169 = call i32 @mod_timer(i32* %164, i64 %168)
  br label %170

170:                                              ; preds = %161, %139, %133, %120, %98
  %171 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %172 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %171)
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %170, %37
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_htc_tx_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local i32 @ath9k_wmi_event_drain(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, %struct.ath9k_hw_cal_data*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv*, %struct.ath9k_channel*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @htc_start(i32) #1

declare dso_local i32 @ath9k_htc_vif_reconfig(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
