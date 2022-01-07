; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_listener.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mac_ctx_cmd = type { i32 }

@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@MAC_FILTER_IN_PROMISC = common dso_local global i32 0, align 4
@MAC_FILTER_IN_CONTROL_AND_MGMT = common dso_local global i32 0, align 4
@MAC_FILTER_IN_BEACON = common dso_local global i32 0, align 4
@MAC_FILTER_IN_PROBE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_mac_ctxt_cmd_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_cmd_listener(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mac_ctx_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.iwl_mac_ctx_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm* %16, %struct.ieee80211_vif* %17, %struct.iwl_mac_ctx_cmd* %7, i32 %18)
  %20 = load i32, i32* @MAC_FILTER_IN_PROMISC, align 4
  %21 = load i32, i32* @MAC_FILTER_IN_CONTROL_AND_MGMT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAC_FILTER_IN_BEACON, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAC_FILTER_IN_PROBE_REQUEST, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = call i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm* %29, %struct.iwl_mac_ctx_cmd* %7)
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_ctx_cmd*, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm*, %struct.iwl_mac_ctx_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
