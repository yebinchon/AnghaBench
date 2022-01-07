; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_check_ratid_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_check_ratid_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.iwl_tid_data**, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.iwl_tid_data = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [45 x i8] c"Can continue DELBA flow ssn = next_recl = %d\00", align 1
@IWL_AGG_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Can continue ADDBA flow ssn = next_recl = %d\00", align 1
@IWL_AGG_STARTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32, i64)* @iwlagn_check_ratid_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_check_ratid_empty(%struct.iwl_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_tid_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca i64*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 1
  %13 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %13, i64 %15
  %17 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %17, i64 %18
  store %struct.iwl_tid_data* %19, %struct.iwl_tid_data** %7, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 4
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %10, align 8
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %47, align 8
  store %struct.ieee80211_vif* %48, %struct.ieee80211_vif** %9, align 8
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 1
  %51 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %51, i64 %53
  %55 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %55, i64 %56
  %58 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %123 [
    i32 128, label %61
    i32 129, label %99
  ]

61:                                               ; preds = %3
  %62 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %67 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %61
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %72 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @iwl_trans_txq_disable(i32 %78, i32 %82)
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %85 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %86 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @iwlagn_dealloc_agg_txq(%struct.iwl_priv* %84, i32 %88)
  %90 = load i32, i32* @IWL_AGG_OFF, align 4
  %91 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %94, i64* %95, i64 %96)
  br label %98

98:                                               ; preds = %70, %61
  br label %124

99:                                               ; preds = %3
  %100 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %105 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %110 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %111 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %109, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @IWL_AGG_STARTING, align 4
  %115 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %7, align 8
  %116 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %119 = load i64*, i64** %10, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %118, i64* %119, i64 %120)
  br label %122

122:                                              ; preds = %108, %99
  br label %124

123:                                              ; preds = %3
  br label %124

124:                                              ; preds = %123, %122, %98
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_trans_txq_disable(i32, i32) #1

declare dso_local i32 @iwlagn_dealloc_agg_txq(%struct.iwl_priv*, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i64*, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
