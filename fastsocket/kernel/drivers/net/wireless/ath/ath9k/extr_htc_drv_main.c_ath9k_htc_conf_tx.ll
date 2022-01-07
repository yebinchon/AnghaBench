; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Configure tx [queue/hwq] [%d/%d],  aifs: %d, cw_min: %d, cw_max: %d, txop: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TXQ Update failed\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @ath9k_htc_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.ath9k_htc_priv*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath9k_tx_queue_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %16, align 8
  store %struct.ath9k_htc_priv* %17, %struct.ath9k_htc_priv** %10, align 8
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %20)
  store %struct.ath_common* %21, %struct.ath_common** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

26:                                               ; preds = %4
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %28 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %31 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %30)
  %32 = call i32 @memset(%struct.ath9k_tx_queue_info* %12, i32 0, i32 16)
  %33 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %12, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %12, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %12, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 32
  %49 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %12, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %52 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @get_hw_qnum(i64 %50, i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %56 = load i32, i32* @CONFIG, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ath_dbg(%struct.ath_common* %55, i32 %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70)
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @ath_htc_txq_update(%struct.ath9k_htc_priv* %72, i32 %73, %struct.ath9k_tx_queue_info* %12)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %26
  %78 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %79 = call i32 @ath_err(%struct.ath_common* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %101

80:                                               ; preds = %26
  %81 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %82 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %91 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @IEEE80211_AC_BE, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %89, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %99 = call i32 @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv* %98)
  br label %100

100:                                              ; preds = %97, %88, %80
  br label %101

101:                                              ; preds = %100, %77
  %102 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %103 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %102)
  %104 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %10, align 8
  %105 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %101, %25
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @get_hw_qnum(i64, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath_htc_txq_update(%struct.ath9k_htc_priv*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
