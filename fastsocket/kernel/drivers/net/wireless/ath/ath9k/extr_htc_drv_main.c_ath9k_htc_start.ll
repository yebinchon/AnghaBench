; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_5__, %struct.ath9k_htc_priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath9k_htc_priv = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.ath_hw* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_channel = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Starting driver with initial channel: %d MHz\0A\00", align 1
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@WMI_FLUSH_RECV_CMDID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to reset hardware; reset status %d (freq %u MHz)\0A\00", align 1
@WMI_SET_MODE_CMDID = common dso_local global i32 0, align 4
@WMI_ATH_INIT_CMDID = common dso_local global i32 0, align 4
@WMI_START_RECV_CMDID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to update capability in target\0A\00", align 1
@OP_INVALID = common dso_local global i32 0, align 4
@ATH9K_HTC_OP_TX_QUEUES_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH9K_HTC_TX_CLEANUP_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath9k_htc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %4, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 6
  %18 = load %struct.ath_hw*, %struct.ath_hw** %17, align 8
  store %struct.ath_hw* %18, %struct.ath_hw** %5, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %19)
  store %struct.ath_common* %20, %struct.ath_common** %6, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %24, align 8
  store %struct.ieee80211_channel* %25, %struct.ieee80211_channel** %7, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %30 = load i32, i32* @CONFIG, align 4
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %29, i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %36 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %37 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %35, i32 %36)
  %38 = load i32, i32* @WMI_FLUSH_RECV_CMDID, align 4
  %39 = call i32 @WMI_CMD(i32 %38)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = call %struct.ath9k_channel* @ath9k_cmn_get_curchannel(%struct.ieee80211_hw* %40, %struct.ath_hw* %41)
  store %struct.ath9k_channel* %42, %struct.ath9k_channel** %8, align 8
  %43 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %44 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %45 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ath9k_hw_reset(%struct.ath_hw* %43, %struct.ath9k_channel* %44, i32 %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %1
  %52 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ath_err(%struct.ath_common* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %59 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %134

62:                                               ; preds = %1
  %63 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %64 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %71 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %70, i32 0, i32 4
  %72 = call i32 @ath9k_cmn_update_txpow(%struct.ath_hw* %63, i32 %66, i32 %69, i32* %71)
  %73 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %74 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %75 = call i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv* %73, %struct.ath9k_channel* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @cpu_to_be16(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @WMI_SET_MODE_CMDID, align 4
  %79 = call i32 @WMI_CMD_BUF(i32 %78, i32* %11)
  %80 = load i32, i32* @WMI_ATH_INIT_CMDID, align 4
  %81 = call i32 @WMI_CMD(i32 %80)
  %82 = load i32, i32* @WMI_START_RECV_CMDID, align 4
  %83 = call i32 @WMI_CMD(i32 %82)
  %84 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %85 = call i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv* %84)
  %86 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %87 = call i32 @ath9k_htc_update_cap_target(%struct.ath9k_htc_priv* %86, i32 0)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %62
  %91 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %92 = load i32, i32* @CONFIG, align 4
  %93 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %91, i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %62
  %95 = load i32, i32* @OP_INVALID, align 4
  %96 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %96, i32 0, i32 3
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  %99 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %100 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @htc_start(i32 %101)
  %103 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %104 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = call i32 @spin_lock_bh(i32* %105)
  %107 = load i32, i32* @ATH9K_HTC_OP_TX_QUEUES_STOP, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %110 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %115 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock_bh(i32* %116)
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %119 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %118)
  %120 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %121 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* @jiffies, align 8
  %124 = load i32, i32* @ATH9K_HTC_TX_CLEANUP_INTERVAL, align 4
  %125 = call i64 @msecs_to_jiffies(i32 %124)
  %126 = add nsw i64 %123, %125
  %127 = call i32 @mod_timer(i32* %122, i64 %126)
  %128 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %129 = call i32 @ath9k_htc_start_btcoex(%struct.ath9k_htc_priv* %128)
  %130 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %131 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %94, %51
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @WMI_CMD(i32) #1

declare dso_local %struct.ath9k_channel* @ath9k_cmn_get_curchannel(%struct.ieee80211_hw*, %struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.ath_hw*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_htc_get_curmode(%struct.ath9k_htc_priv*, %struct.ath9k_channel*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @ath9k_host_rx_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_update_cap_target(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @htc_start(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ath9k_htc_start_btcoex(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
