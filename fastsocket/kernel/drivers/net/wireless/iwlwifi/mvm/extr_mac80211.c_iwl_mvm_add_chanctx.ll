; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_add_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_add_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, i32, i64 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Add PHY context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_chanctx_conf*)* @iwl_mvm_add_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_add_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_chanctx_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_chanctx_conf* %1, %struct.ieee80211_chanctx_conf** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_mvm_phy_ctxt*
  store %struct.iwl_mvm_phy_ctxt* %14, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %21 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %6, align 8
  %22 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %22, i32 0, i32 2
  %24 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm* %20, %struct.iwl_mvm_phy_ctxt* %21, i32* %23, i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm*, %struct.iwl_mvm_phy_ctxt*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
