; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ath_txq** }
%struct.ath_txq = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Configure tx [queue/halq] [%d/%d], aifs: %d, cw_min: %d, cw_max: %d, txop: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TXQ Update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @ath9k_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.ath_softc*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_txq*, align 8
  %13 = alloca %struct.ath9k_tx_queue_info, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath_softc*, %struct.ath_softc** %16, align 8
  store %struct.ath_softc* %17, %struct.ath_softc** %10, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(i32 %20)
  store %struct.ath_common* %21, %struct.ath_common** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

26:                                               ; preds = %4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ath_txq**, %struct.ath_txq*** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %30, i64 %31
  %33 = load %struct.ath_txq*, %struct.ath_txq** %32, align 8
  store %struct.ath_txq* %33, %struct.ath_txq** %12, align 8
  %34 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %35 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %34)
  %36 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = call i32 @memset(%struct.ath9k_tx_queue_info* %13, i32 0, i32 16)
  %40 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %13, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %13, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %13, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 32
  %56 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %13, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %58 = load i32, i32* @CONFIG, align 4
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.ath_txq*, %struct.ath_txq** %12, align 8
  %61 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ath_dbg(%struct.ath_common* %57, i32 %58, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ath_update_max_aggr_framelen(%struct.ath_softc* %76, i64 %77, i32 %79)
  %81 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %82 = load %struct.ath_txq*, %struct.ath_txq** %12, align 8
  %83 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ath_txq_update(%struct.ath_softc* %81, i32 %84, %struct.ath9k_tx_queue_info* %13)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %26
  %89 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %90 = call i32 @ath_err(%struct.ath_common* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %26
  %92 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  %96 = call i32 @ath9k_ps_restore(%struct.ath_softc* %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %25
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath_update_max_aggr_framelen(%struct.ath_softc*, i64, i32) #1

declare dso_local i32 @ath_txq_update(%struct.ath_softc*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
