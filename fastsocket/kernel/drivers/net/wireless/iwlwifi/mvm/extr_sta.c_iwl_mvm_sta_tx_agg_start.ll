; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_tx_agg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64*, i32 }
%struct.ieee80211_vif = type { i64* }
%struct.ieee80211_sta = type { i32, i64 }
%struct.iwl_mvm_sta = type { i32, i32, %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64, i64, i32, i64, i32 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Start AGG when state is not IWL_AGG_OFF %d!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IWL_MVM_FIRST_AGG_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_LAST_AGG_QUEUE = common dso_local global i32 0, align 4
@IWL_INVALID_MAC80211_QUEUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate agg queue\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@tid_to_ac = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"Start AGG: sta %d tid %d queue %d - ssn = %d, next_recl = %d\0A\00", align 1
@IWL_AGG_STARTING = common dso_local global i64 0, align 8
@IWL_EMPTYING_HW_QUEUE_ADDBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sta_tx_agg_start(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca %struct.iwl_mvm_tid_data*, align 8
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %19, %struct.iwl_mvm_sta** %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %22 = icmp uge i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %159

29:                                               ; preds = %5
  %30 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %30, i32 0, i32 2
  %32 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %32, i64 %33
  %35 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IWL_AGG_OFF, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %41 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %41, i32 0, i32 2
  %43 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %43, i64 %44
  %46 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %159

51:                                               ; preds = %29
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 1
  %54 = call i32 @lockdep_assert_held(i32* %53)
  %55 = load i32, i32* @IWL_MVM_FIRST_AGG_QUEUE, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %72, %51
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @IWL_MVM_LAST_AGG_QUEUE, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IWL_INVALID_MAC80211_QUEUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %75

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %56

75:                                               ; preds = %70, %56
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @IWL_MVM_LAST_AGG_QUEUE, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %81 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %159

84:                                               ; preds = %75
  %85 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64*, i64** @tid_to_ac, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %93, i64* %99, align 8
  %100 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %100, i32 0, i32 0
  %102 = call i32 @spin_lock_bh(i32* %101)
  %103 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %103, i32 0, i32 2
  %105 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %105, i64 %106
  store %struct.iwl_mvm_tid_data* %107, %struct.iwl_mvm_tid_data** %13, align 8
  %108 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IEEE80211_SEQ_TO_SN(i32 %110)
  %112 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %11, align 8
  store i64 %119, i64* %120, align 8
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %122 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %10, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %128 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %131 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %121, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %124, i64 %125, i32 %126, i64 %129, i64 %132)
  %134 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %84
  %142 = load i64, i64* @IWL_AGG_STARTING, align 8
  %143 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %144 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %146 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %145, i32 %148, i64 %149)
  br label %155

151:                                              ; preds = %84
  %152 = load i64, i64* @IWL_EMPTYING_HW_QUEUE_ADDBA, align 8
  %153 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %13, align 8
  %154 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %151, %141
  %156 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %157 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %156, i32 0, i32 0
  %158 = call i32 @spin_unlock_bh(i32* %157)
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %155, %79, %39, %26
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, i64, i32, i64, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
