; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64, i32 }
%struct.ath9k_htc_sta = type { i32* }

@AGGR_OPERATIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AMPDU action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*, i64, i64*, i32)* @ath9k_htc_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ath9k_htc_priv*, align 8
  %16 = alloca %struct.ath9k_htc_sta*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %19, align 8
  store %struct.ath9k_htc_priv* %20, %struct.ath9k_htc_priv** %15, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %25 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %24)
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %78 [
    i32 134, label %27
    i32 133, label %28
    i32 131, label %29
    i32 130, label %46
    i32 129, label %46
    i32 128, label %46
    i32 132, label %59
  ]

27:                                               ; preds = %7
  br label %84

28:                                               ; preds = %7
  br label %84

29:                                               ; preds = %7
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv* %30, %struct.ieee80211_vif* %31, %struct.ieee80211_sta* %32, i32 %33, i64 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %39, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %29
  br label %84

46:                                               ; preds = %7, %7, %7
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv* %47, %struct.ieee80211_vif* %48, %struct.ieee80211_sta* %49, i32 %50, i64 %51)
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %53, i32 %56, i64 %57)
  br label %84

59:                                               ; preds = %7
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %63, %struct.ath9k_htc_sta** %16, align 8
  %64 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %65 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_bh(i32* %66)
  %68 = load i32, i32* @AGGR_OPERATIONAL, align 4
  %69 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %16, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %75 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  br label %84

78:                                               ; preds = %7
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %80 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ath9k_hw_common(i32 %81)
  %83 = call i32 @ath_err(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %59, %46, %45, %28, %27
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %86 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %85)
  %87 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %15, align 8
  %88 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %17, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_err(i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
