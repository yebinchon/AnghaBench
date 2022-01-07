; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Stop card, put in low power state\0A\00", align 1
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_SW_RESET = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_apm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_apm_stop(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %9 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %9, i32 0, i32 0
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %13 = call i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans* %12)
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %15 = load i32, i32* @CSR_RESET, align 4
  %16 = load i32, i32* @CSR_RESET_REG_FLAG_SW_RESET, align 4
  %17 = call i32 @iwl_set_bit(%struct.iwl_trans* %14, i32 %15, i32 %16)
  %18 = call i32 @udelay(i32 10)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = load i32, i32* @CSR_GP_CNTRL, align 4
  %21 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 4
  %22 = call i32 @iwl_clear_bit(%struct.iwl_trans* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_apm_stop_master(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
