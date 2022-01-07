; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IWL_MVM_STATUS_HW_RFKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Dropping - RF KILL\0A\00", align 1
@IWL_MVM_OFFCHANNEL_QUEUE = common dso_local global i64 0, align 8
@IWL_MVM_STATUS_ROC_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @iwl_mvm_mac_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %7, align 8
  %10 = load i32, i32* @IWL_MVM_STATUS_HW_RFKILL, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %17 = call i32 @IWL_DEBUG_DROP(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IWL_MVM_OFFCHANNEL_QUEUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @IWL_MVM_STATUS_ROC_RUNNING, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %54

32:                                               ; preds = %25, %18
  %33 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @iwl_mvm_tx_skb(%struct.iwl_mvm* %38, %struct.sk_buff* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %54

46:                                               ; preds = %37
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i64 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm* %48, %struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %54

53:                                               ; preds = %47
  br label %58

54:                                               ; preds = %52, %45, %31, %15
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %55, %struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %54, %53, %46
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.TYPE_2__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @iwl_mvm_tx_skb(%struct.iwl_mvm*, %struct.sk_buff*, i32) #1

declare dso_local i64 @iwl_mvm_tx_skb_non_sta(%struct.iwl_mvm*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
