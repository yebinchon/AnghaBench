; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.iwl_mvm_sta = type { i32, i32, %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64, i32, i32, i32, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Stop AGG: sta %d tid %d q %d state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ssn = %d, next_recl = %d\0A\00", align 1
@IWL_EMPTYING_HW_QUEUE_DELBA = common dso_local global i32 0, align 4
@IWL_INVALID_MAC80211_QUEUE = common dso_local global i32 0, align 4
@IWL_AGG_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Stopping AGG while state not ON or starting for %d on %d (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09tid_data->txq_id = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sta_tx_agg_stop(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_mvm_tid_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %18, %struct.iwl_mvm_sta** %10, align 8
  %19 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %19, i32 0, i32 2
  %21 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %21, i64 %22
  store %struct.iwl_mvm_tid_data* %23, %struct.iwl_mvm_tid_data** %11, align 8
  %24 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 3
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %30, i32 %33, i64 %34)
  store i32 0, i32* %5, align 4
  br label %133

36:                                               ; preds = %4
  %37 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %44 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48, i64 %49, i32 %52)
  %54 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %110 [
    i32 130, label %57
    i32 129, label %91
    i32 128, label %91
  ]

57:                                               ; preds = %36
  %58 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IEEE80211_SEQ_TO_SN(i32 %60)
  %62 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %65 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load i32, i32* @IWL_EMPTYING_HW_QUEUE_DELBA, align 4
  %81 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %13, align 4
  br label %128

83:                                               ; preds = %57
  %84 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %84, i32 0, i32 2
  store i32 65535, i32* %85, align 4
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @iwl_trans_txq_disable(i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %36, %36, %83
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %92, i32 0, i32 1
  %94 = call i32 @lockdep_assert_held(i32* %93)
  %95 = load i32, i32* @IWL_INVALID_MAC80211_QUEUE, align 4
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %101, i32 %104, i64 %105)
  %107 = load i32, i32* @IWL_AGG_OFF, align 4
  %108 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  store i32 0, i32* %13, align 4
  br label %128

110:                                              ; preds = %36
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %112 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_ERR(%struct.iwl_mvm* %111, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %115, i64 %116, i32 %119)
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %122 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_ERR(%struct.iwl_mvm* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %110, %91, %79
  %129 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %128, %29
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, i32, ...) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @iwl_trans_txq_disable(i32, i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
