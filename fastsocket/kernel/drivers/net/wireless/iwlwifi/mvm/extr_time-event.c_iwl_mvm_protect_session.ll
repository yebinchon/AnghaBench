; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_protect_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_protect_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, %struct.iwl_mvm_time_event_data }
%struct.iwl_mvm_time_event_data = type { i64, i32, i64 }
%struct.iwl_time_event_cmd = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"We have enough time in the current TE: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"extend 0x%x: only %u ms left\0A\00", align 1
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@TE_BSS_STA_AGGRESSIVE_ASSOC = common dso_local global i32 0, align 4
@DEVICE_SYSTEM_TIME_REG = common dso_local global i32 0, align 4
@TE_INDEPENDENT = common dso_local global i32 0, align 4
@TE_FRAG_NONE = common dso_local global i32 0, align 4
@TE_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@TE_NOTIF_HOST_EVENT_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_protect_session(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %11 = alloca %struct.iwl_time_event_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %9, align 8
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %14, i32 0, i32 2
  store %struct.iwl_mvm_time_event_data* %15, %struct.iwl_mvm_time_event_data** %10, align 8
  %16 = bitcast %struct.iwl_time_event_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 104, i1 false)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 1
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @TU_TO_JIFFIES(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i64 @time_after(i64 %27, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %36 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @jiffies, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @jiffies_to_msecs(i64 %40)
  %42 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TE(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %114

43:                                               ; preds = %24, %4
  %44 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %50 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @jiffies, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @jiffies_to_msecs(i64 %57)
  %59 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TE(%struct.iwl_mvm* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %58)
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %62 = call i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm* %60, %struct.ieee80211_vif* %61)
  br label %63

63:                                               ; preds = %48, %43
  %64 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 12
  store i8* %65, i8** %66, align 8
  %67 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @FW_CMD_ID_AND_COLOR(i32 %69, i32 %72)
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 11
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @TE_BSS_STA_AGGRESSIVE_ASSOC, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 10
  store i8* %77, i8** %78, align 8
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DEVICE_SYSTEM_TIME_REG, align 4
  %83 = call i32 @iwl_read_prph(i32 %81, i32 %82)
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 9
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @TE_INDEPENDENT, align 4
  %87 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 8
  store i32 %86, i32* %87, align 8
  %88 = call i8* @cpu_to_le32(i32 1)
  %89 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 7
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* @TE_FRAG_NONE, align 4
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 6
  store i8* %91, i8** %92, align 8
  %93 = call i8* @cpu_to_le32(i32 500)
  %94 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 5
  store i8* %93, i8** %94, align 8
  %95 = call i8* @cpu_to_le32(i32 1)
  %96 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 4
  store i8* %95, i8** %96, align 8
  %97 = call i32 @iwl_mvm_reciprocal(i32 1)
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = call i8* @cpu_to_le32(i32 1)
  %104 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* @TE_NOTIF_HOST_EVENT_START, align 4
  %106 = load i32, i32* @TE_NOTIF_HOST_EVENT_END, align 4
  %107 = or i32 %105, %106
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %11, i32 0, i32 0
  store i8* %108, i8** %109, align 8
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %112 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %10, align 8
  %113 = call i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm* %110, %struct.ieee80211_vif* %111, %struct.iwl_mvm_time_event_data* %112, %struct.iwl_time_event_cmd* %11)
  br label %114

114:                                              ; preds = %63, %34
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @TU_TO_JIFFIES(i32) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_read_prph(i32, i32) #1

declare dso_local i32 @iwl_mvm_reciprocal(i32) #1

declare dso_local i32 @iwl_mvm_time_event_send_add(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
