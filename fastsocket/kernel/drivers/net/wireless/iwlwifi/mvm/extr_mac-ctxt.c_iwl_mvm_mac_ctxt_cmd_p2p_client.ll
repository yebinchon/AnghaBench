; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_p2p_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_p2p_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_p2p_noa_attr }
%struct.ieee80211_p2p_noa_attr = type { i32 }
%struct.iwl_mac_ctx_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_CTWINDOW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_mac_ctxt_cmd_p2p_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_cmd_p2p_client(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mac_ctx_cmd, align 4
  %8 = alloca %struct.ieee80211_p2p_noa_attr*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.iwl_mac_ctx_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ieee80211_p2p_noa_attr* %12, %struct.ieee80211_p2p_noa_attr** %8, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ true, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm* %28, %struct.ieee80211_vif* %29, %struct.iwl_mac_ctx_cmd* %7, i32 %30)
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @iwl_mvm_mac_ctxt_cmd_fill_sta(%struct.iwl_mvm* %32, %struct.ieee80211_vif* %33, i32* %35, i32 %39)
  %41 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_P2P_OPPPS_CTWINDOW_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, %struct.iwl_mac_ctx_cmd* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %50 = call i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm* %49, %struct.iwl_mac_ctx_cmd* %7)
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_common(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_ctx_cmd*, i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_fill_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32*, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @iwl_mvm_mac_ctxt_send_cmd(%struct.iwl_mvm*, %struct.iwl_mac_ctx_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
