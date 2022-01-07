; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tl_turn_on_agg_for_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tl_turn_on_agg_for_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.ieee80211_sta = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IWL_AGG_LOAD_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Starting Tx agg: STA: %pM tid: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Fail start Tx agg on tid: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Aggregation not enabled for tid %d because load = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, i64, %struct.ieee80211_sta*)* @rs_tl_turn_on_agg_for_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tl_turn_on_agg_for_tid(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, i64 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_lq_sta*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @rs_tl_get_load(%struct.iwl_lq_sta* %13, i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @IWL_AGG_LOAD_THRESHOLD, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18, %4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @IWL_DEBUG_HT(%struct.iwl_mvm* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %29, i64 %30, i32 5000)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @IWL_ERR(%struct.iwl_mvm* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @ieee80211_stop_tx_ba_session(%struct.ieee80211_sta* %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %22
  br label %49

44:                                               ; preds = %18
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @IWL_DEBUG_HT(%struct.iwl_mvm* %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %43
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i64 @rs_tl_get_load(%struct.iwl_lq_sta*, i64) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_mvm*, i8*, i64, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_session(%struct.ieee80211_sta*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
