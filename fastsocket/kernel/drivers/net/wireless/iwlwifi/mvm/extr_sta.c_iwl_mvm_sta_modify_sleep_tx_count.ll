; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_sleep_tx_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_sleep_tx_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i32, i32, i32, i32, i32 }

@IEEE80211_FRAME_RELEASE_UAPSD = common dso_local global i32 0, align 4
@STA_SLEEP_STATE_UAPSD = common dso_local global i32 0, align 4
@STA_SLEEP_STATE_PS_POLL = common dso_local global i32 0, align 4
@STA_MODIFY_SLEEPING_STA_TX_COUNT = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send ADD_STA command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sta_modify_sleep_tx_count(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_mvm_add_sta_cmd, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IEEE80211_FRAME_RELEASE_UAPSD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @STA_SLEEP_STATE_UAPSD, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @STA_SLEEP_STATE_PS_POLL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %26, %struct.iwl_mvm_sta** %10, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 1
  %31 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 2
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 3
  %39 = load i32, i32* @STA_MODIFY_SLEEPING_STA_TX_COUNT, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 4
  %41 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 5
  %45 = load i32, i32* @STA_MODE_MODIFY, align 4
  store i32 %45, i32* %44, align 4
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = load i32, i32* @ADD_STA, align 4
  %48 = load i32, i32* @CMD_ASYNC, align 4
  %49 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %46, i32 %47, i32 %48, i32 24, %struct.iwl_mvm_add_sta_cmd* %11)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %20
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @IWL_ERR(%struct.iwl_mvm* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %20
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mvm_add_sta_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
