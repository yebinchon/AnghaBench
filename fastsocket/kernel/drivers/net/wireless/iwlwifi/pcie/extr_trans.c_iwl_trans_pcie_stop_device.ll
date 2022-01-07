; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_stop_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@APMG_CLK_DIS_REG = common dso_local global i32 0, align 4
@APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_NEVO_RESET = common dso_local global i32 0, align 4
@STATUS_HCMD_ACTIVE = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@STATUS_TPOWER_PMI = common dso_local global i32 0, align 4
@STATUS_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_trans_pcie_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_stop_device(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %3, align 8
  %7 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %11)
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %18 = call i32 @iwl_pcie_disable_ict(%struct.iwl_trans* %17)
  %19 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %20 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = call i32 @iwl_pcie_tx_stop(%struct.iwl_trans* %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = call i32 @iwl_pcie_rx_stop(%struct.iwl_trans* %27)
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %30 = load i32, i32* @APMG_CLK_DIS_REG, align 4
  %31 = load i32, i32* @APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %32 = call i32 @iwl_write_prph(%struct.iwl_trans* %29, i32 %30, i32 %31)
  %33 = call i32 @udelay(i32 5)
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %36 = load i32, i32* @CSR_GP_CNTRL, align 4
  %37 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %38 = call i32 @iwl_clear_bit(%struct.iwl_trans* %35, i32 %36, i32 %37)
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %40 = call i32 @iwl_pcie_apm_stop(%struct.iwl_trans* %39)
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %46 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %45)
  %47 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %47, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %52 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %51)
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %54 = load i32, i32* @CSR_RESET, align 4
  %55 = load i32, i32* @CSR_RESET_REG_FLAG_NEVO_RESET, align 4
  %56 = call i32 @iwl_write32(%struct.iwl_trans* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @STATUS_HCMD_ACTIVE, align 4
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %62 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %63 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %62, i32 0, i32 0
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %66 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  %69 = load i32, i32* @STATUS_TPOWER_PMI, align 4
  %70 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @STATUS_RFKILL, align 4
  %74 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iwl_pcie_disable_ict(%struct.iwl_trans*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_pcie_tx_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rx_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_apm_stop(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
