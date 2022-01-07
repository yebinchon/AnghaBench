; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_agg_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_agg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, %struct.iwl_tid_data** }
%struct.iwl_tid_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_INVALID_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid station for AGG tid %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"AGG stop before setup done\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"AGG stop before AGG became operational\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Stopping AGG while state not ON or starting for %d on %d (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"stopping AGG on STA/TID %d/%d but hwq %d not used\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Can't proceed: ssn %d, next_recl = %d\0A\00", align 1
@IWL_EMPTYING_HW_QUEUE_DELBA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Can proceed: ssn = next_recl = %d\0A\00", align 1
@IWL_AGG_OFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Don't disable tx agg: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_tx_agg_stop(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iwl_tid_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %15 = call i32 @iwl_sta_id(%struct.ieee80211_sta* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @IWL_INVALID_STATION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @IWL_ERR(%struct.iwl_priv* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %161

25:                                               ; preds = %4
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 3
  %31 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %31, i64 %33
  %35 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %35, i64 %36
  store %struct.iwl_tid_data* %37, %struct.iwl_tid_data** %10, align 8
  %38 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %39 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %43 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %53 [
    i32 128, label %46
    i32 129, label %49
    i32 130, label %52
  ]

46:                                               ; preds = %25
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %48 = call i32 @IWL_DEBUG_HT(%struct.iwl_priv* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %119

49:                                               ; preds = %25
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %51 = call i32 @IWL_DEBUG_HT(%struct.iwl_priv* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %119

52:                                               ; preds = %25
  br label %65

53:                                               ; preds = %25
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %58 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IWL_WARN(%struct.iwl_priv* %54, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %55, i64 %56, i32 %60)
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock_bh(i32* %63)
  store i32 0, i32* %5, align 4
  br label %161

65:                                               ; preds = %52
  %66 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %67 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IEEE80211_SEQ_TO_SN(i32 %68)
  %70 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %71 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @test_bit(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %65
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %81, i64 %82, i32 %83)
  br label %112

85:                                               ; preds = %65
  %86 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %87 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %91 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %85
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %96 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %97 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %101 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load i32, i32* @IWL_EMPTYING_HW_QUEUE_DELBA, align 4
  %105 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %106 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 2
  %110 = call i32 @spin_unlock_bh(i32* %109)
  store i32 0, i32* %5, align 4
  br label %161

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %111, %79
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %114 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %115 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %112, %49, %46
  %120 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %121 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* @IWL_AGG_OFF, align 4
  %125 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %10, align 8
  %126 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %129 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %128, i32 0, i32 2
  %130 = call i32 @spin_unlock_bh(i32* %129)
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %133 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @test_bit(i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %119
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 130
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %142 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @iwl_trans_txq_disable(i32 %143, i32 %144)
  br label %150

146:                                              ; preds = %137
  %147 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %140
  %151 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @iwlagn_dealloc_agg_txq(%struct.iwl_priv* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %119
  %155 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %156 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %157 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %9, align 8
  %160 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %155, i32 %158, i64 %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %154, %94, %53, %19
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @iwl_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, i32, ...) #1

declare dso_local i32 @iwl_trans_txq_disable(i32, i32) #1

declare dso_local i32 @iwlagn_dealloc_agg_txq(%struct.iwl_priv*, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
