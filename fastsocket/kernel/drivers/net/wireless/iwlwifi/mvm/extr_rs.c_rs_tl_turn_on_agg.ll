; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tl_turn_on_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_tl_turn_on_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"tid exceeds max TID count: %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i64, %struct.iwl_lq_sta*, %struct.ieee80211_sta*)* @rs_tl_turn_on_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_tl_turn_on_agg(%struct.iwl_mvm* %0, i64 %1, %struct.iwl_lq_sta* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %14 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %17 = call i32 @rs_tl_turn_on_agg_for_tid(%struct.iwl_mvm* %13, %struct.iwl_lq_sta* %14, i64 %15, %struct.ieee80211_sta* %16)
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %22 = call i32 @IWL_ERR(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @rs_tl_turn_on_agg_for_tid(%struct.iwl_mvm*, %struct.iwl_lq_sta*, i64, %struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
