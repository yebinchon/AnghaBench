; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.iwl_phy_context_cmd = type { i32 }

@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@PHY_CONTEXT_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to send PHY remove: ctxt id=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_phy_ctxt_remove(%struct.iwl_mvm* %0, %struct.iwl_mvm_phy_ctxt* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %5 = alloca %struct.iwl_phy_context_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm_phy_ctxt* %1, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %11 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  %12 = call i32 @iwl_mvm_phy_ctxt_cmd_hdr(%struct.iwl_mvm_phy_ctxt* %10, %struct.iwl_phy_context_cmd* %5, i32 %11, i32 0)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = load i32, i32* @PHY_CONTEXT_CMD, align 4
  %15 = load i32, i32* @CMD_SYNC, align 4
  %16 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %13, i32 %14, i32 %15, i32 4, %struct.iwl_phy_context_cmd* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IWL_ERR(%struct.iwl_mvm* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_cmd_hdr(%struct.iwl_mvm_phy_ctxt*, %struct.iwl_phy_context_cmd*, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_phy_context_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
