; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_cmd_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_phy-ctxt.c_iwl_mvm_phy_ctxt_cmd_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_phy_ctxt = type { i32, i32 }
%struct.iwl_phy_context_cmd = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm_phy_ctxt*, %struct.iwl_phy_context_cmd*, i32, i32)* @iwl_mvm_phy_ctxt_cmd_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_phy_ctxt_cmd_hdr(%struct.iwl_mvm_phy_ctxt* %0, %struct.iwl_phy_context_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %6 = alloca %struct.iwl_phy_context_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm_phy_ctxt* %0, %struct.iwl_mvm_phy_ctxt** %5, align 8
  store %struct.iwl_phy_context_cmd* %1, %struct.iwl_phy_context_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.iwl_phy_context_cmd*, %struct.iwl_phy_context_cmd** %6, align 8
  %10 = call i32 @memset(%struct.iwl_phy_context_cmd* %9, i32 0, i32 24)
  %11 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FW_CMD_ID_AND_COLOR(i32 %13, i32 %16)
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.iwl_phy_context_cmd*, %struct.iwl_phy_context_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_phy_context_cmd, %struct.iwl_phy_context_cmd* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.iwl_phy_context_cmd*, %struct.iwl_phy_context_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_phy_context_cmd, %struct.iwl_phy_context_cmd* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.iwl_phy_context_cmd*, %struct.iwl_phy_context_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_phy_context_cmd, %struct.iwl_phy_context_cmd* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  ret void
}

declare dso_local i32 @memset(%struct.iwl_phy_context_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
