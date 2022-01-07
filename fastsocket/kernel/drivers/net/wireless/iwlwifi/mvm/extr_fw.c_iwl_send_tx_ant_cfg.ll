; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_send_tx_ant_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_send_tx_ant_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_tx_ant_cfg_cmd = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"select valid tx ant: %u\0A\00", align 1
@TX_ANT_CONFIGURATION_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_send_tx_ant_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_tx_ant_cfg_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.iwl_tx_ant_cfg_cmd, %struct.iwl_tx_ant_cfg_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @cpu_to_le32(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IWL_DEBUG_FW(%struct.iwl_mvm* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = load i32, i32* @TX_ANT_CONFIGURATION_CMD, align 4
  %14 = load i32, i32* @CMD_SYNC, align 4
  %15 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %12, i32 %13, i32 %14, i32 4, %struct.iwl_tx_ant_cfg_cmd* %5)
  ret i32 %15
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tx_ant_cfg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
