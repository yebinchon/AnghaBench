; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_agg_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_agg_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, %struct.iwl_tid_data** }
%struct.iwl_tid_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Flush AGG: sta %d tid %d q %d state %d\0A\00", align 1
@IWL_AGG_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Couldn't flush the AGG queue\0A\00", align 1
@IWL_AGG_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Don't disable tx agg: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_tx_agg_flush(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwl_tid_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = call i32 @iwl_sta_id(%struct.ieee80211_sta* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 3
  %20 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %20, i64 %22
  %24 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %24, i64 %25
  store %struct.iwl_tid_data* %26, %struct.iwl_tid_data** %9, align 8
  %27 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %9, align 8
  %28 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %9, align 8
  %32 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %9, align 8
  %40 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i32 %38, i32 %42)
  %44 = load i32, i32* @IWL_AGG_OFF, align 4
  %45 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %9, align 8
  %46 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = call i64 @iwlagn_txfifo_flush(%struct.iwl_priv* %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %4
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %58 = call i32 @IWL_ERR(%struct.iwl_priv* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @test_bit(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @IWL_AGG_ON, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @iwl_trans_txq_disable(i32 %73, i32 %74)
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @iwlagn_dealloc_agg_txq(%struct.iwl_priv* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %59
  ret i32 0
}

declare dso_local i32 @iwl_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @iwlagn_txfifo_flush(%struct.iwl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @iwl_trans_txq_disable(i32, i32) #1

declare dso_local i32 @iwlagn_dealloc_agg_txq(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
