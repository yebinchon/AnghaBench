; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_d3_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@CSR_UCODE_DRV_GP1_SET = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_trans_pcie_d3_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_d3_suspend(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %3 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %4 = load i32, i32* @CSR_UCODE_DRV_GP1_SET, align 4
  %5 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_D3_CFG_COMPLETE, align 4
  %6 = call i32 @iwl_write32(%struct.iwl_trans* %3, i32 %4, i32 %5)
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %7)
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = call i32 @iwl_pcie_disable_ict(%struct.iwl_trans* %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = load i32, i32* @CSR_GP_CNTRL, align 4
  %13 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %14 = call i32 @iwl_clear_bit(%struct.iwl_trans* %11, i32 %12, i32 %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = load i32, i32* @CSR_GP_CNTRL, align 4
  %17 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 4
  %18 = call i32 @iwl_clear_bit(%struct.iwl_trans* %15, i32 %16, i32 %17)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = call i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans* %19)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %22 = call i32 @iwl_pcie_set_pwr(%struct.iwl_trans* %21, i32 1)
  ret void
}

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_trans_pcie_tx_reset(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_set_pwr(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
