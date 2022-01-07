; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_rx_tx_cmd_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.iwl_rx_packet = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_tx_resp = type { i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IWL_MVM_FIRST_AGG_QUEUE = common dso_local global i64 0, align 8
@IWL_TID_NON_QOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_rx_packet*)* @iwl_mvm_rx_tx_cmd_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_rx_tx_cmd_agg(%struct.iwl_mvm* %0, %struct.iwl_rx_packet* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca %struct.iwl_mvm_tx_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %4, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_mvm_tx_resp*
  store %struct.iwl_mvm_tx_resp* %15, %struct.iwl_mvm_tx_resp** %5, align 8
  %16 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IWL_MVM_TX_RES_GET_RA(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IWL_MVM_TX_RES_GET_TID(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @SEQ_TO_QUEUE(i32 %29)
  %31 = load i64, i64* @IWL_MVM_FIRST_AGG_QUEUE, align 8
  %32 = icmp slt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %81

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IWL_TID_NON_QOS, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %81

45:                                               ; preds = %37
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %48 = call i32 @iwl_mvm_rx_tx_cmd_agg_dbg(%struct.iwl_mvm* %46, %struct.iwl_rx_packet* %47)
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.ieee80211_sta* @rcu_dereference(i32 %56)
  store %struct.ieee80211_sta* %57, %struct.ieee80211_sta** %9, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %59 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %58)
  %60 = call i64 @WARN_ON_ONCE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %45
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = bitcast i8* %66 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %67, %struct.iwl_mvm_sta** %10, align 8
  %68 = load %struct.iwl_mvm_tx_resp*, %struct.iwl_mvm_tx_resp** %5, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_tx_resp, %struct.iwl_mvm_tx_resp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %62, %45
  %80 = call i32 (...) @rcu_read_unlock()
  br label %81

81:                                               ; preds = %79, %44, %36
  ret void
}

declare dso_local i32 @IWL_MVM_TX_RES_GET_RA(i32) #1

declare dso_local i32 @IWL_MVM_TX_RES_GET_TID(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @SEQ_TO_QUEUE(i32) #1

declare dso_local i32 @iwl_mvm_rx_tx_cmd_agg_dbg(%struct.iwl_mvm*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
