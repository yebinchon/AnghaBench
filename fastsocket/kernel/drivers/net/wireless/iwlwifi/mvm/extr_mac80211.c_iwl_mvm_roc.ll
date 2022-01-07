; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_roc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.iwl_mvm = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vif isn't a P2P_DEVICE: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"enter (%d, %d, %d)\0A\00", align 1
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @iwl_mvm_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_roc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm*, align 8
  %13 = alloca %struct.cfg80211_chan_def, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %15)
  store %struct.iwl_mvm* %16, %struct.iwl_mvm** %12, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IWL_ERR(%struct.iwl_mvm* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %59

30:                                               ; preds = %5
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %42 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %43 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %13, %struct.ieee80211_channel* %41, i32 %42)
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 1
  %47 = call i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %44, i32* %46, %struct.cfg80211_chan_def* %13, i32 1, i32 1)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @iwl_mvm_start_p2p_roc(%struct.iwl_mvm* %48, %struct.ieee80211_vif* %49, i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %57 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %30, %22
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm*, i32*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @iwl_mvm_start_p2p_roc(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
