; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_ps_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_modify_ps_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i32, i32, i32 }

@STA_FLG_PS = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send ADD_STA command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_sta_modify_ps_wake(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca %struct.iwl_mvm_add_sta_cmd, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %12, %struct.iwl_mvm_sta** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 0
  %14 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 1
  %19 = load i32, i32* @STA_FLG_PS, align 4
  %20 = call i32 @cpu_to_le32(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 2
  %22 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %6, i32 0, i32 3
  %26 = load i32, i32* @STA_MODE_MODIFY, align 4
  store i32 %26, i32* %25, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = load i32, i32* @ADD_STA, align 4
  %29 = load i32, i32* @CMD_ASYNC, align 4
  %30 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %27, i32 %28, i32 %29, i32 16, %struct.iwl_mvm_add_sta_cmd* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @IWL_ERR(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_mvm_add_sta_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
