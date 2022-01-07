; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@FW_CTXT_ACTION_MODIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_phy_ctxt_changed(%struct.iwl_mvm* %0, %struct.iwl_mvm_phy_ctxt* %1, %struct.cfg80211_chan_def* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_mvm_phy_ctxt* %1, %struct.iwl_mvm_phy_ctxt** %7, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %20 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %7, align 8
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @FW_CTXT_ACTION_MODIFY, align 4
  %25 = call i32 @iwl_mvm_phy_ctxt_apply(%struct.iwl_mvm* %19, %struct.iwl_mvm_phy_ctxt* %20, %struct.cfg80211_chan_def* %21, i32 %22, i32 %23, i32 %24, i32 0)
  ret i32 %25
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_apply(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, %struct.cfg80211_chan_def*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
