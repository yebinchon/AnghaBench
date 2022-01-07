; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32, i32, %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Flush AGG: sta %d tid %d q %d state %d\0A\00", align 1
@IWL_AGG_OFF = common dso_local global i32 0, align 4
@IWL_AGG_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't flush the AGG queue\0A\00", align 1
@IWL_INVALID_MAC80211_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sta_tx_agg_flush(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca %struct.iwl_mvm_tid_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %17, %struct.iwl_mvm_sta** %9, align 8
  %18 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %18, i32 0, i32 2
  %20 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %20, i64 %21
  store %struct.iwl_mvm_tid_data* %22, %struct.iwl_mvm_tid_data** %10, align 8
  %23 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %10, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %30 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %10, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, i64 %34, i32 %37)
  %39 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %10, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @IWL_AGG_OFF, align 4
  %43 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %10, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @IWL_AGG_ON, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %4
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @BIT(i64 %53)
  %55 = call i64 @iwl_mvm_flush_tx_path(%struct.iwl_mvm* %52, i32 %54, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %59 = call i32 @IWL_ERR(%struct.iwl_mvm* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %10, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @iwl_trans_txq_disable(i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %60, %4
  %69 = load i32, i32* @IWL_INVALID_MAC80211_QUEUE, align 4
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %10, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @iwl_mvm_flush_tx_path(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_trans_txq_disable(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
