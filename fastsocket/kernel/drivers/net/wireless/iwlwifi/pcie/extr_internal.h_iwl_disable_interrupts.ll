; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_internal.h_iwl_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_internal.h_iwl_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32 }

@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Disabled interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_disable_interrupts(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %4)
  store %struct.iwl_trans_pcie* %5, %struct.iwl_trans_pcie** %3, align 8
  %6 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %7 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %7, i32 0, i32 0
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %11 = load i32, i32* @CSR_INT_MASK, align 4
  %12 = call i32 @iwl_write32(%struct.iwl_trans* %10, i32 %11, i32 0)
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %14 = load i32, i32* @CSR_INT, align 4
  %15 = call i32 @iwl_write32(%struct.iwl_trans* %13, i32 %14, i32 -1)
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %18 = call i32 @iwl_write32(%struct.iwl_trans* %16, i32 %17, i32 -1)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
