; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_configure_mcast_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_configure_mcast_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mcast_filter_cmd = type { i32, i32 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__const.iwl_mvm_configure_mcast_filter.mcast_filter_cmd = private unnamed_addr constant %struct.iwl_mcast_filter_cmd { i32 1, i32 0 }, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MCAST_FILTER_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_configure_mcast_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_configure_mcast_filter(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mcast_filter_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = bitcast %struct.iwl_mcast_filter_cmd* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.iwl_mcast_filter_cmd* @__const.iwl_mvm_configure_mcast_filter.mcast_filter_cmd to i8*), i64 8, i1 false)
  %7 = getelementptr inbounds %struct.iwl_mcast_filter_cmd, %struct.iwl_mcast_filter_cmd* %5, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = call i32 @memcpy(i32 %8, i32 %12, i32 %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = load i32, i32* @MCAST_FILTER_CMD, align 4
  %17 = load i32, i32* @CMD_SYNC, align 4
  %18 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %15, i32 %16, i32 %17, i32 8, %struct.iwl_mcast_filter_cmd* %5)
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mcast_filter_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
