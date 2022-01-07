; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_power.c_iwl_mvm_power_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_power.c_iwl_mvm_power_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_powertable_cmd = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@iwlmvm_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IWL_POWER_SCHEME_CAM = common dso_local global i64 0, align 8
@POWER_FLAGS_POWER_SAVE_ENA_MSK = common dso_local global i32 0, align 4
@POWER_TABLE_CMD = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_power_disable(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_powertable_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = bitcast %struct.iwl_powertable_cmd* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %36

19:                                               ; preds = %13
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %21 = load i64, i64* @IWL_POWER_SCHEME_CAM, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @POWER_FLAGS_POWER_SAVE_ENA_MSK, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %31 = call i32 @iwl_mvm_power_log(%struct.iwl_mvm* %30, %struct.iwl_powertable_cmd* %6)
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = load i32, i32* @POWER_TABLE_CMD, align 4
  %34 = load i32, i32* @CMD_ASYNC, align 4
  %35 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %32, i32 %33, i32 %34, i32 4, %struct.iwl_powertable_cmd* %6)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @iwl_mvm_power_log(%struct.iwl_mvm*, %struct.iwl_powertable_cmd*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_powertable_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
