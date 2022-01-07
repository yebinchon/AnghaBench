; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_remove_time_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_remove_time_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_mvm_time_event_data = type { i64, i64 }
%struct.iwl_time_event_cmd = type { i8*, i8*, i8* }

@TE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"TE 0x%x has already ended\0A\00", align 1
@FW_CTXT_ACTION_REMOVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Removing TE 0x%x\0A\00", align 1
@TIME_EVENT_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_remove_time_event(%struct.iwl_mvm* %0, %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_time_event_data* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %7 = alloca %struct.iwl_time_event_cmd, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_vif* %1, %struct.iwl_mvm_vif** %5, align 8
  store %struct.iwl_mvm_time_event_data* %2, %struct.iwl_mvm_time_event_data** %6, align 8
  %11 = bitcast %struct.iwl_time_event_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %23 = call i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm* %21, %struct.iwl_mvm_time_event_data* %22)
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @TE_MAX, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %63

34:                                               ; preds = %3
  %35 = load i64, i64* %9, align 8
  %36 = call i8* @cpu_to_le32(i64 %35)
  %37 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load i64, i64* @FW_CTXT_ACTION_REMOVE, align 8
  %39 = call i8* @cpu_to_le32(i64 %38)
  %40 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @FW_CMD_ID_AND_COLOR(i32 %43, i32 %46)
  %48 = call i8* @cpu_to_le32(i64 %47)
  %49 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_time_event_cmd, %struct.iwl_time_event_cmd* %7, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @le32_to_cpu(i8* %52)
  %54 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %56 = load i32, i32* @TIME_EVENT_CMD, align 4
  %57 = load i32, i32* @CMD_SYNC, align 4
  %58 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %55, i32 %56, i32 %57, i32 24, %struct.iwl_time_event_cmd* %7)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %30, %62, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i64) #2

declare dso_local i8* @cpu_to_le32(i64) #2

declare dso_local i64 @FW_CMD_ID_AND_COLOR(i32, i32) #2

declare dso_local i64 @le32_to_cpu(i8*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_time_event_cmd*) #2

declare dso_local i64 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
