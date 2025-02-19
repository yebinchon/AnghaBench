; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_send_bt_env.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_send_bt_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_bt_coex_prot_env_cmd = type { i8*, i8* }

@BT_COEX_PROT_ENV = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to send BT env command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i8*, i8*)* @iwl_send_bt_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_bt_env(%struct.iwl_mvm* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iwl_bt_coex_prot_env_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_bt_coex_prot_env_cmd, %struct.iwl_bt_coex_prot_env_cmd* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_bt_coex_prot_env_cmd, %struct.iwl_bt_coex_prot_env_cmd* %7, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %14 = load i32, i32* @BT_COEX_PROT_ENV, align 4
  %15 = load i32, i32* @CMD_SYNC, align 4
  %16 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %13, i32 %14, i32 %15, i32 16, %struct.iwl_bt_coex_prot_env_cmd* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %21 = call i32 @IWL_ERR(%struct.iwl_mvm* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_bt_coex_prot_env_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
