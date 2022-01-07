; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_tx_aggr_oper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_tx_aggr_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_aggr = type { i32, i32, i32 }
%struct.ath9k_htc_sta = type { i32*, i32 }

@ATH9K_HTC_MAX_TID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_AMPDU_TX_START = common dso_local global i32 0, align 4
@WMI_TX_AGGR_ENABLE_CMDID = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to %s TX aggregation for (%pM, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s TX aggregation for (%pM, %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Starting\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Stopping\00", align 1
@AGGR_START = common dso_local global i32 0, align 4
@AGGR_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32)* @ath9k_htc_tx_aggr_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_tx_aggr_oper(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_common*, align 8
  %13 = alloca %struct.ath9k_htc_target_aggr, align 4
  %14 = alloca %struct.ath9k_htc_sta*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ath_common* @ath9k_hw_common(i32 %19)
  store %struct.ath_common* %20, %struct.ath_common** %12, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ATH9K_HTC_MAX_TID, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %104

27:                                               ; preds = %5
  %28 = call i32 @memset(%struct.ath9k_htc_target_aggr* %13, i32 0, i32 12)
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %32, %struct.ath9k_htc_sta** %14, align 8
  %33 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %14, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_target_aggr, %struct.ath9k_htc_target_aggr* %13, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 15
  %39 = getelementptr inbounds %struct.ath9k_htc_target_aggr, %struct.ath9k_htc_target_aggr* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IEEE80211_AMPDU_TX_START, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = getelementptr inbounds %struct.ath9k_htc_target_aggr, %struct.ath9k_htc_target_aggr* %13, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @WMI_TX_AGGR_ENABLE_CMDID, align 4
  %47 = call i32 @WMI_CMD_BUF(i32 %46, %struct.ath9k_htc_target_aggr* %13)
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %27
  %51 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %52 = load i32, i32* @CONFIG, align 4
  %53 = getelementptr inbounds %struct.ath9k_htc_target_aggr, %struct.ath9k_htc_target_aggr* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ath_dbg(%struct.ath_common* %51, i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %60, i32 %61)
  br label %76

63:                                               ; preds = %27
  %64 = load %struct.ath_common*, %struct.ath_common** %12, align 8
  %65 = load i32, i32* @CONFIG, align 4
  %66 = getelementptr inbounds %struct.ath9k_htc_target_aggr, %struct.ath9k_htc_target_aggr* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @ath_dbg(%struct.ath_common* %64, i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %70, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %50
  %77 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %78 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = getelementptr inbounds %struct.ath9k_htc_target_aggr, %struct.ath9k_htc_target_aggr* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @AGGR_START, align 4
  br label %91

89:                                               ; preds = %84, %76
  %90 = load i32, i32* @AGGR_STOP, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %14, align 8
  %94 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %100 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_bh(i32* %101)
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %91, %24
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_aggr*, i32, i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_aggr*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
