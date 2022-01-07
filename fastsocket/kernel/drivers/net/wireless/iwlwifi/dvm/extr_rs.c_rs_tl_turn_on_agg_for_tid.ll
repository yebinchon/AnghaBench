; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_tl_turn_on_agg_for_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_tl_turn_on_agg_for_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_priv = type { i64 }
%struct.iwl_lq_sta = type { i32 }
%struct.ieee80211_sta = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"BT traffic (%d), no aggregation allowed\0A\00", align 1
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IWL_AGG_LOAD_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Starting Tx agg: STA: %pM tid: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Fail start Tx agg on tid: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Aggregation not enabled for tid %d because load = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, i64, %struct.ieee80211_sta*)* @rs_tl_turn_on_agg_for_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tl_turn_on_agg_for_tid(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, i64 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @IWL_DEBUG_COEX(%struct.iwl_priv* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %4
  %27 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @rs_tl_get_load(%struct.iwl_lq_sta* %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @IWL_AGG_LOAD_THRESHOLD, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32, %26
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @IWL_DEBUG_HT(%struct.iwl_priv* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %43, i64 %44, i32 5000)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @IWL_ERR(%struct.iwl_priv* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @ieee80211_stop_tx_ba_session(%struct.ieee80211_sta* %54, i64 %55)
  br label %57

57:                                               ; preds = %50, %36
  br label %63

58:                                               ; preds = %32
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @IWL_DEBUG_HT(%struct.iwl_priv* %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %19
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i64 @rs_tl_get_load(%struct.iwl_lq_sta*, i64) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_priv*, i8*, i64, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_session(%struct.ieee80211_sta*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
