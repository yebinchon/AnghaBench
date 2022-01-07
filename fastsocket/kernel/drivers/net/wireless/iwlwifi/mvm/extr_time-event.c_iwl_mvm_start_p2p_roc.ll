; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_start_p2p_roc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_start_p2p_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.iwl_mvm_time_event_data }
%struct.iwl_mvm_time_event_data = type { i64 }
%struct.iwl_time_event_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"P2P_DEVICE remain on channel already running\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@IWL_MVM_ROC_TE_TYPE_NORMAL = common dso_local global i32 0, align 4
@IWL_MVM_ROC_TE_TYPE_MGMT_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Got an invalid ROC type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TE_INDEPENDENT = common dso_local global i32 0, align 4
@TE_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@TE_NOTIF_HOST_EVENT_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_start_p2p_roc(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %12 = alloca %struct.iwl_time_event_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %10, align 8
  %15 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %15, i32 0, i32 2
  store %struct.iwl_mvm_time_event_data* %16, %struct.iwl_mvm_time_event_data** %11, align 8
  %17 = bitcast %struct.iwl_time_event_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 96, i1 false)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %27 = call i32 @IWL_WARN(%struct.iwl_mvm* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %94

30:                                               ; preds = %4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = call i32 @flush_work(i32* %32)
  %34 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 11
  store i8* %35, i8** %36, align 8
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @FW_CMD_ID_AND_COLOR(i32 %39, i32 %42)
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 10
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %55 [
    i32 128, label %47
    i32 129, label %51
  ]

47:                                               ; preds = %30
  %48 = load i32, i32* @IWL_MVM_ROC_TE_TYPE_NORMAL, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 9
  store i8* %49, i8** %50, align 8
  br label %59

51:                                               ; preds = %30
  %52 = load i32, i32* @IWL_MVM_ROC_TE_TYPE_MGMT_TX, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 9
  store i8* %53, i8** %54, align 8
  br label %59

55:                                               ; preds = %30
  %56 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %94

59:                                               ; preds = %51, %47
  %60 = call i8* @cpu_to_le32(i32 0)
  %61 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 8
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @TE_INDEPENDENT, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 7
  store i8* %63, i8** %64, align 8
  %65 = call i8* @cpu_to_le32(i32 1)
  %66 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 6
  store i8* %65, i8** %66, align 8
  %67 = call i8* @cpu_to_le32(i32 1)
  %68 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 5
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @MSEC_TO_TU(i32 %69)
  %71 = sdiv i32 %70, 20
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 4
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, 2
  %76 = call i32 @MSEC_TO_TU(i32 %75)
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 3
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @MSEC_TO_TU(i32 %79)
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = call i8* @cpu_to_le32(i32 1)
  %84 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @TE_NOTIF_HOST_EVENT_START, align 4
  %86 = load i32, i32* @TE_NOTIF_HOST_EVENT_END, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %12, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %91 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %92 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %11, align 8
  %93 = call i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %90, %struct.ieee80211_vif* %91, %struct.iwl_mvm_time_event_data* %92, %struct.iwl_time_event_cmd* %12)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %59, %55, %25
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @MSEC_TO_TU(i32) #1

declare dso_local i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
