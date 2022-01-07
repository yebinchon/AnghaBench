; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@FH_MEM_RCSR_CHNL0_CONFIG_REG = common dso_local global i32 0, align 4
@FH_MEM_RSSR_RX_STATUS_REG = common dso_local global i32 0, align 4
@FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_rx_stop(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %3 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %4 = load i32, i32* @FH_MEM_RCSR_CHNL0_CONFIG_REG, align 4
  %5 = call i32 @iwl_write_direct32(%struct.iwl_trans* %3, i32 %4, i32 0)
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = load i32, i32* @FH_MEM_RSSR_RX_STATUS_REG, align 4
  %8 = load i32, i32* @FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE, align 4
  %9 = call i32 @iwl_poll_direct_bit(%struct.iwl_trans* %6, i32 %7, i32 %8, i32 1000)
  ret i32 %9
}

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_direct_bit(%struct.iwl_trans*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
