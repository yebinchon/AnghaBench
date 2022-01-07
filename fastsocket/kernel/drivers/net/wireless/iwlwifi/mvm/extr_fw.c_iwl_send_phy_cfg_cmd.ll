; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_send_phy_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_send_phy_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_phy_cfg_cmd = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Sending Phy CFG command: 0x%x\0A\00", align 1
@PHY_CONFIGURATION_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_send_phy_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_phy_cfg_cmd, align 4
  %4 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cpu_to_le32(i32 %12)
  %14 = getelementptr inbounds %struct.iwl_phy_cfg_cmd, %struct.iwl_phy_cfg_cmd* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iwl_phy_cfg_cmd, %struct.iwl_phy_cfg_cmd* %3, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.iwl_phy_cfg_cmd, %struct.iwl_phy_cfg_cmd* %3, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_phy_cfg_cmd, %struct.iwl_phy_cfg_cmd* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %44 = load i32, i32* @PHY_CONFIGURATION_CMD, align 4
  %45 = load i32, i32* @CMD_SYNC, align 4
  %46 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %43, i32 %44, i32 %45, i32 12, %struct.iwl_phy_cfg_cmd* %3)
  ret i32 %46
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_phy_cfg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
