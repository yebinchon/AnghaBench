; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32, i32*, i32 }

@IWL_MVM_OFFCHANNEL_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_TX_FIFO_VO = common dso_local global i32 0, align 4
@IWL_MVM_TX_FIFO_MCAST = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@iwl_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_ctxt_init(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 1
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call i32 @iwl_mvm_mac_ctxt_allocate_resources(%struct.iwl_mvm* %11, %struct.ieee80211_vif* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %38 [
    i32 128, label %22
    i32 129, label %29
  ]

22:                                               ; preds = %18
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IWL_MVM_OFFCHANNEL_QUEUE, align 4
  %27 = load i32, i32* @IWL_MVM_TX_FIFO_VO, align 4
  %28 = call i32 @iwl_trans_ac_txq_enable(i32 %25, i32 %26, i32 %27)
  br label %62

29:                                               ; preds = %18
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IWL_MVM_TX_FIFO_MCAST, align 4
  %37 = call i32 @iwl_trans_ac_txq_enable(i32 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %18, %29
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @iwl_mvm_ac_to_tx_fifo, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @iwl_trans_ac_txq_enable(i32 %46, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %43
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %39

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61, %22
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_allocate_resources(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_trans_ac_txq_enable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
